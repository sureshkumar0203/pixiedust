<?php

namespace App\Http\Controllers;

use App\User;
use App\PaymentSetting;
use App\UserRegistration;
use App\MasterOrder;
use App\ServiceSchedule;
use App\IntutivePriceSetting;
use App\MassagePriceSetting;
use App\IntutiveReadingBooking;
use \App\MassageTherapyBooking;
use \App\Product;
use App\ProductStock;
use App\NewsLetter;
use Auth;
use Session;
use Hash;
use Mail;
use Illuminate\Http\Request;

class AdminController extends Controller {

    public function __construct() {
        $this->middleware('auth');
    }

    
    public function testStock(){
        $prd_rec  = Product::get();
        foreach ($prd_rec as $key => $value) {
             $chk_prd_id = ProductStock::where('product_id', '=', $value->id)->count();
             if($chk_prd_id==0){
                ProductStock::create(['product_id'=>$value->id,'stock'=>5]);
             }
        }
        echo "Completed";exit;
    }
    public function index() {
       ######  Count For Home Page #####################

        $getTotalUsersCount = UserRegistration::count();
        $getTotalOrdersCount = MasterOrder::where('transaction_id', '!=', NULL)->count();
        $getTotalPsychicBookingCount = IntutiveReadingBooking::count();
        $getTotalMassageTherapyBookingCount = MassageTherapyBooking::count();

        ###############  Get Latest Orders #############
        $getLatestOrders = MasterOrder::with('orderItems.products:id,name')->where('transaction_id', '!=', NULL)->limit(7)->get();
        //dd($getLatestOrders);
        ###############  Get Latest Products #############
        $getLatestProducts = Product::select('id','name','price','discount_price','shipping_price','image')->orderBy('id', 'desc')->limit(7)->get();        
        return view('admin.home', compact('getTotalUsersCount', 'getTotalOrdersCount', 'getTotalPsychicBookingCount', 'getTotalMassageTherapyBookingCount','getLatestOrders','getLatestProducts'));
    }

    public function showMyaccount() {
        $getAccountDetails = User::where('id', Auth::user()->id)->first();
        return view('admin.my-account', compact('getAccountDetails'));
    }

