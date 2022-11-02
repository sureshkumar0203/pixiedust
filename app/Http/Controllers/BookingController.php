<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\IntutiveReadingBooking;
use \App\MassageTherapyBooking;
use \App\MassagePriceSetting;
use \App\UserRegistration;
use App\PaymentSetting;
use Mail;

class BookingController extends Controller {

    public function chkIntutiveReadingTime(Request $request) {
        if ($request->date != "") {
            $getIntutiveBookings = IntutiveReadingBooking::where('booking_date', $request->date)->where('cancel_status',0)->get();
            $timeArr = [];
            foreach ($getIntutiveBookings as $getIntutiveBooking) {
                $timeArr[] = $getIntutiveBooking->booking_time;
            }
            $timeArrImpl = implode(",", $timeArr);
            $timeArrExpl = explode(',', $timeArrImpl);
            if ($getIntutiveBookings) {
                return response()->json(['status' => 'success', 'bookedData' => $timeArrExpl]);
            }
        }
    }

    public function availableTimeCheck(Request $request) {
        $timeArrImpl = implode("|", $request->timeArray);
        $checkAvailableTime = IntutiveReadingBooking::where('booking_date', $request->bookDate)->where('cancel_status',0)->whereRaw('concat(",", booking_time ,",") REGEXP ?', ['[[:<:]]' . $timeArrImpl . '[[:>:]]'])->count();
        if ($checkAvailableTime > 0) {
            return response()->json(['status' => 'not_available', 'bookTimeMins' => $request->bookTimeMins]);
        } else {
            return response()->json(['status' => 'available', 'bookTimeMins' => $request->bookTimeMins]);
        }
    }

    // public function intutiveReadingBooking(Request $request) {
    //     //dd($request->all());
    //     $allInput = request()->all();
    //     $getUserDetails = UserRegistration::where('id', $request->user_id)->first();
    //     $saveInputData = IntutiveReadingBooking::create($allInput);
    //     if ($saveInputData) {
    //         $startTime = $request->startTime;
    //         $endTime = date("H:i", strtotime("+$request->booking_mins minutes", strtotime($startTime)));
    //         $email = $getUserDetails->email;
    //         $admin_name = getAdminDetails()->name;
    //         $admin_email = getAdminDetails()->alt_email;
    //         $mailSend = Mail::send('emails.intutive_reading_booking', ['name' => $getUserDetails->bill_first_name . ' ' . $getUserDetails->bill_last_name, 'booking_date' => $request->booking_date, 'booking_time' => $startTime . " to " . $endTime, 'booking_mins' => $request->booking_mins], function ($message) use ($email) {
    //                     $message->from(getAdminDetails()->alt_email, 'Pixiedust');
    //                     $message->subject('Pixiedust :: Intutive Reading Booking.');
    //                     $message->to($email);
    //                 });

    //         return response()->json(['status' => 'success', 'msg' => "Your booking successfully done."]);
    //     } else {
    //         return response()->json(['status' => 'error', 'msg' => "Error occured for booking."]);
    //     }
    // }
    
    public function intutiveReadingBooking(Request $request) {
        //dd($request->all());
        $allInput = request()->all();
        $timeArrExpl = explode(",", $request->booking_time);
        $timeArrImpl = implode("|", $timeArrExpl);
        $checkAvailableTime = IntutiveReadingBooking::where('booking_date', $request->booking_date)->where('cancel_status',0)->whereRaw('concat(",", booking_time ,",") REGEXP ?', ['[[:<:]]' . $timeArrImpl . '[[:>:]]'])->count();
        if ($checkAvailableTime == 0) {
            $getUserDetails = UserRegistration::where('id', $request->user_id)->first();
            $saveInputData = IntutiveReadingBooking::create($allInput);
            if ($saveInputData) {
                $startTime = $request->startTime;
                $endTime = date("H:i", strtotime("+$request->booking_mins minutes", strtotime($startTime)));
                if($request->user_id != 1){
                    $email = $getUserDetails->email;
					$from_name = $getUserDetails->bill_first_name . ' ' . $getUserDetails->bill_last_name;
                }else{
                	$email = $request->booking_email;
					$from_name = "Customer";
				}

                $admin_name = getAdminDetails()->name;
                $admin_email = getAdminDetails()->alt_email;

                $mailSend = Mail::send('emails.intutive_reading_booking', ['name' => $from_name, 'booking_date' => $request->booking_date, 'booking_time' => $startTime . " to " . $endTime, 'booking_mins' => $request->booking_mins], function ($message) use ($email,$admin_email) {
                            $message->from(getAdminDetails()->alt_email, 'Pixiedust');
                            $message->subject('Pixiedust :: Intutive Reading Booking.');
                            $message->to($email);
                            $message->bcc($admin_email);
                        });

                return response()->json(['status' => 'success', 'msg' => "Your booking successfully done."]);
            } else {
                return response()->json(['status' => 'error', 'msg' => "Error occured for booking."]);
            }
        } else {
            return response()->json(['status' => 'error', 'msg' => "Selected time already booked.Please select anothor time"]);
        }
    }

    ####################  For Massage Therapy Ajax Call ################

    public function chkMassageTherapyTime(Request $request) {
        if ($request->date != "") {
            $getMassageTherapyBookings = MassageTherapyBooking::where('booking_date', $request->date)->where('payment_status', 1)->where('cancel_status',0)->get();
            $timeArr = [];
            foreach ($getMassageTherapyBookings as $getMassageTherapyBooking) {
                $timeArr[] = $getMassageTherapyBooking->booking_time;
            }
            $timeArrImpl = implode(",", $timeArr);
            $timeArrExpl = explode(',', $timeArrImpl);
            if ($getMassageTherapyBookings) {
                return response()->json(['status' => 'success', 'bookedData' => $timeArrExpl]);
            }
        }
    }

