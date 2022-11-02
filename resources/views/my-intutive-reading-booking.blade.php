@extends('layouts.master')
@section('title') {{ "My Account" }} @stop
@section('keywords'){{ "My Account" }} @stop
@section('description'){{ "My Account" }} @stop
@section('content')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<div class="checkout-area">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-4">
        <h5 class="ac-head" style="border-bottom:solid 1px #fff;">My Account & Booking Details <a href="{{ url('/edit-profile') }}" class="ac-edit">EDIT PROFILE</a></h5>
        <h5 class="ac-head"><i class="fa fa-user" aria-hidden="true"></i> My Account</h5>
        <div class="ac-block" > <span>First Name : {{ $getUserDetails->bill_first_name }}</span> <span>Last Name : {{ $getUserDetails->bill_last_name }}</span> <span>Email Address : {{ $getUserDetails->email }}</span> <span>Phone : {{ $getUserDetails->bill_phone_number }}</span> <span>Address : {{ $getUserDetails->bill_address1 }}</span> </div>
      </div>
      <div class="col-lg-8 col-md-8">
        <div class="order-history-block">
          <div class=" with-nav-tabs">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab1info" data-toggle="tab">
                <h5><i class="fa fa-file-text" aria-hidden="true"></i> My Intuitive Reading Booking History</h5>
                </a></li>
              <li><a href="#tab2info" data-toggle="tab">
                <h5><i class="fa fa-file-text" aria-hidden="true"></i> My Message Theraphy Booking History</h5>
                </a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane fade in active" id="tab1info" style="color:#000;">
                <div  class="data-tbl-scl">
                  <table class="order-history table-striped mb-50" id="example1">
                    <thead>
                      <tr>
                        <th>Booking ID</th>
                        <th>Booking Date</th>
                        <th>Booking Time</th>
                        <th>Booking Duration</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                    @if($getIntutiveBookings->count() > 0)
                    @foreach($getIntutiveBookings as $getIntutiveBooking)
                    @php $bookExpl = explode(",",$getIntutiveBooking->booking_time);                                 
                    $endTime = date("H:i", strtotime("+$getIntutiveBooking->booking_mins minutes", strtotime($bookExpl[0])));
                    @endphp
                    <tr>
                      <td> <span class="bkid"># {{ $getIntutiveBooking->id }}</span>
                        
                        @if($getIntutiveBooking->booking_date >= date("Y-m-d") && $getIntutiveBooking->cancel_status==0) 
                       
                        <a href="javascript:void(0)" title="Cancel this Booking" onClick="cancelPsychicBooking({{ $getIntutiveBooking->id }});" id="disp_pbs{{$getIntutiveBooking->id}}" class="cancl-btn">
                        <i class="fa fa-ban" aria-hidden="true" style="color:#ff0000; font-size:15px;"></i></a> 
                        @endif
                        
                        @if($getIntutiveBooking->cancel_status == 1) <span class="can-text">Canceled</span> @endif 
                        
                        <span id="disp_bs{{$getIntutiveBooking->id}}"></span>
                        
                        </td>
                      <td>{{ date("dS M Y",strtotime($getIntutiveBooking->booking_date)) }}</td>
                      <td>{{ $bookExpl[0] }} to  {{ $endTime }}</td>
                      <td> {{ $getIntutiveBooking->booking_mins }} Mins
                        @if($getIntutiveBooking->booking_email != '' && $getIntutiveBooking->booking_email != 'Null') <br>
                        Email - {{ $getIntutiveBooking->booking_email }}
                        @endif
                        @if($getIntutiveBooking->booking_note != '' && $getIntutiveBooking->booking_note != 'Null') <br>
                        Note - {{ $getIntutiveBooking->booking_note }}
                        @endif </td>
                    </tr>
                    @endforeach
                    <div class="row">
                      <div class="col-xs-12">
                        <div id="paginator" class="text-center"></div>
                      </div>
                    </div>
                    @else
                    <tr>
                      <td colspan="6" class="no-ord-f red">No Order Found!!</td>
                    </tr>
                    @endif
                      </tbody>
                    
                  </table>
                </div>
              </div>
              <div class="tab-pane fade" id="tab2info" style="color:#000;">
                <div class="data-tbl-scl">
                  <table class="order-history table-striped mb-50" id="example2">
                    <thead>
                      <tr>
                        <th>Booking ID</th>
                        <th>Booking Date</th>
                        <th>Booking Time</th>
                        <th>Booking Duration</th>
                        <th>Transaction ID</th>
                        <th>Price</th>
                        <th>Return Status</th>
                      </tr>
                    </thead>
                    <tbody>
                    
                    @if($getMassageTherapyBookings->count() > 0)
                    @foreach($getMassageTherapyBookings as $getMassageTherapyBooking)
                    @php $bookExpl = explode(",",$getMassageTherapyBooking->booking_time);                                 
                    $endTime = date("H:i", strtotime("+$getMassageTherapyBooking->booking_mins minutes", strtotime($bookExpl[0])));
                    @endphp
                    <tr>
                      <td title="{{ $getMassageTherapyBooking->account_details }}"><span class="bkid"> # {{ $getMassageTherapyBooking->id }}</span>
                        
                        
                        @if($getMassageTherapyBooking->booking_date >= date("Y-m-d") && $getMassageTherapyBooking->cancel_status==0) <a href="cancel-mt-booking-{{ $getMassageTherapyBooking->id }}" title="Cancel this Booking" class="cancl-btn"><i class="fa fa-ban" aria-hidden="true" style="color:#ff0000; font-size:15px;"></i></a> @endif 
                        
                        <!--@if($getMassageTherapyBooking->cancel_status == 1)
                                             <span>Canceled</span>
                                             @endif--></td>
                      <td>{{ date("dS M Y",strtotime($getMassageTherapyBooking->booking_date)) }}</td>
                      <td>{{ $bookExpl[0] }} to  {{ $endTime }}</td>
                      <td> {{ $getMassageTherapyBooking->booking_mins }} Mins
                        @if($getMassageTherapyBooking->booking_email != '' && $getMassageTherapyBooking->booking_email != 'Null') <br>
                        Email - {{ $getMassageTherapyBooking->booking_email }}
                        @endif
                        @if($getMassageTherapyBooking->booking_note != '' && $getMassageTherapyBooking->booking_note != 'Null') <br>
                        Note - {{ $getMassageTherapyBooking->booking_note }}
                        @endif </td>
                      <td>{{ $getMassageTherapyBooking->transaction_id }}</td>
                      <td>${{ $getMassageTherapyBooking->paid_amount }}</td>
                      <td  title=" {{ $getMassageTherapyBooking->admin_notes }}"> @if($getMassageTherapyBooking->cancel_status == 1 && $getMassageTherapyBooking->admin_notes=='')
                        <span style="color:#ff0000!important; font-weight:600;">{{ 'Pending' }}</span>
                        @endif
                        
                        @if($getMassageTherapyBooking->cancel_status == 1 && $getMassageTherapyBooking->admin_notes!='')
                        <span style="color: #2bc118!important; font-weight:600;">{{ 'Refunded' }}</span>
                        
                        @endif </td>
                    </tr>
                    @endforeach
                    @else
                    <tr>
                      <td colspan="8" class="no-ord-f red">No Order Found!!</td>
                    </tr>
                    @endif
                      </tbody>
                    
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection

@push('script') 
<script>
$('#example1').DataTable({"order": [[ 0, "desc" ]]});
$('#example2').DataTable({"order": [[ 0, "desc" ]]});
	
	

function cancelPsychicBooking(pb_id) {
	if(confirm('Are you sure you want to cancel this booking ?')){
        $("#ajax_loader").show();
        $.ajax({
			url: '{{ url("/cancel-psychic-booking") }}',
            type: "POST",
            data: {'pb_id': pb_id},
            success: function (response) {
				//console.log(response);
				//return false;
                $("#ajax_loader").hide();
                if (response.status == "success") {
					$("#disp_pbs"+pb_id).hide();
					$("#disp_bs"+pb_id).html('Canceled');
                }
            }
        });
	}
}
</script> 
@endpush