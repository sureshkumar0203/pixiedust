<?php
use App\User;
use App\Category;
use App\SubCategory;
use App\Product;
use \App\TempCart;
use App\CouponCode;
use App\SeoPageSettings;
use App\Color;
use App\Size;
use App\ProductStock;
use App\PaymentSetting;



if (!function_exists('getAdminDetails')) {

    function getAdminDetails() {

        $getAdminDetails = User::first();

        return $getAdminDetails;
    }

}

if (!function_exists('getCategories')) {

    function getCategories() {
        $getCategories = Category::pluck('name', 'id');
        return $getCategories;
    }

}

if (!function_exists('getAllCategories')) {

    function getAllCategories() {
        $getAllCategories = Category::get();
        return $getAllCategories;
    }

}

if (!function_exists('getAllSubCategories')) {

    function getAllSubCategories($catId) {
        $getAllSubCategories = SubCategory::where('category_id', $catId)->orderBy('scat_order', 'DESC')->get();
        return $getAllSubCategories;
    }

}

if (!function_exists('getSubCategories')) {

    function getSubCategories($cat_id) {
        $getSubCategories = SubCategory::where('category_id', $cat_id)->pluck('name', 'id')->prepend('Select Subcategories', '');
        return $getSubCategories;
    }

}

//Get Product Details

if (!function_exists('getProductDetails')) {

    function getProductDetails($prod_id) {
        $getProductDetails = Product::where('id', $prod_id)->first();
        return $getProductDetails;
    }

}
if (!function_exists('cartProdInfo')) {

    function cartProdInfo($prod_id, $stock_id, $sess_id) {
        $getcartProdDetails = TempCart::where([['product_id', $prod_id], ['stock_id', $stock_id],['session_id', $sess_id]])->first();
        return $getcartProdDetails;
    }

}

if (!function_exists('cartProdInfoApi')) {

    function cartProdInfoApi($prod_id, $stock_id, $user_id) {
        $getcartProdDetails = TempCart::where([['product_id', $prod_id], ['stock_id', $stock_id],['user_id', $user_id]])->first();
        return $getcartProdDetails;
    }

}

if (!function_exists('cartDetails')) {

    function cartDetails() {
        $sess_id = session()->getId();
        $cartProdDetails = TempCart::where('session_id', $sess_id)->select(\DB::raw('SUM(quantity) as total_quantity'), \DB::raw('SUM(total_price) as total_price'), \DB::raw('SUM(total_shipping_price) as total_shipping_price'))->first();
        return $cartProdDetails;
    }

}
if (!function_exists('singleCartProdInfo')) {

    function singleCartProdInfo($cart_id) {
        $getSingleCartDetails = TempCart::where('id', $cart_id)->first();
        return $getSingleCartDetails;
    }

}
if (!function_exists('disCountCal')) {

    function disCountCal($discountVal) {
        $cartDetails = cartDetails();
        $discountAmount = number_format($cartDetails->total_price * $discountVal / 100, 2);
        $afterDiscountAmt = number_format(($cartDetails->total_price) - $discountAmount, 2);
        
		/*if ($cartDetails->total_price >= 50) {
            $totalPayble = number_format($afterDiscountAmt + 0.00, 2);
        } else {
            $totalPayble = number_format($afterDiscountAmt + $cartDetails->total_shipping_price, 2);
        }*/
		
		
		 if($cartDetails->total_price > 0 && $cartDetails->total_price <= 49.99){
			 $totalPayble = number_format($afterDiscountAmt + $cartDetails->total_shipping_price, 2);
		 }else if($cartDetails->total_price >= 50 && $cartDetails->total_price <= 99.99){
			 $totalPayble = number_format($afterDiscountAmt + 7,2);
		 }else{
			 $totalPayble = number_format($afterDiscountAmt + 0,2);
		 }
			   
			   
			   
        return array('discountAmount' => $discountAmount, 'afterDiscountAmt' => $afterDiscountAmt, 'totalPayble' => $totalPayble, 'discount_percentage' => $discountVal);
    }

}