    public function updateMyaccount(Request $request) {
        //dd($request->all());
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required',
            'alt_email' => 'required',
            'contact_no' => 'required',
            'address' => 'required',
            'opening_hours' => 'required',
            'facebook_url' => 'required|url',
            'twitter_url' => 'required|url',
            'instagram_url' => 'required|url',
        ]);
        $data = request()->except(['_token']);
        $profileUpdate = User::where('id', Auth::user()->id)
                ->update($data);
        if ($profileUpdate) {
            $request->session()->flash('success', 'My Account updated successfully.');
            return back();
        } else {
            $request->session()->flash('error', 'Error occured updation.');
            return back();
        }
    }

    public function showChangePassword() {
        return view('admin.change-password');
    }

    public function changePassword(Request $request) {
        $this->validate($request, [
            'current_password' => 'required',
            'new_password' => 'required',
            'confirm_password' => 'required|same:new_password',
        ]);
        $user = User::find(auth()->user()->id);
        if (Hash::check($request->current_password, $user->password)) {
            $user->fill(['password' => Hash::make($request->new_password)])->save();
            $request->session()->flash('success', 'Password changed successfully.');
            return back();
        } else {
            $request->session()->flash('error', 'Please enter your correct old password.');
            return back();
        }
    }

    public function getNewsLetter() {
        $getNewsLetSubEmails = NewsLetter::orderBy('id', 'DESC')->get();
        $getEmailTemplate = \App\EmailTemplate::select('content')->first();
        return view('admin.newsletter', compact('getNewsLetSubEmails', 'getEmailTemplate'));
    }

    public function sendNewsLetter(Request $request) {      
        $this->validate($request, [
            'description' => 'required',
        ]);

        $subEmails = $request->email_check ? $request->email_check : "";
        $body = $request->description;
        if ($subEmails) {
            foreach ($subEmails as $subEmail) {
                $adminEmail = getAdminDetails()->alt_email;
                Mail::send('emails.newsletter_email', ['body' => $body], function ($message) use ($adminEmail, $subEmail) {
                    $message->from($adminEmail, 'Pixiedust');
                    $message->subject('Newsletter Email');
                    $message->to($subEmail);
                });
            }
            $request->session()->flash('success', 'Newsletter send successfully.');
            return back();
        } else {
            $request->session()->flash('error', 'Please check at least one checkbox');
            return back();
        }
    }

    public function paymentSetting() {
        $getPaymentSetting = PaymentSetting::first();
        return view('admin.payment-setting', compact('getPaymentSetting'));
    }

    public function updatePaymentSetting(Request $request) {
        $this->validate($request, [
			'paypal_environment' => 'required',
            'paypal_email' => 'required|email',
			'tax_per' => 'required',
        ]);
        $data = request()->except(['_token']);
        $paymentSettingUpdate = PaymentSetting::where('id', 1)
                ->update($data);
        if ($paymentSettingUpdate) {
            $request->session()->flash('success', 'PaymentSetting updated successfully.');
            return back();
        } else {
            $request->session()->flash('error', 'Error occured updation.');
            return back();
        }
    }

    public function showCustomers() {
        $getCustomers = UserRegistration::orderBy('id', 'DESC')->get();
        return view('admin.manage-customers', compact('getCustomers'));
    }

    public function deleteCustomer($id){
        $cnt_cust_ord = MasterOrder::where([['user_id',$id],['transaction_id', '!=', NULL]])->orderBy('id','DESC')->count();
        if($cnt_cust_ord==0){
            UserRegistration::destroy($id);
            return redirect('admin/manage-customers')->with('success','Record deleted successfully');
        }else{
            return redirect('admin/manage-customers')->with('error','Your has placed some order.So you can not delete this record');
        }
        
    }

    public function viewCustomerDetails($id) {
        $getCustomerDetails = UserRegistration::where('id', $id)->first();
        return view('admin.view-customer-details', compact('getCustomerDetails'));
    }

    public function showOrders() {
        $getOrders = MasterOrder::where('transaction_id', '!=', NULL)->orderBy('id','DESC')->get();
        return view('admin.manage-orders', compact('getOrders'));
    }

    public function viewOrderDetails($id) {
        $getOrderDetails = MasterOrder::where('id', $id)->with('orderItems')->first();
        return view('admin.view-order-details', compact('getOrderDetails'));
    }
    
    
    public function offlineOrders() {
        //$getOrderDetails = MasterOrder::where('id', $id)->with('orderItems')->first();
        return view('admin.offline-orders');
    }

    public function showIntutiveReaders() {
        $getIntutiveReaders = ServiceSchedule::where('id', 1)->first();
        return view('admin.intutive-readers', compact('getIntutiveReaders'));
    }

    public function editIntutiveReaders($id) {
        $getIntutiveReaders = ServiceSchedule::where('id', 1)->first();
        return view('admin.intutive-readers-edit', compact('getIntutiveReaders'));
    }

    public function updateIntutiveReaders(Request $request) {
        $allInput = request()->except(['_token']);
        $this->validate($request, [
            'description' => 'required',
        ]);
        $intutiveReaders = ServiceSchedule::where('id', 1)
                ->update($allInput);
        if ($intutiveReaders) {
            return redirect('admin/intutive-readers')->with('success', 'Intutive Readers updated successfully');
        } else {
            $request->session()->flash('error', 'Error occured updation.');
            return back();
        }
    }

    public function showMassageTherapists() {
        $getMassageTherapists = ServiceSchedule::where('id', 2)->first();
        return view('admin.massage-therapists', compact('getMassageTherapists'));
    }

    public function editMassageTherapists($id) {
        $getMassageTherapists = ServiceSchedule::where('id', 2)->first();
        return view('admin.massage-therapists-edit', compact('getMassageTherapists'));
    }

    public function updateMassageTherapists(Request $request) {
        $allInput = request()->except(['_token']);
        $this->validate($request, [
            'description' => 'required',
        ]);
        $massageTherapists = ServiceSchedule::where('id', 2)
                ->update($allInput);
        if ($massageTherapists) {
            return redirect('admin/massage-therapists')->with('success', 'Massage Therapists updated successfully');
        } else {
            $request->session()->flash('error', 'Error occured updation.');
            return back();
        }
    }

    public function showIntutivePrices() {
        $getIntutivePrices = IntutivePriceSetting::get();
        return view('admin.intutive-reading-price', compact('getIntutivePrices'));
    }

    public function editIntutivePriceSetting($id) {
        $getIntutivePrices = IntutivePriceSetting::where('id', $id)->first();
        return view('admin.intutive-reading-price-edit', compact('getIntutivePrices'));
    }

    public function updateIntutivePrice(Request $request) {
        $allInput = request()->except(['_token']);
        $this->validate($request, [
            'price' => 'required',
        ]);
        $intutiveReadingPriceUpdate = IntutivePriceSetting::where('id', $request->id)->update($allInput);
        if ($intutiveReadingPriceUpdate) {
            return redirect('admin/intutive-price-setting')->with('success', 'Intutive Reading Price updated successfully');
        } else {
            $request->session()->flash('error', 'Error occured updation.');
            return back();
        }
    }
    
    
    ############### Massage Therapy Settings #########################
    
    public function showMassageTherapyPrices() {
        $getMassageTherapyPrices = MassagePriceSetting::get();
        return view('admin.massage-therapy-price', compact('getMassageTherapyPrices'));
    }

    public function editMassageTherapyPriceSetting($id) {
        $getMassagePriceSetting = MassagePriceSetting::where('id', $id)->first();
        return view('admin.massage-therapy-price-edit', compact('getMassagePriceSetting'));
    }

    public function updateMassageTherapyPrice(Request $request) {
        $allInput = request()->except(['_token']);
        $this->validate($request, [
            'price' => 'required',
        ]);
        $massagePriceSettingUpdate = MassagePriceSetting::where('id', $request->id)->update($allInput);
        if ($massagePriceSettingUpdate) {
            return redirect('admin/massage-therapists-price-setting')->with('success', 'Massage Price Price updated successfully');
        } else {
            $request->session()->flash('error', 'Error occured updation.');
            return back();
        }
    }
    
     public function showIntutiveBookings() {
        $getIntutiveBookings = IntutiveReadingBooking::with('user_registrations:id,bill_first_name,bill_last_name,bill_phone_number')->where('off_status','=',0)->orderBy('id', 'DESC')->get();
        //dd($getIntutiveBookings);
        return view('admin.intutive-bookings', compact('getIntutiveBookings'));
    }

    public function showMassageTherapyBookings() {
        $getMassageTherapyBookings = MassageTherapyBooking::with('user_registrations:id,bill_first_name,bill_last_name,bill_phone_number')->where('payment_status', 1)->where('off_status',0)->orderBy('id', 'DESC')->get();
        return view('admin.massage-therapy-bookings', compact('getMassageTherapyBookings'));
    }
	
	 public function viewCancelBookingDetails($id) {
        $cb_details = MassageTherapyBooking::with('user_registrations:id,bill_first_name,bill_last_name,bill_phone_number,email')->where('id', $id)->first();
		
		//dd($cb_details);
		
		if($cb_details!=null){
        	return view('admin.confirm-cancel-booking', compact('cb_details'));
		}else{
			return redirect('admin/massage-therapy-bookings')->with('error', 'Invalid booking id');
		}
    }
	
	public function updateCancelBookingDetails(Request $request) {
		$booking_id = $request->booking_id;
        $ac_details = $request->ac_details;
        $admin_notes = $request->admin_notes;
		
        MassageTherapyBooking::where('id', $booking_id)->update(['cancel_status' =>1,'account_details'=>$ac_details,'admin_notes' =>$admin_notes]);

		return redirect('admin/massage-therapy-bookings')->with('success', 'Updated Successfully');
	}



}
