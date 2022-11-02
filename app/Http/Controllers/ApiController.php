<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use DB;
use Hash;
use Mail;
use App\Banner;
use App\Product;
use \App\ProductImage;
use \App\Category;
use \App\SubCategory;
use \App\UserRegistration;
use \App\MasterOrder;
use \App\OrderItem;
use \App\IntutiveReadingBooking;
use \App\MassageTherapyBooking;
use \App\ServiceSchedule;
use \App\IntutivePriceSetting;
use \App\MassagePriceSetting;
use \App\TempCart;
use \App\productStock;
use \App\CouponCode;

use \App\PaymentSetting;
use PDF;
//use App\ProductStock;

class ApiController extends Controller {
    #########  Get All Banners ##################

    public function getBanners() {
        $getBanners = Banner::select('banner')->get();
        $bannerImg = [];
        if ($getBanners->count() > 0) {
            foreach ($getBanners as $getBanner) {
                $bannerImg[] = asset('public/images/banner/' . $getBanner->banner);
            }
            return response()->json(['status' => 'success', 'bannerData' => $bannerImg]);
        } else {
            return response()->json(['status' => 'error', 'bannerData' => $bannerImg]);
        }
    }

    ############# Get All Products ###################
    //http://192.168.0.170/pixiedust/api/products

    public function getAllProducts() {
        $getAllProducts = Product::select('id', 'category_id', 'sub_category_id', 'name', 'price', 'discount', 'discount_price', 'shipping_price', 'image','prd_cs_opt')->get();

        $prodata = [];
        $path = asset('public/images/products/multiple_images/') . "/";
        if ($getAllProducts->count() > 0) {
            foreach ($getAllProducts as $key => $getAllProduct) {
                $prodata[] = $getAllProduct;
                $prodata[$key]['image'] = asset('public/images/products/' . $getAllProduct->image);
                $prodata[$key]['discount'] = "$getAllProduct->discount";
                $prodata[$key]['discount_price'] = $getAllProduct->discount_price == null ? "" : $getAllProduct->discount_price;
            }
            return response()->json(['status' => 'success', 'productList' => $prodata]);
        } else {
            return response()->json(['status' => 'error', 'message' => 'No products uploadd']);
        }
    }
	
	 ############# Search Products ###################
    //http://192.168.0.170/pixiedust/api/search-products?data={"search_string":"aa"}
	
	public function getSearchProducts(Request $request) {
		 $jsonData = json_decode($request->input('data'));
		 //dd($jsonData);
		 $search_string = $jsonData->search_string;
		 
        $getAllProducts = Product::select('id', 'category_id', 'sub_category_id', 'name', 'price', 'discount', 'discount_price', 'shipping_price', 'image')->where('name', 'like', '%'. $search_string .'%')->orWhere('description', 'like', '%'. $search_string .'%')->get();
		
		//dd($getAllProducts);
		
        $prodata = [];
        $path = asset('public/images/products/multiple_images/') . "/";
        if ($getAllProducts->count() > 0) {
            foreach ($getAllProducts as $key => $getAllProduct) {
                $prodata[] = $getAllProduct;
                $prodata[$key]['image'] = asset('public/images/products/' . $getAllProduct->image);
                $prodata[$key]['discount'] = "$getAllProduct->discount";
                $prodata[$key]['discount_price'] = $getAllProduct->discount_price == null ? "" : $getAllProduct->discount_price;
            }
            return response()->json(['status' => 'success', 'productSearchList' => $prodata]);
        } else {
            return response()->json(['status' => 'error', 'message' => 'No products uploadd']);
        }
    }
	
	
    ############# Get Home page Products ###################
    //http://192.168.0.170/pixiedust/api/home-products

    public function getHomePageProducts() {
        //Latest Product
        $latest_prd = Product::select('id', 'category_id', 'sub_category_id', 'name', 'price', 'discount', 'discount_price', 'shipping_price', 'image')->orderBy('id', 'DESC')->take(10)->get();

        $prd_ary = [];
        $path = asset('public/images/products/multiple_images/') . "/";
        foreach ($latest_prd as $key => $latest_prd) {
            $prd_ary[] = $latest_prd;
            $prd_ary[$key]['image'] = asset('public/images/products/' . $latest_prd->image);
            $prd_ary[$key]['discount'] = "$latest_prd->discount";
            $prd_ary[$key]['discount_price'] = $latest_prd->discount_price == null ? "" : $latest_prd->discount_price;
        }
        return response()->json(['status' => 'success', 'newInProducts' => $prd_ary]);
    }

