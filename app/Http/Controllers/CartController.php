<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\TempCart;
use App\MasterOrder;
use App\OrderItem;
use App\PaymentSetting;
use Mail;
use PDF;
use App\CouponCode;
use App\UserRegistration;
use Response;
use App\ProductStock;

class CartController extends Controller {

    public function addToCart(Request $request) {
        $allInput = request()->except(['_token']);
        //dd($allInput);
        $session_id = session()->getId();
        $quantity = $request->quantity;
        $product_id = $request->product_id;
		$stock_id = $request->stock_id;
		
        if ($quantity == 0 || $product_id == "" || $stock_id == "") {
            return redirect("/products");
        }
		
		
		
        #############  Get Product Details From Helper(app/Helpers/helpers.php) ############
        $productDetails = getProductDetails($product_id);
        $unitPrice = $productDetails->discount_price ? $productDetails->discount_price : $productDetails->price;
        $totalPrice = $unitPrice * $quantity;
        $shippingPrice = $productDetails->shipping_price * $quantity;

        ###########  Check product exists or not in Cart Table ##################
        $productCount = TempCart::where([['product_id', $product_id], ['stock_id', $stock_id],['session_id', $session_id]])->count();
        $cartProdInfo = cartProdInfo($product_id,$stock_id,$session_id);
        if (!empty($cartProdInfo)) {
            $cartTotal = $totalPrice + $cartProdInfo->total_price;
            $totalQty = $quantity + $cartProdInfo->quantity;
            $totalShippingPrice = $shippingPrice + $cartProdInfo->total_shipping_price;
        } else {
            $cartTotal = $totalPrice;
            $totalQty = $quantity;
            $totalShippingPrice = $shippingPrice;
        }
		
		//Stock Checked here
		$stock = getStock($stock_id);
		if($totalQty > $stock){
			return redirect('products/'.$productDetails->slug)->with('error', 'Maximum quantity purchase of this item is '.$stock);	
		}
		
        $userId = session()->get('user_id');
        $allInput['user_id'] = $userId;
		$allInput['stock_id'] = $stock_id;
        $allInput['session_id'] = $session_id;
        $allInput['quantity'] = $totalQty;
        $allInput['total_price'] = $cartTotal;
        $allInput['unit_price'] = $unitPrice;
        $allInput['total_shipping_price'] = $totalShippingPrice;
		
		
        if ($productCount == 0) {
            TempCart::create($allInput);
        } else {
            TempCart::where([['product_id', $product_id], ['stock_id', $stock_id],['session_id', $session_id]])->update($allInput);
        }
        $totalCartPrice = TempCart::where('session_id', $session_id)->sum('total_price');
        session()->put('total_cart_price', $totalCartPrice);
        return redirect('cart');
    }

    public function showCart() {
		session()->forget('tax_amount');
		session()->forget('tax_per');
        $session_id = session()->getId();
        $getCartProducts = TempCart::where('session_id', $session_id)->with('product')->orderBy('id', 'DESC')->get();
        //dd($getCartProducts);

        if (session()->get('discount_percentage') != "") {
            $getDiscountCal = disCountCal(session()->get('discount_percentage'));
            return view('cart', compact('getCartProducts', 'getDiscountCal'));
        } else {
            $getDiscountCal = array('discountAmount' => "0", 'afterDiscountAmt' => "0.00", 'totalPayble' => "0.00", 'discount_percentage' => "0.00");
            return view('cart', compact('getCartProducts', 'getDiscountCal'));
        }
    }

    ###############  Update Cart Item #######################

