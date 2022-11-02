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

                <div class="ac-block" >
                    <span>First Name : {{ $getUserDetails->bill_first_name }}</span>
                    <span>Last Name : {{ $getUserDetails->bill_last_name }}</span>      
                    <span>Email Address : {{ $getUserDetails->email }}</span>
                    <span>Phone : {{ $getUserDetails->bill_phone_number }}</span>
                    <span>Address : {{ $getUserDetails->bill_address1 }}</span>
                </div>
               </div> 

            <div class="col-lg-8 col-md-8">
                  {{ Form::open(array('url' => 'update-ac-details', 'role' => 'form',  'name' => 'frm_cancel', 'id' => 'frm_cancel','files'=>true, 'autocomplete' => 'off')) }}      
               
                <div class="col-lg-12 col-md-12">
                    <div class="checkbox-form">
                        <h3 class="pdl10" style="background:none; color:#fff; padding-left:0px!important;">Provide Bank Details <strong>#{{ $booking_id }}</strong>
                        </h3>
                        <div class="row">
                            @include('admin.includes.msg')
                            
                             {{ Form::open(array('url' => 'update-user-profile', 'role' => 'form',  'name' => 'edit_profile', 'id' => 'edit_profile','files'=>true, 'autocomplete' => 'off')) }}
                             
                             
                           
                             {!! Form::hidden('booking_id',$booking_id,array('id' => 'booking_id')) !!}
                             
                            <div class="col-md-12">
                                <div class="checkout-form-list">
                                    <label style="color:#FFF; margin-bottom:10px;">Provide your Name,Bank Name,Branch Name,A/C No.,IFSC Code<span class="required">*</span></label>
                                     {!! Form::textarea('ac_details','',['id' => 'ac_details','required','rows'=>3, 'class'=>'form-control', 'placeholder'=>'']) !!}
                                     
                                    @if ($errors->has('ac_details'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('ac_details') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>
                            
                            <div class="col-md-12">
                            {{ Form::submit('Save', array('class' => 'view-detail-btn update-btn sv pull-left padtpbtmlr10')) }} 
                            
                            <a href="{{ url('my-bookings') }}" class="btn btn-large btn-subscribe bck-btn"> Back</a>
                             
                            </div>          
                        </div>
                        {!! Form::close() !!}
                        
                    </div>
                </div>
                {{ Form::close() }}    
            </div>
        </div>
    </div>
</div>
@endsection

@push('script')
@endpush