    //http://192.168.0.170/pixiedust/api/get-category-products?data={"cat_id":1}
    public function getCategoryProducts(Request $request) {
        $jsonData = json_decode($request->input('data'));
        $category_id = $jsonData->cat_id;

        $cat_prd = Product::select('id', 'category_id', 'sub_category_id', 'name', 'price', 'discount', 'discount_price', 'shipping_price', 'image')->where('category_id', $category_id)->orderBy('id', 'DESC')->get();
        //dd($cat_prd);
        if (count($cat_prd) > 0) {
            $prd_ary = [];
            $path = asset('public/images/products/multiple_images/') . "/";
            foreach ($cat_prd as $key => $cat_prd) {
                $prd_ary[] = $cat_prd;
                $prd_ary[$key]['image'] = asset('public/images/products/' . $cat_prd->image);
                $prd_ary[$key]['discount'] = "$cat_prd->discount";
                $prd_ary[$key]['discount_price'] = $cat_prd->discount_price == null ? "" : $cat_prd->discount_price;
            }
            return response()->json(['status' => 'success', 'productList' => $prd_ary]);
        } else {
            return response()->json(['status' => 'error', 'message' => 'No record found']);
        }
    }

    //http://192.168.0.170/pixiedust/api/get-subcategory-products?data={"scat_id":1}
    public function getSubCategoryProducts(Request $request) {
        $jsonData = json_decode($request->input('data'));
        $sub_category_id = $jsonData->scat_id;

        $sub_cat_prd = Product::select('id', 'category_id', 'sub_category_id', 'name', 'price', 'discount', 'discount_price', 'shipping_price', 'image')->where('sub_category_id', $sub_category_id)->orderBy('id', 'DESC')->get();
        //dd($cat_prd);

        if (count($sub_cat_prd) > 0) {
            $prd_ary = [];
            $path = asset('public/images/products/multiple_images/') . "/";
            foreach ($sub_cat_prd as $key => $sub_cat_prd) {
                $prd_ary[] = $sub_cat_prd;
                $prd_ary[$key]['image'] = asset('public/images/products/' . $sub_cat_prd->image);
                $prd_ary[$key]['discount'] = "$sub_cat_prd->discount";
                $prd_ary[$key]['discount_price'] = $sub_cat_prd->discount_price == null ? "" : $sub_cat_prd->discount_price;
            }
            return response()->json(['status' => 'success', 'productList' => $prd_ary]);
        } else {
            return response()->json(['status' => 'error', 'message' => 'No record found']);
        }
    }

    //http://192.168.0.170/pixiedust/api/all-cat-subcat
    public function getAllCategorySubcategory() {
        $cat_rec = Category::select('id', 'name', 'image')->get();
        $cat_ary = [];
        if ($cat_rec->count() > 0) {
            foreach ($cat_rec as $cat_key => $cat_val) {
                $cat_ary[] = $cat_val;
                $cat_ary[$cat_key]['image'] = asset('public/images/product-category/' . $cat_val->image);
                $sub_cat_ary = SubCategory::select('id', 'name')->where('category_id', $cat_val->id)->get();
                $cat_ary[$cat_key]['sub_cat'] = $sub_cat_ary;
            }
            return response()->json(['status' => 'success', 'catSubcatList' => $cat_ary]);
        } else {
            return response()->json(['status' => 'error', 'message' => 'No products uploadd']);
        }
    }

    //http://192.168.0.170/pixiedust/api/product-details?data={"prd_id":1}
    public function getProductDetails(Request $request) {
        $jsonData = json_decode($request->input('data'));
        $prd_id = $jsonData->prd_id;

        $prd_det = Product::with(array(
          'ProductStock.size'=>function($query2){
              $query2->select('id','size');
              $query2->orderBy('id', 'asc');
          },
          
          'ProductStock.color'=>function($query3){
              $query3->select('id','color','color_code');
              $query3->orderBy('id', 'asc');
          } 
          
          ))->where('id', $prd_id)->orderBy('id', 'DESC')->first();
        //dd($prd_det);exit;

        if ($prd_det!= NULL) {
            $prd_info = array();

            $prd_info = array(
                'id'=>$prd_det->id,
                'category_id'=>$prd_det->category_id,
                'sub_category_id'=>$prd_det->sub_category_id,
                'prd_name'=>$prd_det->name,
                'prd_details'=>$prd_det->description,
                'price'=>$prd_det->price,
                'discount_per'=>$prd_det->discount,
                'discount_price'=> $prd_det->discount_price,
                'prd_photo'=>asset('public/images/products/' . $prd_det->image),
                'prd_cs_opt'=>$prd_det->prd_cs_opt);
            
           

            $opt_ph_array = array();
            $opt_photo = ProductImage::where('product_id', $prd_id)->get();
            foreach($opt_photo as $opt_ph){
                $prd_opt_photo = asset('public/images/products/multiple_images/' . $opt_ph->image);
                array_push($opt_ph_array, $prd_opt_photo);
            }
            
            //$price_array = array();
            $prd_stock_ary = array();
            foreach($prd_det->ProductStock as $prd_price_dtls){ 
                $stock_id = $prd_price_dtls->id;
                $prd_id = $prd_price_dtls->product_id;
                $stock = $prd_price_dtls->stock;
            
                if($prd_det->prd_cs_opt==1){
                    $size_id = $prd_price_dtls->size_id;
                    $size = $prd_price_dtls->size->size;

                    $color_id = $prd_price_dtls->color_id;
                    $color = $prd_price_dtls->color->color;
                    $color_code = $prd_price_dtls->color->color_code;
                    
                }else{
                   $size_id ="";
                   $size ="";

                   $color_id ="";
                   $color ="";
                   $color_code = "";
                   
                }
            
                $price_info = array('stock_id'=> $stock_id,'stock'=>$stock,'prd_id'=>$prd_id,'size_id'=> $size_id,'size'=> $size,'color_id'=> $color_id,'color'=> $color,'color_code'=> $color_code);
                array_push($prd_stock_ary, $price_info);
            }
                return response()->json(['status' => 'success', 'productDetails' => $prd_info,'optionalPhoto' => $opt_ph_array,'colorSizeOption' => $prd_stock_ary]);
            } else {
                return response()->json(['status' => 'error', 'message' => 'No record found']);
            }
    }


