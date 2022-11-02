@extends('admin.layouts.master')
@section('title', 'Booking Details')
@section('content')

@php 
$bookExpl = explode(",",$cb_details->booking_time);                                 
$endTime = date("H:i", strtotime("+$cb_details->booking_mins minutes", strtotime($bookExpl[0])));
@endphp
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Booking Details</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{ url('/admin') }}">Home</a></li>
            <li class="breadcrumb-item active">Booking Details</li>
          </ol>
        </div>
      </div>
    </div>
    <!-- /.container-fluid --> 
  </section>
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="invoice p-3 mb-3">
            <div class="row invoice-info">
              <div class="col-sm-6 invoice-col">
                <address>
                <b>Name</b> : {{ $cb_details->user_registrations->bill_first_name . " " . $cb_details->user_registrations->bill_last_name }} <br>
                <b>Booking Date</b> : {{ date("dS M Y",strtotime($cb_details->booking_date)) }}<br>
                <b>Time</b> : {{ $bookExpl[0] }} to  {{ $endTime }}<br>
                <b>Time Duration</b> : {{ $cb_details->booking_mins }} Mins<br>
                <b>Email</b> : 
                @if($cb_details->user_id==1)
                {{ $cb_details->booking_email }}
                @else
                {{ $cb_details->user_registrations->email }}
                @endif <br>
                <b>Phone :</b> {{ $cb_details->user_registrations->bill_phone_number }} <br>
                </address>
              </div>
              <div class="col-sm-6 invoice-col"> <b>Booking ID:</b> {{ $cb_details->id }}<br>
                <b>Transaction ID:</b> {{ $cb_details->transaction_id }}<br>
                <b>Amount:</b> $ {{ $cb_details->paid_amount }}<br>
                <br>
                <br>
                @if($cb_details->user_id==1) <b>Booked :</b> {{ $cb_details->transaction_id }}
                @endif </div>
            </div>
            
            <b>Account Details</b> {{ $cb_details->account_details }}
            
            <div class="row">
              <div class="col-6"> <span id="succ_msg" style="color: green;padding-left: 24px;"></span>
                <div id="ajax_loader_admin" style="display: none;" class="admin_view_order"><img src="{{ asset('public/images/ajax-loader.gif') }}" /></div>
                {{ Form::open(array('url' => 'admin/update-cb-status', 'role' => 'form', 'class' =>'form-horizontal row-border half-block', 'name' => 'frm_cb', 'id' => 'frm_cb','files'=>true, 'autocomplete' => 'off')) }} 
            
            {!! Form::hidden('booking_id',$cb_details->id, ['id' => 'booking_id']) !!}

                <div class="card-body" style="padding-left:0px;">
                  <div class="form-group">
                    <label for="meta_description">User Name,Bank Name,Branch Name,A/C No.,IFSC Code* </label>
                    {!! Form::textarea('ac_details',$cb_details->account_details,['rows'=>3,'id' => 'ac_details','required', 'class'=>'form-control']) !!}
                    @if ($errors->has('ac_details')) <span class="help-block"> <strong>{{ $errors->first('ac_details') }}</strong> </span> @endif
                    <div class="help-block with-errors"></div>
                  </div>
                </div>


                <div class="card-body" style="padding-left:0px;">
                  <div class="form-group">
                    <label for="meta_description">Transfer Confirmation Notes</label>
                    {!! Form::textarea('admin_notes',$cb_details->admin_notes,['rows'=>3,'id' => 'admin_notes','required', 'class'=>'form-control']) !!}
                    @if ($errors->has('admin_notes')) <span class="help-block"> <strong>{{ $errors->first('admin_notes') }}</strong> </span> @endif
                    <div class="help-block with-errors"></div>
                  </div>
                </div>
                
                <div class="card-footer">
                  {{ Form::submit('Update', ['class' => 'btn btn-success','id'=>'updt_btn']) }}
                  <a href="{{ url('admin/massage-therapy-bookings') }}" class="btn btn-warning">Back</a> 
                </div>
                                
                                
                {!! Form::close() !!} </div>
            </div>
          </div>
          <!-- /.invoice --> 
        </div>
        <!-- /.col --> 
      </div>
      <!-- /.row --> 
    </div>
    <!-- /.container-fluid --> 
  </section>
  <!-- /.content --> 
</div>
@endsection 