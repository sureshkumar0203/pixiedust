<?php

namespace App\Http\Controllers;

use App\PsychicOffdays;
use App\IntutiveReadingBooking;
use Illuminate\Http\Request;
use Auth;

class PsychicOffdaysController extends Controller
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
		$psychic_offdays = IntutiveReadingBooking::where('off_status', '=', 1)->orderBy('id', "DESC")->get();
		//dd($psychic_offdays);
        return view('admin.psychic-offdays.index', compact('psychic_offdays'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.psychic-offdays.create');
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
		
		/*if(isset($all_input['off_time']) && $all_input['off_time']!=''){
			$off_time_slot_count = count($all_input['off_time']);
		}else{
			$off_time_slot_count = 0;
		}*/
		
		if(isset($all_input['off_time']) && $all_input['off_time']!=''){
			$off_time_slot_count = count($all_input['off_time']);
			$booking_mins = $off_time_slot_count * 15;
			
			$off_time_slot=join(',',$all_input['off_time']);
        	
			$user_id = Auth::user()->id;
			$booking_time = $off_time_slot;
			$booking_date = $all_input['booking_date'];
			$booking_mins = $booking_mins;
			
			//$all_input = request()->except(['_token']);
			//dd($all_input);exit;
			IntutiveReadingBooking::create(['user_id'=>$user_id,'booking_time'=>$booking_time,'booking_date'=>$booking_date,'booking_mins'=>$booking_mins,'off_status'=>1]);
			
			return redirect('admin/psychic-offdays/create')->with('success', 'Saved successfully.');
		
		}else{
			return redirect('admin/psychic-offdays/create')->with('error', 'Select atleast one time slot.');
		}
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\PsychicOffdays  $psychicOffdays
     * @return \Illuminate\Http\Response
     */
    public function show(PsychicOffdays $psychicOffdays)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\PsychicOffdays  $psychicOffdays
     * @return \Illuminate\Http\Response
     */
    public function edit(PsychicOffdays $psychicOffdays)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\PsychicOffdays  $psychicOffdays
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, PsychicOffdays $psychicOffdays)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\PsychicOffdays  $psychicOffdays
     * @return \Illuminate\Http\Response
     */
    public function destroy(PsychicOffdays $psychicOffdays,$id)
    {
        if(IntutiveReadingBooking::find($id)!=null){
            IntutiveReadingBooking::destroy($id);
            return redirect('admin/psychic-offdays')->with('success','Record deleted successfully');
        }else{
            return redirect('admin/psychic-offdays');
        }
    }
}