	//http://192.168.0.170/pixiedust/api/user-sign-up [POST METHOD]	 
	public function userSignup(Request $request){
		$jsonData = json_decode($request->input('data'));
		//$user_id = $jsonData->user_id;
		
		$bodyData = json_decode(file_get_contents("php://input"));
		//print_r($bodyData);exit;
		
		
		$bill_first_name = $bodyData -> bill_first_name;
		
		$bill_last_name = $bodyData -> bill_last_name;
		$email = $bodyData -> email;
		$bill_phone_number = $bodyData -> bill_phone_number;
		$user_password = bcrypt($bodyData -> user_password);
		$bill_address1 = $bodyData -> bill_address1;
		$bill_address2 = $bodyData -> bill_address2;
		$bill_city = $bodyData -> bill_city;
		$bill_post_code = $bodyData -> bill_post_code;
		$bill_state = $bodyData -> bill_state;
		$bill_country = $bodyData -> bill_country;
		$same_for_billing = $bodyData -> same_for_billing;
			
		$user_count_email = UserRegistration::where('email', $email)->count();
		
		if($bill_first_name=="" || $bill_last_name=="" || $email=="" || $bill_phone_number=="" || $user_password=="" || $bill_address1=="" || $bill_city=="" || $bill_post_code=="" ||  $bill_state=="" || $bill_country=="" || $same_for_billing==""){
			return response()->json(['status' => 'error', 'message' => 'Please enter all mandotory fileds value.']);
		}else if($user_count_email > 0){
			return response()->json(['status' => 'error', 'message' => 'This email already exist.']);
		}else{
			UserRegistration::create([
			'bill_first_name' => $bill_first_name,
			'bill_last_name' => $bill_last_name,
			'email' => $email,
			'bill_phone_number' => $bill_phone_number,
			'user_password' => $user_password,
			'bill_address1' => $bill_address1,
			'bill_address2' => $bill_address2,
			'bill_city' => $bill_city,
			'bill_post_code' => $bill_post_code,
			'bill_state' => $bill_state,
			'bill_country' => $bill_country,
			'same_for_billing' => $same_for_billing,
			'user_status' => 1
			]);
			return response()->json(['status' => 'success', 'message' => 'Registered successfully.']); 
		}
	}

    //http://192.168.0.170/pixiedust/api/user-login?data={"login_email":"soumyadas02009@gmail.com","login_psw":"1234567"}
    public function userLogin(Request $request) {
        $jsonData = json_decode($request->input('data'));
        $user_email = $jsonData->login_email;
        $user_password = $jsonData->login_psw;

        if ($user_email == "" || $user_password == "") {
            return response()->json(['status' => 'error', 'message' => 'Please enter email & password']);
        }

        // Get records from core table with email address
        $result = UserRegistration::select(DB::raw("id,user_password,concat(bill_first_name,' ',bill_last_name) as full_name"))->where('email', $user_email)->first();

        if ($result == NULL) {
            return response()->json(['status' => 'error', 'message' => 'Invalid email/password.']);
        } else if ($result != NULL && Hash::check($user_password, $result->user_password) == false) {
            return response()->json(['status' => 'error', 'message' => 'Invalid email/password.']);
        } else {
            unset($result['user_password']);
            return response()->json(['status' => 'success', 'dataResponse' => $result]);
        }
    }

    //http://192.168.0.170/pixiedust/api/user-details?data={"user_id":11}
    public function fetchUserDetails(Request $request) {
        $jsonData = json_decode($request->input('data'));
        $user_id = $jsonData->user_id;

        //$result_array = array();
        $user_det = UserRegistration::select('id', 'bill_first_name', 'bill_last_name', 'email', 'bill_phone_number', 'bill_address1', 'bill_address2', 'bill_city', 'bill_post_code', 'bill_state', 'bill_country')->where('id', $user_id)->first();

        if ($user_det != null) {
            $user_det['bill_post_code'] = "$user_det->bill_post_code";
            return response()->json(['status' => 'success', 'dataResponse' => $user_det]);
        } else {
            echo '{"status":"error","message":"No Record found"}';
            exit;
        }
    }

