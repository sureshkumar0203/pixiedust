<?php

namespace App\Http\Controllers;

use App\TherapyOffdays;
use Illuminate\Http\Request;
use Auth;
use App\MassageTherapyBooking;

class TherapyOffdaysController extends Controller
{
	public function __construct() {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $therapy_offdays = MassageTherapyBooking::where('off_status', '=', 1)->orderBy('id', "DESC")->get();
		//dd($psychic_offdays);
        return view('admin.therapy-offdays.index', compact('therapy_offdays'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.therapy-offdays.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $all_input = $request->all();
		$this->validate($request, [
            'booking_date' => 'required',
        ]);
		if(isset($all_input['off_time']) && $all_input['off_time']!=''){
			$off_time_slot_count = count($all_input['off_time']);
			$booking_mins = $off_time_slot_count * 30;
			
			$off_time_slot=join(',',$all_input['off_time']);
        	
			$user_id = Auth::user()->id;
			$booking_time = $off_time_slot;
			$booking_date = $all_input['booking_date'];
			$booking_mins = $booking_mins;
			
			
			//$all_input = request()->except(['_token']);
			//dd($all_input);exit;
			MassageTherapyBooking::create(['user_id'=>$user_id,'booking_time'=>$booking_time,'booking_date' => $booking_date,'booking_mins'=>$booking_mins,'paid_amount' => 0,'payment_status' => 1,'transaction_id'=>'Off Day','off_status'=>1]);
			
			return redirect('admin/therapy-offdays/create')->with('success', 'Saved successfully.');
		
		}else{
			return redirect('admin/therapy-offdays/create')->with('error', 'Select atleast one time slot.');
		}
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\TherapyOffdays  $therapyOffdays
     * @return \Illuminate\Http\Response
     */
    public function show(TherapyOffdays $therapyOffdays)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\TherapyOffdays  $therapyOffdays
     * @return \Illuminate\Http\Response
     */
    public function edit(TherapyOffdays $therapyOffdays)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\TherapyOffdays  $therapyOffdays
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TherapyOffdays $therapyOffdays)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\TherapyOffdays  $therapyOffdays
     * @return \Illuminate\Http\Response
     */
    public function destroy(TherapyOffdays $therapyOffdays,$id)
    {
        if(MassageTherapyBooking::find($id)!=null){
            MassageTherapyBooking::destroy($id);
            return redirect('admin/therapy-offdays')->with('success','Record deleted successfully');
        }else{
            return redirect('admin/therapy-offdays');
        }
    }
}
