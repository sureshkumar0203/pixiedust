@extends('admin.layouts.master')
@section('title','Add Size')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Add Size</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Add Size</li>
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
                            <h3 class="card-title">Add Size</h3>
                        </div>               
                        {{ Form::open(['route' => 'size.store','data-toggle'=>"validator", 'role' => 'form', 'class' =>'validate', 'name' => 'add-size', 'id' => 'add-size','files'=>true, 'autocomplete' => 'off']) }}

                        <div class="card-body">
                            <div class="form-group">                                    
                                <label for="name">Size</label>                                    
                                {!! Form::text('size',old('size'), ['id' => 'size','required', 'class'=>'form-control']) !!}
                                @if ($errors->has('size'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('size') }}</strong>
                                </span>
                                @endif
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            {{ Form::submit('Submit', ['class' => 'btn btn-success']) }}
                            <a href="{{ url('admin/size') }}" class="btn btn-warning">Back</a> 
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