    //http://192.168.0.170/pixiedust/api/user-change-password?data={"user_id":11,"old_psw":17,"new_psw":18}	
    public function userChangePassword(Request $request) {
        $jsonData = json_decode($request->input('data'));
        $user_id = $jsonData->user_id;
        $old_psw = $jsonData->old_psw;
        $new_psw = $jsonData->new_psw;

        if ($old_psw == "" || $new_psw == "") {
            return response()->json(['status' => 'error', 'message' => 'Please enter old & new password']);
        }

        $user_data = UserRegistration::select(DB::raw("id,user_password,concat(bill_first_name,' ',bill_last_name) as full_name"))->where('id', $user_id)->first();

        if ($user_data != NULL && Hash::check($old_psw, $user_data->user_password) == false) {
            return response()->json(['status' => 'error', 'message' => 'Invalid old password.']);
        } else {
            //UserRegistration::where('id', $user_id)->update(['user_password' => Hash::make($new_psw)]);
            return response()->json(['status' => 'success', 'message' => 'Password has been changed successfully.']);
        }
    }

    //http://192.168.0.170/pixiedust/api/user-forgot-password?data={"forgot_email":"ss@gmail.com"}	
    public function userForgotPassword(Request $request) {
        $jsonData = json_decode($request->input('data'));
        $forgot_email = $jsonData->forgot_email;

        if ($forgot_email == "") {
            return response()->json(['status' => 'error', 'message' => 'Please enter email address.']);
        }

        $user_dtls = UserRegistration::where('email', $forgot_email)->first();
        if ($user_dtls != NULL) {
            $password = Str::random();
            $hashPassword = bcrypt($password);

            $admin_name = getAdminDetails()->name;
            $admin_email = getAdminDetails()->alt_email;

            $mailSend = Mail::send('emails.user_forgot_password', ['name' => $user_dtls->bill_first_name . ' ' . $user_dtls->bill_last_name, 'email' => $forgot_email, 'password' => $password], function ($message) use ($forgot_email) {
                        $message->from(getAdminDetails()->alt_email, 'Pixiedust');
                        $message->subject('Pixiedust :: Forgot Password.');
                        $message->to($forgot_email);
                    });

            //$password_update = UserRegistration::where('id', $user_dtls->id)->update(['user_password' => $hashPassword]);

            $password_update = 1;

            if ($password_update) {
                return response()->json(['status' => 'success', 'message' => 'Password has been send to your email.']);
            }
        } else {
            return response()->json(['status' => 'error', 'message' => 'Invalid email address']);
        }
    }

    //http://192.168.0.170/pixiedust/api/user-order-history?data={"user_id":11}
    public function userOrderHistory(Request $request) {
        $jsonData = json_decode($request->input('data'));
        $user_id = $jsonData->user_id;

        if ($user_id == "") {
            return response()->json(['status' => 'error', 'message' => 'Provide valid user ID']);
        }

        //Fetch master order information from master order table
        //1 = Shipped
        $order_info = MasterOrder::select('id', 'created_at', 'transaction_id', 'total_amount', 'order_status')->where('user_id', $user_id)->where('payment_status', 1)->orderBy('id', 'DESC')->take(10)->get();

        $result_response = array('order_info' => $order_info);
        return response()->json(['status' => 'success', 'dataResponse' => $order_info]);
    }

    //http://192.168.0.170/pixiedust/api/user-order-details?data={"user_id":11,"order_id":7}
    public function userOrderDetails(Request $request) {
        $jsonData = json_decode($request->input('data'));
        $user_id = $jsonData->user_id;
        $order_id = $jsonData->order_id;

        if ($user_id == "" || $order_id == "") {
            return response()->json(['status' => 'error', 'message' => 'Invalid user ID & order ID.']);
        }

        //Fetch master order information from master order table
        $order_info = [];
        $order_info = MasterOrder::where('user_id', $user_id)->where('id', $order_id)->orderBy('id', 'DESC')->first();

        //Fetch item & product information from order items & product table
        $path = asset('public/images/products/') . "/";
        $item_ary = [];
        $item_info = OrderItem::with('products')->where('order_id', $order_id)->get();
        //dd($item_info);
        foreach ($item_info as $item_key => $item_dtls) {
            $item_ary[$item_key]['prd_id'] = $item_dtls->products->id;
            $item_ary[$item_key]['prd_img'] = $path . $item_dtls->products->image;
            $item_ary[$item_key]['size'] = ($item_dtls->size)?$item_dtls->size:'';
            $item_ary[$item_key]['color'] = ($item_dtls->color)?$item_dtls->color:'';
            $item_ary[$item_key]['color_code'] = ($item_dtls->color_code)?$item_dtls->color_code:'';
            $item_ary[$item_key]['prd_name'] = $item_dtls->products->name;
            $item_ary[$item_key]['qty'] = $item_dtls->quantity;
            $item_ary[$item_key]['unit_price'] = $item_dtls->unit_price;
            $item_ary[$item_key]['total_price'] = $item_dtls->total_price;
            
        }
        $item_total = number_format($item_info->sum('total_price'),2);

        

        $order_info['discount_percentage'] = ($order_info['discount_percentage'])?$order_info['discount_percentage']:'';
        $order_info['coupon_code'] = ($order_info['coupon_code'])?$order_info['coupon_code']:'';
        $order_info['ship_address2'] = ($order_info['ship_address2'])?$order_info['ship_address2']:'';
        $order_info['bill_address2'] = ($order_info['bill_address2'])?$order_info['bill_address2']:'';

        $order_info['bill_address2'] = ($order_info['bill_address2'])?$order_info['bill_address2']:'';

        $order_info['shipping_date'] = ($order_info['shipping_date'])?$order_info['shipping_date']:'';

        $order_info['order_notes'] = ($order_info['order_notes'])?$order_info['order_notes']:'';

        $order_info['shipping_url'] = ($order_info['shipping_url'])?$order_info['shipping_url']:'';

        $order_info['tracking_id'] = ($order_info['tracking_id'])?$order_info['tracking_id']:'';

        $order_info['item_total'] = $item_total;

        $order_info['item_details'] = $item_ary;
        return response()->json(['status' => 'success', 'order_info' => $order_info]);
    }