    public function updateCartItem(Request $request) {
        $allInput = request()->except(['_token']);
        $session_id = session()->getId();
        $getProdId = singleCartProdInfo($request->input('update_cart_id'));
        $prodDetails = getProductDetails($getProdId->product_id);
		
		//Stock Checked here
		$stock = getStock($getProdId->stock_id);
		$db_qty = $getProdId->quantity;
		
		
		if($request->input('update_qty') > $stock){
			return Response::json(['status' => 'error','db_qty' => $db_qty,'message' => 'Maximum qty purchase for this item is '.$stock]);
		}
       
	   
	    $totalPrice = $request->input('update_qty') * $request->input('update_unit_price');
        $totalShippingPrice = $request->input('update_qty') * $prodDetails->shipping_price;
        
		
		$updateArr = ['total_price' => $totalPrice, 'total_shipping_price' => $totalShippingPrice, 'quantity' => $request->input('update_qty')];

        TempCart::where([['id', $request->input('update_cart_id')], ['session_id', $session_id]])->update($updateArr);
		
        $cartDetails = cartDetails();
        if (session()->get('discount_percentage') != "") {
            $getDiscountCal = disCountCal(session()->get('discount_percentage'));
            return Response::json(['cartDetails' => $cartDetails, 'getDiscountCal' => $getDiscountCal, 'status' => 'success']);
        } else {
            return Response::json(['cartDetails' => $cartDetails, 'status' => 'success']);
        }
    }

    ########### DELETE ITEM FROM CART #################

    public function deleteCartItem(Request $request) {
        $cartId = $request->cart_id;

        $deleteCart = TempCart::destroy($cartId);
        if ($deleteCart) {
            $cartDetails = cartDetails();

            if ($cartDetails->total_quantity == null) {
                session()->forget('coupon_code');
                session()->forget('discount_percentage');
            }

            if (session()->get('discount_percentage') != "") {
                $getDiscountCal = disCountCal(session()->get('discount_percentage'));
                return Response::json(['cartDetails' => $cartDetails, 'getDiscountCal' => $getDiscountCal, 'status' => 'success']);
            } else {
                return Response::json(['cartDetails' => $cartDetails, 'status' => 'success']);
            }
        }
    }

    ######### Coupon Code Apply ###############

    public function applyCouponcode(Request $request) {
		
			
        $today = date("Y-m-d");
        $chkCupnExt = CouponCode::where([['coupon_code', $request->couponcode], ['status', '1'], ['start_date', '<=', $today], ['end_date', '>=', $today]])->count();
        if ($chkCupnExt == 0) {
            session(['discount_percentage' => ""]);
            session(['coupon_code' => ""]);
			
			if(cartDetails()->total_price > 0 && cartDetails()->total_price <= 49.99){
			   $shipping_price = number_format(cartDetails()->total_shipping_price, 2);
			}else if(cartDetails()->total_price >= 50 && cartDetails()->total_price <= 99.99){
			   $shipping_price = number_format(7,2);
			}else{
			   $shipping_price = number_format(0,2);
			}
			
            //$totalPayble = cartDetails()->total_price > 50 ? number_format(cartDetails()->total_price + 0.00, 2) :number_format(cartDetails()->total_price + cartDetails()->total_shipping_price, 2);
			
			$totalPayble = number_format(cartDetails()->total_price + $shipping_price, 2);
            return Response::json(['status' => 'not_exist','totalPayble' => $totalPayble]);
        } else {
            $cartDetails = cartDetails();
            $couponDtls = CouponCode::where('coupon_code', $request->couponcode)->select('discount_percentage')->first();
            $discountAmount = number_format($cartDetails->total_price * $couponDtls->discount_percentage / 100, 2);
            $afterDiscountAmt = number_format(($cartDetails->total_price) - $discountAmount, 2);
           	
			 if($cartDetails->total_price > 0 && $cartDetails->total_price <= 49.99){
				 $totalPayble = number_format($afterDiscountAmt + $cartDetails->total_shipping_price, 2);
			 }else if($cartDetails->total_price >= 50 && $cartDetails->total_price <= 99.99){
				 $totalPayble = number_format($afterDiscountAmt + 7,2);
			 }else{
				 $totalPayble = number_format($afterDiscountAmt + 0,2);
			 }
		 
		 
		    /*if ($cartDetails->total_price >= 50) {
                $totalPayble = number_format($afterDiscountAmt + 0.00, 2);
            } else {
                $totalPayble = number_format($afterDiscountAmt + $cartDetails->total_shipping_price, 2);
            }*/
			
			
            session(['discount_percentage' => $couponDtls->discount_percentage]);
            session(['coupon_code' => $request->couponcode]);
            return Response::json(['status' => 'success', 'discountAmount' => $discountAmount, 'afterDiscountAmt' => $afterDiscountAmt, 'totalPayble' => $totalPayble, 'discount_percentage' => $couponDtls->discount_percentage]);
        }
    }

