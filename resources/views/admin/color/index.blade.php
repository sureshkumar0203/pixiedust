@extends('admin.layouts.master')
@section('title','Manage Color')
@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Manage Color</h1>
                </div>

                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Manage Color</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-12">        
                @include('admin.includes.msg')
                <div class="card">
                    <div class="card-header">
                        <a class="btn btn-info float-right" style="color: #eee;" href="{{ route('color.create') }}"><i class="fa fa-plus"></i> Add Color</a>
                        <h3 class="card-title">Manage Color</h3>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example2" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th width="10%">SL. No </th>
                                    <th>Color</th>
                                    <th>Color Code</th>
                                    <th width="10%">Actions</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($color_data as $color_res)
                                <tr>
                                    <td align="center">{{ $loop->iteration }}</td>
                                    <td>{{ $color_res->color }}</td>
                                    <td>
                                        <span style="background:#<?php echo $color_res->color_code; ?>; height:20px; width:20px; border:1px solid #ccc; display:inline-block;"></span>

                                        #{{ strtoupper($color_res->color_code) }}
                                        </td>
                                    <td align="center">                                      
                                        <a data-toggle="tooltip" title="Edit" href="{{ route('color.edit',$color_res->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o"></i></a>

                                        {!! Form::open(['method' => 'DELETE','route' => ['color.destroy', $color_res->id],'style'=>'display:inline','onClick'=>"return confirm('Are you sure you want to delete this record ?')"]) !!}

                                        {!! Form::button('<i class="fa fa-trash-o" aria-hidden="true"></i>', ['class' => 'btn btn-danger btn-sm btn-small','type'=>'submit']) !!}

                                        {!! Form::close() !!}

                                    </td>                                    
                                </tr>
                                @endforeach
                                </tfoot>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>

@stop