    //http://192.168.0.170/pixiedust/api/psychic-reading-bookings?data={"booking_date":"2019-02-11"}
    public function psychicReadingBookings(Request $request) {
        $jsonData = json_decode($request->input('data'));
        $booking_date = $jsonData->booking_date;

        if ($booking_date == "") {
            return response()->json(['status' => 'error', 'message' => 'Invalid booking date']);
        }

        $booking_ary = [];
        $booking_info = IntutiveReadingBooking::select('booking_time')->where('booking_date', $booking_date)->get();
        foreach ($booking_info as $booking_key => $booking_dtls) {
            array_push($booking_ary, $booking_dtls->booking_time);
        }
        $cr_booking = [];
        if (count($booking_ary) > 0) {
            $cr_booking_str = implode(",", $booking_ary);
            $cr_booking = explode(",", $cr_booking_str);
        }

        //echo $str;exit;
        return response()->json(['status' => 'success', 'crBookings' => $cr_booking]);
    }

    //http://192.168.0.170/pixiedust/api/save-psychic-reading-bookings?data={"user_id":"11","booking_time":"10:00,10:15","booking_date":"2019-02-11","booking_mins":"30"}
    public function savePsychicReadingBookings(Request $request) {
        $jsonData = json_decode($request->input('data'));
        //var_dump($jsonData);exit;


        $user_id = $jsonData->user_id;
        $booking_time = $jsonData->booking_time;
        $booking_date = $jsonData->booking_date;
        $booking_mins = $jsonData->booking_mins;

        if ($user_id == "" || $booking_time == "" || $booking_date == "" || $booking_mins == "") {
            return response()->json(['status' => 'error', 'message' => 'Provide userid,booking time & booking date']);
        }

        $booking_time_ary = explode(",", $jsonData->booking_time);
        $booking_time_str = implode("|", $booking_time_ary);

        $check_avl_time = IntutiveReadingBooking::where('booking_date', $booking_date)->whereRaw('concat(",", booking_time ,",") REGEXP ?', ['[[:<:]]' . $booking_time_str . '[[:>:]]'])->count();

        if ($check_avl_time > 0) {
            return response()->json(['status' => 'error', 'message' => 'This time slot already booked']);
        } else {
            $save_cr = IntutiveReadingBooking::create(['user_id' => $user_id, 'booking_time' => $booking_time, 'booking_date' => $booking_date, 'booking_mins' => $booking_mins]);
            return response()->json(['status' => 'success', 'message' => "Booking completed successfully"]);
        }
    }

    //http://192.168.0.170/pixiedust/api/massage-therapy-bookings?data={"booking_date":"2019-09-19"}
    public function massageTherapyBookings(Request $request) {
        $jsonData = json_decode($request->input('data'));
        $booking_date = $jsonData->booking_date;

        if ($booking_date == "") {
            return response()->json(['status' => 'error', 'message' => 'Invalid booking date']);
        }

        $booking_ary = [];
        $booking_info = MassageTherapyBooking::select('booking_time')->where('booking_date', $booking_date)->where('payment_status',1)->where('transaction_id','!=','')->get();
        foreach ($booking_info as $booking_key => $booking_dtls) {
            array_push($booking_ary, $booking_dtls->booking_time);
        }
        $mt_booking = [];
        if (count($booking_ary) > 0) {
            $mt_booking_str = implode(",", $booking_ary);
            $mt_booking = explode(",", $mt_booking_str);
        }

        //echo $str;exit;
        return response()->json(['status' => 'success', 'mtBookings' => $mt_booking]);
    }