    #######  Check Out Code ##############

    function checkout() {
        //session()->forget('user_id');
        $session_id = session()->getId();
        $getCartProducts = TempCart::where('session_id', $session_id)->with('product')->orderBy('id', 'DESC')->get();
        if (session()->get('discount_percentage') != "") {
            $getDiscountCal = disCountCal(session()->get('discount_percentage'));
        } else {
            $getDiscountCal = array('discountAmount' => "0.00", 'afterDiscountAmt' => "0.00", 'totalPayble' => "0.00", 'discount_percentage' => "0.00");
        }
        $user_details = UserRegistration::where('id', session()->get('user_id'))->first();
        if ($getCartProducts->count() > 0) {
            return view('checkout', compact('getCartProducts', 'getDiscountCal', 'user_details'));
        } else {
            return redirect('/cart');
        }
    }

    public function placeOrder(Request $request) {
        $session_id = session()->getId();
        $allInput = $request->all();
        $same_for_billing = ($request->input('same_for_billing')) ? trim($request->input('same_for_billing')) : 0;
        $userCount = UserRegistration::where('email', '=', $request->email)->count();

        if ($request->bill_first_name == "" || $request->bill_last_name == "" || $request->email == "" || $request->bill_phone_number == "" || $request->bill_address1 == "" || $request->bill_city == "" || $request->bill_post_code == "" || $request->bill_country == "" || $request->bill_state == "") {
            return Response::json(['status' => 'blank', 'msg' => "Billing fields are blank."]);
        } else if ($request->account_password == "" && session()->get('user_id') == "") {
            return Response::json(['status' => 'pass_blank', 'msg' => "Account Password blank."]);
        } else if ($userCount > 0 && session()->get('user_id') == "") {
            return Response::json(['status' => 'email_exists', 'msg' => "Email already already exists."]);
        } else if ($same_for_billing == 1 && ($request->ship_first_name == "" || $request->ship_last_name == "" || $request->ship_phone_number == "" || $request->ship_address1 == "" || $request->ship_city == "" || $request->ship_post_code == "" || $request->ship_country == "" || $request->ship_state == "")) {
            return Response::json(['status' => 'ship_det_blank', 'msg' => "Please enter shipping details."]);
        } else {

            if (session()->get('user_id') == "") {
                $user_password = bcrypt($request->account_password);
                $email = $request->email;
                $allInput['user_status'] = 1;
                $allInput['user_password'] = $user_password;
                $allInput['same_for_billing'] = $same_for_billing;
                $saveReg = UserRegistration::create($allInput);
                $user_id = $saveReg->id;
                session(['user_id' => $user_id]);
                session(['user_name' => $request->bill_first_name . ' ' . $request->bill_last_name]);
//######################User Registration mail goes to user#################
// Admin Details
                $admin_name = getAdminDetails()->name;
                $admin_email = getAdminDetails()->alt_email;
                /*$mailSend = Mail::send('emails.user_registration_email', ['name' => $request->bill_first_name . ' ' . $request->bill_last_name, 'email' => $request->email, 'password' => $request->account_password], function ($message) use ($email) {
                            $message->from(getAdminDetails()->alt_email, 'Pixiedust');
                            $message->subject('Pixiedust :: Login credentials.');
                            $message->to($email);
                        });*/
            }
			
            $allInput['user_id'] = (session()->get('user_id')) ? session()->get('user_id') : NULL;
            if ($request->ship_first_name && $request->ship_last_name) {
                $fullName = $request->ship_first_name . ' ' . $request->ship_last_name;
            } else {
                $fullName = $request->bill_first_name . ' ' . $request->bill_last_name;
            }
			
            $allInput['ship_full_name'] = $fullName;
            $allInput['ship_phone_number'] = $request->ship_phone_number ? $request->ship_phone_number : $request->bill_phone_number;
            $allInput['ship_address1'] = $request->ship_address1 ? $request->ship_address1 : $request->bill_address1;
            $allInput['ship_address2'] = $request->ship_address2 ? $request->ship_address2 : $request->bill_address2;
            $allInput['ship_city'] = $request->ship_city ? $request->ship_city : $request->bill_city;
            $allInput['ship_post_code'] = $request->ship_post_code ? $request->ship_city : $request->bill_post_code;
            $allInput['ship_state'] = $request->ship_state ? $request->ship_state : $request->bill_state;
            $allInput['ship_country'] = $request->ship_country ? $request->ship_country : $request->bill_country;
			
			$paymentSetting = PaymentSetting::first();
			 
			if(session()->get('tax_amount')!=0){
				$tax = 1;
			}else{
				$tax = 0;
			}
			
			$gt_dtls = flTaxCal($tax);
            if($gt_dtls['tax_amount'] > 0){
                $allInput['tax_per']=$paymentSetting->tax_per;
            }else{
                $allInput['tax_per']=0;
            }

			
			$allInput['tax_amount']=$gt_dtls['tax_amount'];
			$allInput['total_amount']=$gt_dtls['gt_amount'];
			
			  
				  
            $getDiscountCal = disCountCal(session()->get('discount_percentage'));
           
			
            $allInput['discount_amount'] = session()->get('discount_percentage') ? number_format($getDiscountCal['discountAmount'], 2) : "0.00";
            $allInput['discount_percentage'] = session()->get('discount_percentage');
            $allInput['coupon_code'] = session()->get('coupon_code');
            
            //echo cartDetails()->total_price;exit;

            if(cartDetails()->total_price > 0 && cartDetails()->total_price <= 49.99){
               $shipping_price = number_format(cartDetails()->total_shipping_price, 2);
            }else if(cartDetails()->total_price >= 50 && cartDetails()->total_price <= 99.99){
               $shipping_price = number_format(7,2);
            }else{
               $shipping_price = number_format(0,2);
            }


            //$allInput['shipping_amount'] = cartDetails()->total_price > 50 ? "0.00" : cartDetails()->total_shipping_price;
			
            $allInput['shipping_amount'] = $shipping_price;
			
			
            $saveMasterAll = MasterOrder::create($allInput);
            $orderID = $saveMasterAll->id;
            session(['order_id' => $orderID]);
			
            $session_id = session()->getId();
            $cartDatas = TempCart::where('session_id', $session_id)->get();
            $allItemData = [];
			
            foreach ($cartDatas as $cartData) {
				$color_size_info = getSizeColorFromStockId($cartData->stock_id);
				$allItemData['stock_id'] = $cartData->stock_id;
				$allItemData['size'] = $color_size_info->size['size'];
				$allItemData['color'] = $color_size_info->color['color'];
				$allItemData['color_code'] = $color_size_info->color['color_code'];
                      
                $allItemData['order_id'] = $orderID;
                $allItemData['product_id'] = $cartData->product_id;
                $allItemData['unit_price'] = $cartData->unit_price;
                $allItemData['quantity'] = $cartData->quantity;
                $allItemData['total_price'] = $cartData->total_price;
                $allItemData['shipping_price'] = $cartData->total_shipping_price;
                $saveCartItems = OrderItem::create($allItemData);
            }

            $deleteTempProduct = TempCart::where('session_id', $session_id)->delete();

            session()->forget('coupon_code');
            session()->forget('discount_percentage');
			session()->forget('tax_amount');
            return Response::json(['status' => 'success', 'msg' => "Ordered Successfully."]);
        }
    }