    public function availableTimeCheckForMassage(Request $request) {
        $timeArrImpl = implode("|", $request->timeArray);
        $checkAvailableTime = MassageTherapyBooking::where('booking_date', $request->bookDate)->where('payment_status', 1)->where('cancel_status', 0)->whereRaw('concat(",", booking_time ,",") REGEXP ?', ['[[:<:]]' . $timeArrImpl . '[[:>:]]'])->count();
        if ($checkAvailableTime > 0) {
            return response()->json(['status' => 'not_available', 'bookTimeMins' => $request->bookTimeMins]);
        } else {
            return response()->json(['status' => 'available', 'bookTimeMins' => $request->bookTimeMins]);
        }
    }

    public function massageTherapyBooking(Request $request) {
        //dd(request()->all());
        $allInput = request()->all();
        $getMinFormat = gmdate("H:i:s", $request->booking_mins * 60);
        $getPriceDetails = MassagePriceSetting::select('price')->where('massage_timing', $getMinFormat)->first();
        $allInput['paid_amount'] = $getPriceDetails->price;
        
      /*  if($request->user_id != 1){
			$allInput['payment_status'] = 0;
			$allInput['booking_email'] = 'Null';
			$allInput['booking_note'] = 'Null';
		}else{
			$allInput['payment_status'] = 1;
			$allInput['transaction_id'] = 'By Admin';
			$allInput['booking_email'] = $request->booking_email;
			$allInput['booking_note'] = $request->booking_note;
		}*/
		
		if($request->user_id == 1){
		  $allInput['payment_status'] = 1;
		  $allInput['transaction_id'] = 'By Admin';
		  $allInput['booking_email'] = $request->booking_email;
		  $allInput['booking_note'] = $request->booking_note;
		}
			 
        $saveInputData = MassageTherapyBooking::create($allInput);
        if($request->user_id == 1){
    		$getBookingDetails = MassageTherapyBooking::where('id', $saveInputData->id)->first();
			$startTime = explode(',', $getBookingDetails->booking_time)[0];
			$endTime = date("H:i", strtotime("+$getBookingDetails->booking_mins minutes", strtotime($startTime)));
			$email = $request->booking_email;
			$admin_name = getAdminDetails()->name;
			$admin_email = getAdminDetails()->alt_email;
			
			$mailSend = Mail::send('emails.intutive_reading_booking', ['name' => 'Customer', 'booking_date' => $getBookingDetails->booking_date, 'booking_time' => $startTime . " to " . $endTime, 'booking_mins' => $getBookingDetails->booking_mins], function ($message) use ($email) {
			  $message->from(getAdminDetails()->alt_email, 'Pixiedust');
			  $message->subject('Pixiedust :: Massage Therapy Booking.');
			  $message->to($email);
			});
			return response()->json(['status' => 'admin', 'msg' => 'Your booking successfully done.']);
		}
		
        session(['massage_booking_id' => $saveInputData->id]);
        if ($saveInputData) {
            return response()->json(['status' => 'success', 'msg' => "Your are redirecting to payment page."]);
        } else {
            return response()->json(['status' => 'error', 'msg' => "Error occured for booking."]);
        }
    }

    public function massageTherapyPayment() {        
        $paymentSetting = PaymentSetting::first();
        $messageTherapyBookingId = session()->get('massage_booking_id');
        $getMassageTherapyBookingDetails = MassageTherapyBooking::where('id', $messageTherapyBookingId)->first();
        //dd($getMassageTherapyBookingDetails);
        if ($paymentSetting->paypal_environment == 1) {
            $URL = "https://www.sandbox.paypal.com/cgi-bin/webscr";
        } else {
            $URL = "https://www.paypal.com/cgi-bin/webscr";
        }
        return view('massage-therapy-payment', compact('paymentSetting', 'getMassageTherapyBookingDetails', 'URL'));
    }

    public function updateTherapyBookingTransactionDetails() {
        $booking_id = $_POST['custom'];
        $txn_id = $_POST['txn_id'];
        $updateTransaction = MassageTherapyBooking::where('id', $booking_id)->update(['transaction_id' => $txn_id, 'payment_status' => 1]);
        $getUserIdFromMassage = MassageTherapyBooking::where('id', $booking_id)->select('user_id')->first();
        $getUserDetails = UserRegistration::where('id', $getUserIdFromMassage->user_id)->first();
        $getBookingDetails = MassageTherapyBooking::where('id', $booking_id)->first();
        if ($updateTransaction) {
            $startTime = explode(',', $getBookingDetails->booking_time)[0];
            $endTime = date("H:i", strtotime("+$getBookingDetails->booking_mins minutes", strtotime($startTime)));
            $email = $getUserDetails->email;
            $admin_name = getAdminDetails()->name;
            $admin_email = getAdminDetails()->alt_email;
            $mailSend = Mail::send('emails.massage_therapy_booking', ['name' => $getUserDetails->bill_first_name . ' ' . $getUserDetails->bill_last_name, 'booking_date' => date('m-d-Y',strtotime($getBookingDetails->booking_date)), 'booking_time' => $startTime . " to " . $endTime, 'booking_mins' => $getBookingDetails->booking_mins,'therapy_cost'=>$getBookingDetails->paid_amount], function ($message) use ($email) {
                        $message->from(getAdminDetails()->alt_email, 'Pixiedust');
                        $message->subject('Pixiedust :: Massage Therapy Booking.');
                        $message->to($email);
                    });

            session()->forget('massage_booking_id');
        }
    }
}