    //http://192.168.0.170/pixiedust/api/save-massage-therapy-bookings?data={"user_id":"11","booking_time":"11:00,11:30","booking_date":"2019-02-20","booking_mins":"30","paid_amount":"39"}
    public function saveMassageTherapyBookings(Request $request) {
        $jsonData = json_decode($request->input('data'));
        //var_dump($jsonData);exit;


        $user_id = $jsonData->user_id;
        $booking_time = $jsonData->booking_time;
        $booking_date = $jsonData->booking_date;
        $booking_mins = $jsonData->booking_mins;
        $paid_amount = $jsonData->paid_amount;

        if ($user_id == "" || $booking_time == "" || $booking_date == "" || $booking_mins == "" || $paid_amount == "") {
            return response()->json(['status' => 'error', 'message' => 'Provide userid,booking time,booking date & paid amount']);
        }

        $booking_time_ary = explode(",", $jsonData->booking_time);
        $booking_time_str = implode("|", $booking_time_ary);

        $check_avl_time = MassageTherapyBooking::where('booking_date', $booking_date)->where('payment_status', 1)->where('transaction_id', '!=','')->whereRaw('concat(",", booking_time ,",") REGEXP ?', ['[[:<:]]' . $booking_time_str . '[[:>:]]'])->count();

        if ($check_avl_time > 0) {
            return response()->json(['status' => 'error', 'message' => 'This time slot already booked']);
        } else {
            $save_mt = MassageTherapyBooking::create(['user_id' => $user_id, 'booking_time' => $booking_time, 'booking_date' => $booking_date, 'booking_mins' => $booking_mins, 'paid_amount' => $paid_amount]);
            $booking_id = $save_mt->id;
            //echo $booking_id;exit;

            return response()->json(['status' => 'success', 'bookingId' => $booking_id]);
        }
    }

    //http://192.168.0.170/pixiedust/api/update-mtb-trans-details?data={"booking_id":"1","trans_id":"Trns3534OK"}
    public function updateMTBDetails(Request $request) {
        $jsonData = json_decode($request->input('data'));
        //var_dump($jsonData);exit;
        $booking_id = $jsonData->booking_id;
        $transaction_id = $jsonData->trans_id;

        if($transaction_id==""){
            return response()->json(['status' => 'error', 'message' => 'Trasaction Failed.']);
        }

        $check_bid = MassageTherapyBooking::where('id', $booking_id)->count();

        if ($check_bid == 0) {
            return response()->json(['status' => 'error', 'message' => 'Invalid booking Id']);
        } else {
            $updateTransaction = MassageTherapyBooking::where('id', $booking_id)->update(['transaction_id' => $transaction_id, 'payment_status' => 1]);

            return response()->json(['status' => "success",'message' => 'Booking completed successfully']);
        }
    }
	
	//http://192.168.0.170/pixiedust/api/psychic-reading-user-price
    public function psychicReadingPrice() {
	  $prd = ServiceSchedule::where('id', 1)->select('id', 'description')->first();
	  $prp = IntutivePriceSetting::select('intutive_timing', 'price')->orderBy('id', 'ASC')->get();
      
	  //dd($prd);
	  //dd($prp);
       return response()->json(['status' => 'success', 'serviceUserList' => $prd,'psychicReadingPriceList' => $prp]);
	}
	
	//http://192.168.0.170/pixiedust/api/massage-therapy-user-price
    public function massageTherapyPrice() {
	  $mul = ServiceSchedule::where('id', 2)->select('id', 'description')->first();
	  $mpl = MassagePriceSetting::select('massage_timing', 'price')->orderBy('id', 'ASC')->get();
      
	  //dd($prd);
	  //dd($prp);
       return response()->json(['status' => 'success', 'massageUserList' => $mul,'massagePriceList' => $mpl]);
	}

  
    //http://192.168.0.170/pixiedust/api/add-to-cart?data={"user_id":1,"stock_id":374,"qty":1,"product_id":348}
    public function addProductsToCart(Request $request){
        $jsonData = json_decode($request->input('data'));

        $user_id = $jsonData->user_id;
        $quantity = $jsonData->qty;
        $product_id = $jsonData->product_id;
        $stock_id = $jsonData->stock_id;


        if ($user_id=="" || $quantity == 0 || $product_id == "" || $stock_id == "") {
            return response()->json(['status' => 'error', 'message' => 'Provide all required fields']);
        }

        ####Get Product Details From Helper(app/Helpers/helpers.php)###
        $prd_det = getProductDetails($product_id);
        $unit_price = $prd_det->discount_price ? $prd_det->discount_price : $prd_det->price;
        $total_price = $unit_price * $quantity;
        $shipping_price = $prd_det->shipping_price * $quantity;

        ######  Check product exists or not in Cart Table ###########
        $prd_count = TempCart::where([['product_id', $product_id], ['stock_id', $stock_id],['user_id', $user_id]])->count();

        $cart_prd_det = cartProdInfoApi($product_id,$stock_id,$user_id);
        if (!empty($cart_prd_det)) {
            $cart_total = $total_price + $cart_prd_det->total_price;
            $total_qty = $quantity + $cart_prd_det->quantity;
            $total_shipping_price = $shipping_price + $cart_prd_det->total_shipping_price;
        } else {
            $cart_total = $total_price;
            $total_qty = $quantity;
            $total_shipping_price = $shipping_price;
        }

        //Stock Checked here
        $stock = getStock($stock_id);
        if($total_qty > $stock){
             return response()->json(['status' => 'error', 'message' => 'Maximum quantity purchase of this item is '.$stock]);
        }



        $save_ary = [];
        $save_ary['user_id'] = $user_id;
        $save_ary['product_id'] = $product_id;
        $save_ary['stock_id'] = $stock_id;
        $save_ary['quantity'] = $total_qty;
        $save_ary['total_price'] = $cart_total;
        $save_ary['unit_price'] = $unit_price;
        $save_ary['total_shipping_price'] = $total_shipping_price;

        if ($prd_count == 0) {
            TempCart::create($save_ary);
        } else {
            TempCart::where([['product_id', $product_id], ['stock_id', $stock_id],['user_id', $user_id]])->update(['quantity'=>$total_qty,'total_price'=>$cart_total,'total_shipping_price'=>$total_shipping_price]);
        }
        $cart_det = TempCart::where([['product_id', $product_id], ['stock_id', $stock_id],['user_id', $user_id]])->first();

        return response()->json(['status' => 'success', 'message' => 'Product added to cart successfully',"cart_id"=>$cart_det->id]);
    }