    public function showPaypal() {
        $getAdminDetls = getAdminDetails();
        $paymentSetting = PaymentSetting::first();
        $orderId = session()->get('order_id');
        $orderedItems = OrderItem::with('products')->where('order_id', $orderId)->get();
        //dd($orderedItems);
        $getMasterOrders = MasterOrder::where('id', $orderId)->first();
        if ($paymentSetting->paypal_environment == 1) {
            $URL = "https://www.sandbox.paypal.com/cgi-bin/webscr";
        } else {
            $URL = "https://www.paypal.com/cgi-bin/webscr";
        }
        return view('paypal', compact('getAdminDetls', 'paymentSetting', 'orderedItems', 'getMasterOrders', 'URL'));
    }

    public function showThankyou() {
        return view('thank_you');
    }

    public function updateTransactionDetails() {

        /*$fp = fopen("ipnresult1.txt", "w");
        foreach ($_POST as $key => $value) {
            fwrite($fp, $key . '====' . $value . "\n");
        }*/
		
        $order_id = $_POST['custom'];
        $txn_id = $_POST['txn_id'];
		
		/*$order_id = 1;
        $txn_id = 'TRNS1234OH3453';*/

        $updateTransaction = MasterOrder::where('id', $order_id)->update(['transaction_id' => $txn_id, 'payment_status' => 1]);
		
		//Stuck minus from inventory
		$itemDetails = OrderItem::where('order_id', $order_id)->get();
		foreach($itemDetails as $item_value){
			$order_qty = $item_value->quantity;
			$current_stock=getStock($item_value->stock_id);
			$stock_in_hand = $current_stock - $order_qty;
			ProductStock::where('id',$item_value->stock_id)->update(['stock' => $stock_in_hand]);
		}
		
        $getOrderDetails = MasterOrder::where('id', $order_id)->with('orderItems')->first();
        $data = array(
            'order_id' => $order_id,
            'email' => $getOrderDetails->email,
            'ship_full_name' => $getOrderDetails->ship_full_name,
        );
        $pdf = PDF::loadView('emails.pixiedust-invoice', compact('getOrderDetails'));
        $data['subject'] = 'Pixiedust :: Order Placed';
		
        Mail::send('emails.place-order-email', compact('data'), function($message) use ($data, $pdf) {
            $message->to($data['email']);
            $message->subject($data['subject']);
            $message->from(getAdminDetails()->alt_email);
            $message->attachData($pdf->stream(), "invoice.pdf");
        });
        session()->forget('order_id');
    }
	
	
	public function applyFlTax(Request $request) {
		$cartDetails = cartDetails();
		
		/*if ($cartDetails->total_price >= 50) {
            $shipping_price = 0;
        } else {
            $shipping_price = $cartDetails->total_shipping_price;
        }*/
		
		if($cartDetails->total_price > 0 && $cartDetails->total_price <= 49.99){
		   $shipping_price = number_format($cartDetails->total_shipping_price, 2);
		}else if($cartDetails->total_price >= 50 && $cartDetails->total_price <= 99.99){
		   $shipping_price = number_format(7,2);
		}else{
		   $shipping_price = number_format(0,2);
		}
		
		
        if($request->fl_tax == 0) {
			session(['tax_per' => 0]);
			session(['tax_amount' => 0.00]);
			if(session()->get('discount_percentage')!=''){
				$dp = session()->get('discount_percentage');
			}else{
				$dp = 0;
			}
		
			$discount_details = disCountCal($dp);
			$grand_total = number_format($discount_details['totalPayble'],2);
			
            return Response::json(['status' => 'error','tax_amount' => '0.00','tax_per' => '0','gt_amount' => $grand_total]);
        } else {
			$paymentSetting = PaymentSetting::first();
			$tax_per = $paymentSetting->tax_per;
			session(['tax_per' => $tax_per]);
			
			if(session()->get('discount_percentage')!=''){
				$discount_per = session()->get('discount_percentage');
				$discount_amount = number_format($cartDetails->total_price * $discount_per / 100, 2);
				$payable_amt_temp = number_format(($cartDetails->total_price) - $discount_amount, 2);
				
				$tax_amount = number_format($payable_amt_temp * $tax_per / 100, 2);
				session(['tax_amount' => $tax_amount]);
				
				$payable_amt_temp = $payable_amt_temp + $tax_amount+$shipping_price;
				$payable_amt = number_format($payable_amt_temp,2);
			}else{
				$tax_amount = number_format($cartDetails->total_price * $tax_per / 100, 2);
				session(['tax_amount' => $tax_amount]);
				
				$payable_amt_temp = $cartDetails->total_price + $tax_amount + $shipping_price;
				$payable_amt = number_format($payable_amt_temp,2);
			}
            return Response::json(['status' => 'success','tax_amount' => $tax_amount,'tax_per' => $tax_per,'gt_amount' => $payable_amt]);
        }
    }

}
