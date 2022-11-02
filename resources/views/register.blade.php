@extends('layouts.master')
@section('title') {{ "User Register" }} @stop
@section('keywords'){{ "User Register" }} @stop
@section('description'){{ "User Register" }} @stop
@section('content')


<div class="contact-form-area ptb-70 mt-50" style="margin-bottom:50px;">
    <div class="container">
        <div class="row user-register" >   
            <div class="col-md-12">
                @include('admin.includes.msg')                
                
                <div class="col-md-12 login-title-btm">
                <div class="row">
                  <div class="col-md-4">
                  	<h4 class="">User Registration</h4>
                  </div>
                  
                  <div class="col-md-8 text-right">
                	<a href="{{ url('/user-login') }}" class="returning-customer">Returning customer click here to Login</a>
                  </div>
                   </div> 
                </div>
                
                <div class="coupon-text error" id="msgl_div" style="color: red;"></div>  
                <div class="coupon-text success" id="msg2_div" style="color: green;"></div>     
                       
                {{ Form::open(array('url' => 'user-register', 'role' => 'form','data-toggle'=>"validator", 'class' =>'', 'name' => 'frm_user_register', 'id' => 'frm_user_register','files'=>true, 'autocomplete' => 'off','onsubmit' => 'return validateCaptcha();')) }}

                <div class="form-group required col-md-6">
                    <label style="width: 100%;">First Name <span class="required">*</span></label>
                    {!! Form::text('bill_first_name',old('bill_first_name'), array('id' => 'bill_first_name','required','class'=>'form-control','placeholder'=>'First Name','autocomplete' => 'off')) !!}
                    @if ($errors->has('bill_first_name'))
                    <span class="help-block">
                        <strong>{{ $errors->first('bill_first_name') }}</strong>
                    </span>
                    @endif
                    <div class="help-block with-errors"></div>
                </div>
                <div class="form-group required col-md-6">
                    <label style="width: 100%;">Last Name <span class="required">*</span></label>
                    {!! Form::text('bill_last_name',old('bill_last_name'), array('id' => 'bill_last_name','required','class'=>'form-control','placeholder'=>'Last Name','autocomplete' => 'off')) !!}
                    @if ($errors->has('bill_last_name'))
                    <span class="help-block">
                        <strong>{{ $errors->first('bill_last_name') }}</strong>
                    </span>
                    @endif
                    <div class="help-block with-errors"></div>
                </div>
                
                <div class="clearfix"></div>
                <div class="form-group required col-md-6">
                    <label style="width: 100%;">Email <span class="required">*</span></label>
                    {!! Form::email('email',old('email'), array('id' => 'email','required','class'=>'form-control','placeholder'=>'Email','autocomplete' => 'off')) !!}
                    @if ($errors->has('email'))
                    <span class="help-block">
                        <strong>{{ $errors->first('email') }}</strong>
                    </span>
                    @endif
                    <div class="help-block with-errors"></div>                    
                </div>
                <div class="form-group required col-md-6">
                    <label style="width: 100%;">Phone <span class="required">*</span></label>
                    {!! Form::text('bill_phone_number',old('bill_phone_number'), array('maxlength'=>"12",'onkeypress'=>"return isNumberKey(event)",'id' => 'bill_phone_number','required','class'=>'form-control','placeholder'=>'Phone Number','autocomplete' => 'off')) !!}
                    @if ($errors->has('bill_phone_number'))
                    <span class="help-block">
                        <strong>{{ $errors->first('bill_phone_number') }}</strong>
                    </span>
                    @endif
                    <div class="help-block with-errors"></div>
                </div>
                <div class="clearfix"></div>
                
                
                <div class="form-group required col-md-12">
                    <label style="width: 100%;">Address <span class="required">*</span></label>
                    {!! Form::text('bill_address1',old('bill_address1'),['id' => 'bill_address1','class'=>'form-control','required','placeholder'=>'Street Address','autocomplete' => 'off']) !!}
                    @if ($errors->has('bill_address1'))
                    <span class="help-block">
                        <strong>{{ $errors->first('bill_address1') }}</strong>
                    </span>
                    @endif
                    <div class="help-block with-errors"></div>
                </div>
                <div class="form-group col-md-12">
                    {!! Form::text('bill_address2',old('bill_address2'),['id' => 'bill_address2','class'=>'form-control','autocomplete' => 'off','placeholder'=>'Apartment Number']) !!}
                    @if ($errors->has('bill_address2'))
                    <span class="help-block">
                    <strong>{{ $errors->first('bill_address2') }}</strong>
                    </span>
                    @endif
                    <div class="help-block with-errors"></div>
                </div>
                <div class="clearfix"></div>
                <div class="form-group required col-md-6">
                    <label style="width:100%;">Town / City  <span class="required">*</span></label>
                    {!! Form::text('bill_city',old('bill_city'),  ['id' => 'bill_city','required', 'class'=>'form-control', 'placeholder' => 'Town / City', 'autocomplete' => 'off']) !!}
                    @if ($errors->has('bill_city'))
                    <span class="help-block">
                        <strong>{{ $errors->first('bill_city') }}</strong>
                    </span>
                    @endif
                    <div class="help-block with-errors"></div>
                </div>
                <div class="form-group required col-md-6">
                    <label style="width:100%;">Postcode / Zip  <span class="required">*</span></label>
                    {!! Form::text('bill_post_code',old('bill_post_code'),  ['id' => 'bill_post_code','required', 'class'=>'form-control', 'placeholder' => 'Postcode / Zip', 'autocomplete' => 'off']) !!}
                    @if ($errors->has('bill_post_code'))
                    <span class="help-block">
                        <strong>{{ $errors->first('bill_post_code') }}</strong>
                    </span>
                    @endif
                    <div class="help-block with-errors"></div>
                </div>
                <div class="clearfix"></div>
                <div class="form-group required col-md-6">
                    <label style="width:100%;">State  <span class="required">*</span></label>
                    {!! Form::text('bill_state',old('bill_state'),  ['id' => 'bill_state','required', 'class'=>'form-control', 'placeholder' => 'State', 'autocomplete' => 'off']) !!}
                    @if ($errors->has('bill_state'))
                    <span class="help-block">
                        <strong>{{ $errors->first('bill_state') }}</strong>
                    </span>
                    @endif
                    <div class="help-block with-errors"></div>
                </div>
                <div class="form-group required col-md-6">
                    <label style="width:100%;">Country  <span class="required">*</span></label>
                    {!! Form::text('bill_country',old('bill_country'),  ['id' => 'bill_country','required', 'class'=>'form-control', 'placeholder' => 'Country', 'autocomplete' => 'off']) !!}
                    @if ($errors->has('bill_country'))
                    <span class="help-block">
                        <strong>{{ $errors->first('bill_country') }}</strong>
                    </span>
                    @endif
                    <div class="help-block with-errors"></div>
                </div>
                <div class="clearfix"></div>
                <div class="form-group required col-md-6">
                    <label style="width:100%;">Password  <span class="required">*</span></label>
                    {!! Form::password('user_password',  array('id' => 'user_password','required', 'class'=>'form-control', 'placeholder' => 'Password', 'autocomplete' => 'off')) !!}
                    @if ($errors->has('user_password'))
                    <span class="help-block">
                        <strong>{{ $errors->first('user_password') }}</strong>
                    </span>
                    @endif
                    <div class="help-block with-errors"></div>
                </div>
                <div class="form-group required col-md-6">
                    <label style="width:100%;">Confirm Password  <span class="required">*</span></label>
                    {!! Form::password('confirm_password',  array('data-match'=>"#user_password",'data-match-error'=>"Whoops, these don't match",'id' => 'confirm_password','required', 'class'=>'form-control', 'placeholder' => 'Confirm Password', 'autocomplete' => 'off')) !!}
                    @if ($errors->has('confirm_password'))
                    <span class="help-block">
                        <strong>{{ $errors->first('confirm_password') }}</strong>
                    </span>
                    @endif
                    <div class="help-block with-errors"></div>
                </div>
                <div class="clearfix"></div>
                
                <div class="form-group required col-md-6">
                    <script src='https://www.google.com/recaptcha/api.js'></script>

                    <div class="col-xs-12" style="padding-top:0px;  padding-left:0px;">
                    <input type="hidden" name="cr" id="cr" value="0"/>
                    <div class="g-recaptcha" data-sitekey="6LenEKUUAAAAAGjkRoEwCb3kezBY3Ni2medTIxWG" data-callback="captchaCallback"></div>
                    <div class="help-block" id="cap_error" style="color:#a94442;"></div>
                </div>

               

                <div class="col-md-12" style="margin-top:20px;">
                <div class="row">
                    <p class="form-row">
                        {{ Form::submit('Submit', ['class' => 'btn btn-primary colorb mt-0  wid100']) }}                  
                    </p>
                   </div> 
                </div>
                
               
                
                {{ Form::close() }}
            </div> 
        </div>
    </div>
</div>
<div id="ajax_loader" class="loader">
    <span style="position:relative; top:50%;">        
        <div class="spinner"></div>
    </span>
</div>

<script>

  
function captchaCallback(response) {
    $('#cr').val(response);
}
function validateCaptcha() {
    if($('#cr').val() =='0'){
      $('#cap_error').html('This field is required.');
      return false;
    }
}
</script>

@endsection