    //http://192.168.0.170/pixiedust/api/cart-items?data={"user_id":1}
    public function cartDetails(Request $request){
        $jsonData = json_decode($request->input('data'));
        //var_dump($jsonData);exit;
        $user_id = $jsonData->user_id;

       //$items_ary = [];
        $cart_items = TempCart::where('user_id', $user_id)->with('product')->orderBy('id', 'DESC')->get();
        //dd($cart_items);

       //$price_array = array();
        $prd_stock_ary = array();
        foreach($cart_items as $item_dtls){ 
            $cart_id = $item_dtls->id;
            $user_id = $item_dtls->user_id;
            $prd_id = $item_dtls->product_id;
            $stock_id = $item_dtls->stock_id;
            $unit_price = $item_dtls->unit_price;
            $quantity = $item_dtls->quantity;
            $total_price = $item_dtls->total_price;
            
            $prd_name = $item_dtls->product->name;
            $prd_cs_opt = $item_dtls->product->prd_cs_opt;
            
            $dis_per = ($item_dtls->product->discount)?$item_dtls->product->discount:0;
            $org_prd_price = $item_dtls->product->price;

            //$dis_price = ($item_dtls->product->discount_price)?$item_dtls->product->discount_price:0;
            $shipping_price = $item_dtls->product->shipping_price;

            
            $prd_img = asset('public/images/products/')."/".$item_dtls->product->image;



            $cs_option=productStock::with('size','color')->where('id',$stock_id)->first();
           // dd($cs_option);
            $stock = $cs_option -> stock;

            if($prd_cs_opt==1){
                $size_id = $cs_option->size_id;
                $size = $cs_option->size->size;

                $color_id = $cs_option->color_id;
                $color = $cs_option->color->color;
                $color_code = $cs_option->color->color_code;

                
            }else{
               $size_id ="";
               $size ="";

               $color_id ="";
               $color ="";
               $color_code = "";
               
            }

            $price_info = array('cart_id'=>$cart_id,'user_id'=>$user_id,'prd_id'=>$prd_id,'prd_img'=>$prd_img,'stock_id'=> $stock_id,'org_prd_price'=>$org_prd_price,'unit_price'=>$unit_price,'dis_per'=>$dis_per,'quantity'=>$quantity,'total_price'=>$total_price,'shipping_price'=>$shipping_price,'prd_name'=>$prd_name,'size_id'=>$size_id,'size'=>$size,'color_id'=>$color_id,'color'=>$color,'color_code'=>$color_code,'stock'=>$stock);
            array_push($prd_stock_ary, $price_info);
        }
        //dd($price_info);

        $paymentSetting = PaymentSetting::first();
        $tax_per = $paymentSetting->tax_per;

        if(count($prd_stock_ary) >= 0){
            return response()->json(['status' => 'success',"cart_items"=>$prd_stock_ary,"tax_per"=>$tax_per]);
        }else{
            return response()->json(['status' => 'error',"message"=>'Cart is empty.']);
        }
    }

    //http://192.168.0.170/pixiedust/api/delete-item-from-cart?data={"del_cart_id":"111"}  
    public function deleteCartItem(Request $request){
      $jsonData = json_decode($request->input('data'));
      $cart_id = $jsonData->del_cart_id;
      $response = TempCart::where('id', '=', $cart_id)->delete();
      //dd($response);

      if($response){
          echo '{"status":"success","message":"Item deleted successfully"}';exit;
      }else{
          echo '{"status":"error","message":"Invalid cart ID"}';exit;
      } 
    }