if (!function_exists('flTaxCal')) {
	function flTaxCal($tax) {
		$cartDetails = cartDetails();
		$paymentSetting = PaymentSetting::first();
		$tax_per = $paymentSetting->tax_per;
		
		if($cartDetails->total_price > 0 && $cartDetails->total_price <= 49.99){
		   $shipping_price = number_format($cartDetails->total_shipping_price, 2);
		}else if($cartDetails->total_price >= 50 && $cartDetails->total_price <= 99.99){
		   $shipping_price = number_format(7,2);
		}else{
		   $shipping_price = number_format(0,2);
		}
		 
		 
		/*if ($cartDetails->total_price >= 50) {
            $shipping_price = 0;
        } else {
            $shipping_price = $cartDetails->total_shipping_price;
        }*/
		
		
        if($tax == 0) {
			session(['tax_amount' => 0.00]);
			if(session()->get('discount_percentage')!=''){
				$dp = session()->get('discount_percentage');
			}else{
				$dp = 0;
			}
		
			$discount_details = disCountCal($dp);
			$grand_total = number_format($discount_details['totalPayble'],2);
			
			return array('tax_amount' => 0, 'gt_amount' => $grand_total);
			
        } else {
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
			return array('tax_amount' => $tax_amount, 'gt_amount' => $payable_amt);
        }
    }
}
	
	
	
if (!function_exists('allProductDetails')) {

    function allProductDetails() {
        $allProductDetails = Product::select(\DB::raw('min(price) as min_price'), \DB::raw('max(price) as max_price'))->first();
        return $allProductDetails;
    }

}

##############  Getting SEO Details for Page ######################

if (!function_exists('getSeoDetails')) {

    function getSeoDetails($id) {
        $getSeoDetails = SeoPageSettings::where('id', $id)->first();
        return $getSeoDetails;
    }

}




#############  Booking Part Helper #########################
############  60Mins Time interval ####################

if (!function_exists('getTimeFrame15Min')) {

    function getTimeFrame15Min() {
        $start = strtotime('11:00');
        $end = strtotime('17:00');
        $timeArr = [];
        for ($i = $start; $i < $end; $i = $i + 15 * 60) {
            $timeArr[] = date('H:i', $i);
        }
        //dd($timeArr);
        return $timeArr;
    }

    #######  30Mins Time interval ####################

    if (!function_exists('getTimeFrame30Min')) {

        function getTimeFrame30Min() {
            $start = strtotime('11:00');
            $end = strtotime('17:00');
            $timeArr = [];
            for ($i = $start; $i < $end; $i = $i + 30 * 60) {
                $timeArr[] = date('H:i', $i);
            }
            return $timeArr;
        }

    }

    #########   Hour to Minutes #################
    if (!function_exists('minutes')) {

        function minutes($time) {
            $time = explode(':', $time);
            $mins = ($time[0] * 60) + ($time[1]) + ($time[2] / 60);
            return $mins;
        }

    }
	
	
	#########   Colour #################
    if (!function_exists('colorList')) {
        function colorList() {
           $color_data = Color::orderBy('color', "ASC")->pluck('color', 'id');
		   return $color_data;
        }
    }
	
	#########   Colour #################
    if (!function_exists('sizeList')) {
        function sizeList() {
           $size_data = Size::orderBy('size', "ASC")->pluck('size', 'id');
		   return $size_data;
        }
    }
	
	if (!function_exists('productStockList')) {
	   function productStockList($prdid){
		  $ps_data = ProductStock::where('product_id', $prdid)->get();
		  return $ps_data;
	   }
	}
	
	if (!function_exists('getStock')) {
	   function getStock($stock_id){
		   //echo $stock_id;exit;
		   $stock_details = ProductStock::where('id',$stock_id)->first();
		   //dd($stock_details);exit;
		   $stock =$stock_details->stock;
		   return $stock;
	  }
	}
	
	if (!function_exists('getSizeColorFromStockId')) {
	   function getSizeColorFromStockId($stock_id){
		   $css_details = ProductStock::with(['size','color'])->where('id',$stock_id)->first();
		   return $css_details;
	  }
	}
	
	if (!function_exists('getColorSizeDetails')) {
	   function getColorSizeDetails($product_id){
		   $pcs_data = ProductStock::with(['size','color'])->where('product_id', $product_id)->get();
		   return $pcs_data;
	  }
	}
	
	if (!function_exists('stockAlert')) {
	   function stockAlert($prd_id){
		   $stock_check = ProductStock::where([['product_id',$prd_id],['stock','<=',5]])->count();
		   return $stock_check;
	  }
	}
	
}

