@extends('admin.layouts.master')
@section('title','Edit Sub Admin')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Edit Sub Admin</h1> 
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a>
                        </li>
                        <li class="breadcrumb-item active">Edit Sub Admin</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="card card-primary">
                        @include('admin.includes.msg')
                        <div class="card-header">
                            <h3 class="card-title">Edit Sub Admin</h3> 
                        </div>
                        {!! Form::model($sub_adm_data, ['method' => 'PATCH','route' => ['subadmin.update', $sub_adm_data->id],'data-toggle'=>"validator", 'role' => 'form','files'=>true, 'autocomplete' => 'off']) !!}
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="name">Name</label> 
                                    {!! Form::text('name',old('name'), ['id' => 'name','required', 'class'=>'form-control']) !!} 
                                    @if ($errors->has('name')) 
                                    <span class="help-block"><strong>{{ $errors->first('name') }}</strong> </span> 
                                    @endif
                                    <div class="help-block with-errors"></div>
                                </div>
                                
                                <div class="form-group">
                                    <label for="email">Email</label> 
                                    {!! Form::text('email',old('email'), ['id' => 'email','required', 'class'=>'form-control']) !!} 
                                    @if ($errors->has('email')) 
                                    <span class="help-block"><strong>{{ $errors->first('email') }}</strong> </span> 
                                    @endif
                                    <div class="help-block with-errors"></div>
                                </div>



                                <div class="form-group">
                                    <label for="contact_no">Contact No.</label> 
                                    {!! Form::text('contact_no',old('contact_no'), ['id' => 'contact_no','required', 'class'=>'form-control']) !!} 
                                    @if ($errors->has('contact_no')) 
                                    <span class="help-block"><strong>{{ $errors->first('contact_no') }}</strong> </span> 
                                    @endif
                                    <div class="help-block with-errors"></div>
                                </div>

                                <div class="form-group">
                                    <label for="address">Address</label> 
                                    {!! Form::text('address',old('address'),['id' => 'address','required', 'class'=>'form-control']) !!} 
                                    @if ($errors->has('address')) 
                                    <span class="help-block"><strong>{{ $errors->first('address') }}</strong> </span> 
                                    @endif
                                    <div class="help-block with-errors"></div>
                                </div>
                                


                                <div class="card-footer">
                                    {{ Form::submit('Submit', ['class' => 'btn btn-success']) }} 
                                    <a href="{{ url('admin/subadmin') }}" class="btn btn-warning">Back</a> 
                                </div>                          
                            </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
@stop

@push('script')
<script src="{{ asset('public/admin/plugins/datepicker/jquery-ui.js') }}"></script>
<script type="text/javascript">
    $(function () {
        $(".start_date").datepicker({
            dateFormat: 'yy-mm-dd',
            changeMonth: true,
            changeYear: true,
            numberOfMonths: 1,
            minDate: new Date(),
            showWeek: true,
            onClose: function (selectedDate) {
                $(".end_date").datepicker("option", "minDate", selectedDate);
            }
        });
    });
    $(function () {
        $(".end_date").datepicker({
            dateFormat: 'yy-mm-dd',
            changeMonth: true,
            changeYear: true,
            numberOfMonths: 1,
            minDate: new Date(),
            showWeek: true,
        });
    });
</script>
@endpush