    //http://192.168.0.170/pixiedust/api/decrement-cart-qty?data={"cart_id":5}
    public function decrementCartQty(Request $request) {
      $jsonData = json_decode($request->input('data'));
      $cart_id = $jsonData->cart_id;
      
      if($cart_id != '' && $cart_id != null){
            $cart_det = TempCart::where('id', $cart_id)->first();
            //dd($cart_det);
            $qty = $cart_det->quantity-1;
            if($qty >= 1){
                $price = number_format($cart_det->unit_price*$qty,2,'.','');
                $update_cart = TempCart::where('id', $cart_id)->update(['quantity'=>$qty,'total_price'=>$price]);
                
                return response()->json(['status' => 'success', 'message' => 'Qty updated successfully']);
            }else{
                return response()->json(['status' => "error",'message' => 'Invalid Quantity']);
            }
        }else{
            return response()->json(['status' => "error",'message' => 'Invalid Cart ID']);
       } 
    }

    //http://192.168.0.170/pixiedust/api/validate-coupon-code?data={"coupon_code":"sadasdsa"}
    public function validateCouponCode(Request $request){
        $req_data = json_decode($request->input('data'));
        $coupon_code = $req_data->coupon_code;

        $today = date("Y-m-d");
        $cc_dtls = CouponCode::where([['coupon_code', $coupon_code], ['status', '1'], ['start_date', '<=', $today], ['end_date', '>=', $today]])->get();
        //dd($cc_dtls);
        
        if (count($cc_dtls) == 0) {
            return response()->json(['status' => "error",'message' => 'Invalid coupon code']);
        }else{
            $discount_percentage = $cc_dtls[0]->discount_percentage;
            return response()->json(['status' => "success",'dis_per' => $discount_percentage]);
        }
    }
	

    //http://192.168.0.170/pixiedust/api/place-order 
    public function placeOrder(Request $request){
       $bodyData = $request->all();
       $user_id = $bodyData['user_id'];

       $userCount = UserRegistration::where('id', '=', $bodyData['user_id'])->count();

       $same_for_billing = ($bodyData['same_for_billing']) ? $bodyData['same_for_billing'] : 0;
       if($userCount > 0 )  {

            $bodyData['bill_full_name'] =  $bodyData['bill_first_name'] . ' ' . $bodyData['bill_last_name'];

            $bodyData['ship_full_name'] = $bodyData['ship_first_name'] . ' ' . $bodyData['ship_last_name'];

            $bodyData['fl_tax'] = $bodyData['fl_tax'] ? $bodyData['fl_tax'] : 0;
            $bodyData['tax_per'] = $bodyData['tax_per'] ? $bodyData['tax_per'] : 0;

            $bodyData['tax_amount']= $bodyData['tax_amount'] ? $bodyData['tax_amount'] : 0;
            $bodyData['total_amount']=$bodyData['total_amount'] ? $bodyData['total_amount'] : 0;
            
            $bodyData['coupon_code'] = $bodyData['coupon_code'];

            $bodyData['discount_percentage']=$bodyData['discount_percentage'] ? $bodyData['discount_percentage'] : 0;
             $bodyData['discount_amount']=$bodyData['discount_amount'] ? $bodyData['discount_amount'] : 0;
            
            $bodyData['shipping_amount'] = $bodyData['shipping_amount'] ? $bodyData['shipping_amount'] : 0;


           //dd($bodyData);

            $saveMasterAll = MasterOrder::create($bodyData);
            $orderID = $saveMasterAll->id;
            
            
            
            $cartDatas = TempCart::where('user_id', $user_id)->get();
            //dd($cartDatas);
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
            return response()->json(['status' => 'success', 'message' => 'Order Placed successfully','order_id' =>$orderID]);
       }else{
            return response()->json(['status' => 'error', 'message' => 'Invalid User Id']);
        }

    }

	
	
	//http://192.168.0.170/pixiedust/api/update-trans-details?data={"order_id":"1","trans_id":"saasdsa"}
    public function updateTransDetails(Request $request){
        $req_data = json_decode($request->input('data'));
        $order_id = $req_data->order_id;
		$transaction_id = $req_data->trans_id;
		
		$chk_oid = MasterOrder::where('id','=',$order_id)->count();
		if($chk_oid == 0){
			return response()->json(['status' => 'error', 'message' => 'Invalid Order Id']);
		}
		
		$updateTransaction = MasterOrder::where('id', $order_id)->update(['transaction_id' => $transaction_id, 'payment_status' => 1]);
		
		//Stuck minus from inventory
		$itemDetails = OrderItem::where('order_id', $order_id)->get();
		foreach($itemDetails as $item_value){
			$order_qty = $item_value->quantity;
			$current_stock=getStock($item_value->stock_id);
			$stock_in_hand = $current_stock - $order_qty;
			ProductStock::where('id',$item_value->stock_id)->update(['stock' => $stock_in_hand]);
		}
		
        $getOrderDetails=MasterOrder::where('id', $order_id)->with('orderItems')->first();
        //dd($getOrderDetails);
        $user_id = $getOrderDetails->user_id;

        
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
		
        $deleteTempProduct = TempCart::where('user_id', $user_id)->delete();

		return response()->json(['status' => "success",'message' => 'Order Placed Successfully']);
		
    }







}
