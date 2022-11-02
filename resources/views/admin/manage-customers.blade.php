@extends('admin.layouts.master')
@section('title','Manage Customers')
@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Manage Customers</h1>
                </div>

                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Manage Customers</li>
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
                        <h3 class="card-title">Manage Customers</h3>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th width="10%">SL. No </th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Contact Number</th>
                                    <th width="10%">Actions</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($getCustomers as $getCustomer)
                                <tr>
                                    <td align="center">{{ $loop->iteration }}</td>
                                    <td>{{ $getCustomer->bill_first_name." ".$getCustomer->bill_last_name }}</td>
                                    <td>{{ $getCustomer->email }}</td>
                                    <td>{{ $getCustomer->bill_phone_number }}</td>
                                    <td align="center">      
                                        <a data-toggle="tooltip" title="View" href="{{ url('admin/view-customer-details/'.$getCustomer->id) }}" class="btn btn-warning btn-sm">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                        

                                        <a href="{{ URL::to('admin') }}/manage-customers/{{ $getCustomer->id }}/delete"  onClick="return confirm('Are you sure you want to delete this record ?')" class="btn btn-danger btn-sm btn-small"><i class="fa fa-trash-o" aria-hidden="true"></i></a>

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
