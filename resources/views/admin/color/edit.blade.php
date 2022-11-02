@extends('admin.layouts.master')
@section('title','Edit Color')
@section('content')


<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Edit Color</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Edit Color</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
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
                            <h3 class="card-title">Edit Color</h3>
                        </div>

                                    
                        {!! Form::model($color_data, ['method' => 'PATCH','route' => ['color.update', $color_data->id],'data-toggle'=>"validator", 'role' => 'form','files'=>true, 'autocomplete' => 'off']) !!}
                        <div class="card-body">

                            <div class="form-group">                                    
                                <label for="name">Color Name</label>                                    
                                {!! Form::text('color',old('color',$color_data->color), ['id' => 'color','required', 'class'=>'form-control']) !!}
                                @if ($errors->has('color'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('color') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>

                            <div class="form-group">                                    
                                <label for="image">Color Code</label>                                    
                                 {!! Form::text('color_code',old('color_code',$color_data->color_code), ['id' => 'color_code','required', 'class'=>'form-control jscolor']) !!}

                                @if ($errors->has('color_code'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('color_code') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>  
                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            {{ Form::submit('Update', ['class' => 'btn btn-success']) }}
                            <a href="{{ url('admin/color') }}" class="btn btn-warning">Back</a> 
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
@stop
@push('colorscript')
<script src="{{ asset('public/js/jscolor.js') }}">
@endpush