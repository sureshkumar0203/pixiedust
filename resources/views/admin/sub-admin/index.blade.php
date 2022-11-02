@extends('admin.layouts.master')
@section('title','Manage Sub Admins')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Manage Sub Admin</h1> </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Manage Sub Admins</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-12">
                @include('admin.includes.msg')
                <div class="card">
                    <div class="card-header"> <a class="btn btn-info float-right" style="color: #eee;" href="{{ route('subadmin.create') }}"><i class="fa fa-plus"></i> Add Sub Admin</a>
                        <h3 class="card-title">Manage Sub Admins</h3> </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>SL. No </th>
                                    <th>Name</th>
                                    <th>email</th>
                                    <th>Contact No.</th>
                                    <th>Address</th>                                    
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody> @foreach($sub_adm_data as $sub_adm_res)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $sub_adm_res->name }}</td>
                                    <td>{{ $sub_adm_res->email }}</td>
                                    <td>{{ $sub_adm_res->contact_no }}</td>
                                    <td>{{ $sub_adm_res->address }} </td>
                                    <td>
                                        <!--<a href="" class="btn-sm btn-primary" data-toggle="tooltip" title="Edit"><i class="fa fa-edit"></i></a>-->
                                        <a data-toggle="tooltip" title="Edit" href="{{ route('subadmin.edit',$sub_adm_res->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o"></i> </a> 

                                        @if($sub_adm_res->active == 1)
                                        <a data-toggle="tooltip" title="Active" onClick="return confirm('Are you sure you want to block this subadmin ?')" href="{{ url('block/'.$sub_adm_res->id) }}" class="btn btn-success btn-sm"> <i class="fa fa-check-circle"></i> </a> 
                                        @else
                                        <a data-toggle="tooltip" title="Blocked" onClick="return confirm('Are you sure you want to Active this subadmin ?')" href="{{ url('active/'.$sub_adm_res->id) }}" class="btn btn-danger btn-sm"> <i class="fa fa-times-circle"></i> </a> 
                                        @endif



                                        {!! Form::open(['method' => 'DELETE','route' => ['subadmin.destroy', $sub_adm_res->id],'style'=>'display:inline','onClick'=>"return confirm('Are you sure you want to delete this subadmin ?')"]) !!} {!! Form::button('<i class="fa fa-trash-o" aria-hidden="true"></i>', ['class' => 'btn btn-danger btn-sm btn-small','type'=>'submit']) !!} {!! Form::close() !!} </td>
                                </tr> 

                                @endforeach 
                                </tfoot>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>@stop