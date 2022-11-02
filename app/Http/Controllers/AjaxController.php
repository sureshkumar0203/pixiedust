<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use \App\ProductImage;
use \App\SubCategory;
use \App\MasterOrder;
use \App\NewsLetter;
use App\CmsPage;
use App\OtherCmsPage;
use App\ProductStock;
use App\IntutiveReadingBooking;
use App\MassageTherapyBooking;


use PDF;
use Mail;
use Response;

class AjaxController extends Controller {

    public function saveNewsLetterData(Request $request) {

        $count = NewsLetter::where('email', $request->email)->count();
        //dd($count);
        if ($count == 0) {
            $saveNewsLetter = NewsLetter::create($request->all());
            if ($saveNewsLetter) {
                return response()->json(['status' => 'success']);
            }
        } else {
            return response()->json(['status' => 'exists']);
        }
    }

    public function getSubCategory(Request $request) {
        $getSubCategories = SubCategory::where('category_id', $request->cat_id)->pluck('name', 'id');
        if (!empty($getSubCategories)) {
            return Response::json($getSubCategories);
        }
    }

    public function delMulImage(Request $request) {
        $getMulImage = ProductImage::where('id', $request->id)->first();
        if (!empty($getMulImage)) {
            $prodMulImage = public_path('images/products/multiple_images/' . $getMulImage->image);
            if (file_exists($prodMulImage)) {
                unlink($prodMulImage);
            }
        }
        $delMulImg = ProductImage::destroy($request->id);
        if ($delMulImg) {
            return response()->json(['status' => 'success']);
        } else {
            return response()->json(['status' => 'error']);
        }
    }

    public function updateShipping(request $request) {
        $allInput = request()->except(['_token', 'order_id']);
        $allInput['shipping_date'] = date("Y-m-d");
        //print_r($request->order_id);exit;
        $updateShipping = MasterOrder::where('id', $request->order_id)->update($allInput);
        if ($updateShipping) {
            $getOderDetls = MasterOrder::where('id', $request->order_id)->select('email')->first();
            $getOrderDetails = MasterOrder::where('id', $request->order_id)->with('orderItems')->first();
            $data = array(
                'order_id' => $request->order_id,
                'shipping_url' => $request->shipping_url,
                'tracking_id' => $request->tracking_id,
                'email' => $getOderDetls->email,
                'ship_full_name' => $getOderDetls->ship_full_name,
                'shipping_date' => date('Y-m-d'),
            );
            $data['subject'] = 'Pixiedust :: Order Shipped';
           /* Mail::send('emails.order_ship_email', compact('data'), function($message) use ($data) {
                $message->to($data['email']);
                $message->subject($data['subject']);
                $message->from(getAdminDetails()->alt_email);
            });*/
            return response()->json(['success' => "success", 'msg' => 'Your order has been shipped successfully.']);
            exit;
        }
    }
    
    public function deleteSubEmail(Request $request) {
        $deleteEmail = NewsLetter::destroy($request->id);

        if ($deleteEmail) {
            return response()->json(['status' => "success", 'msg' => 'Your Email has been deleted successfully.']);            
        } else {
            return response()->json(['status' => "error", 'msg' => 'Your Email has not been deleted successfully.']);
        }
    }
    
    public function deleteCmsPhoto(Request $request) {
		$cmd_dtls = CmsPage::where('id', $request->ph_id)->first();
		if (!empty($cmd_dtls->image)) {
			$oldImage = public_path('images/' . $cmd_dtls->image);
			if (file_exists($oldImage)) {
				unlink($oldImage);
			}
		}
		CmsPage::where('id', $request->ph_id)->update(['image'=>NULL]);
		return response()->json(['status' => "success"]);
	}
	
	public function deleteCmsPhotoVideo(Request $request) {
		$pv_dtls = OtherCmsPage::where('id', $request->pv_id)->first();
		if (!empty($pv_dtls->img_vid)) {
			$oldImage = public_path('images/img-vid/' . $pv_dtls->img_vid);
			if (file_exists($oldImage)) {
				unlink($oldImage);
			}
		}
		OtherCmsPage::where('id', $request->pv_id)->update(['img_vid'=>NULL]);
		return response()->json(['status' => "success"]);
	}
	
	
	
	public function deletePsdRecord(Request $request) {
		$psd_id = $request->input('psd_id');
		ProductStock::where('id',$psd_id)->delete();
		return 'success';
	}
	
	public function bookedTimeSlot(Request $request) {
		$selected_date = $request->input('selected_date');
		$booking_rec = IntutiveReadingBooking::whereDate('booking_date', '=',$selected_date)->get();
		
		
		$booked_time_ary = [];
		foreach($booking_rec as $booking_key=>$booking_val){
			$booking_slots=explode(",",$booking_val->booking_time);
			array_push($booked_time_ary,$booking_slots);
		}
		if(count($booked_time_ary) > 0){
			$result_ary = call_user_func_array("array_merge", $booked_time_ary);
		}else{
			$result_ary =[];
		}
		//$xx=getTimeFrame15Min();
		//print_r($xx);exit;
		$x = [];
		foreach(getTimeFrame15Min() as $key=> $time15min){
			if (in_array($time15min, $result_ary)){
				$cond = "disabled=disabled";
				$cls = "dist";
			}else{
				$cond = "";
				$cls = "";
			}
			$x[] = '
			<div id="time_data">
                         <ul style="padding-left:0px;" class="psychic-off-day"><li class="adtm '.$cls.'"><span class="spn1"><input type="checkbox" name="off_time[]" id="off_time_'.$key.'" value="'.$time15min.'" class="chk_ot" '.$cond.'>'.'</span><span>'.date("g:i A", strtotime($time15min)).'</span></li></ul></div>';
		}
		//print_r($x);exit;
		return response()->json(['status' => 'success', 'result' => $x]);
	}
	
	public function bookedTherapyTimeSlot(Request $request) {
		$selected_date = $request->input('selected_date');
		$booking_rec = MassageTherapyBooking::whereDate('booking_date', '=',$selected_date)->get();
		//dd($booking_rec);
		
		$booked_time_ary = [];
		foreach($booking_rec as $booking_key=>$booking_val){
			$booking_slots=explode(",",$booking_val->booking_time);
			array_push($booked_time_ary,$booking_slots);
		}
		if(count($booked_time_ary) > 0){
			$result_ary = call_user_func_array("array_merge", $booked_time_ary);
		}else{
			$result_ary =[];
		}
		//$xx=getTimeFrame30Min();
		//print_r($xx);exit;
		$x = [];
		
		foreach(getTimeFrame30Min() as $key=> $time30min){
			if (in_array($time30min, $result_ary)){
				$cond = "disabled=disabled";
				$cls = "dist";
			}else{
				$cond = "";
				$cls = "";
			}

			$x[] = '
			<div id="time_data">
                         <ul style="padding-left:0px;" class="psychic-off-day">
						 <li class="adtm '.$cls.'"><span class="spn1"><input type="checkbox" name="off_time[]" id="off_time_'.$key.'" value="'.$time30min.'" class="chk_ot" '.$cond.'>'.'</span><span>'.date("g:i A", strtotime($time30min)).' </span></li></ul></div>';
		}
		//print_r($x);exit;
		return response()->json(['status' => 'success', 'result' => $x]);
	}
	

}
