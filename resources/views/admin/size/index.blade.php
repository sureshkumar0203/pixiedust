@extends('admin.layouts.master')
@section('title','Manage Size')
@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Manage Size</h1>
                </div>

                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Manage Size</li>
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
                        <a class="btn btn-info float-right" style="color: #eee;" href="{{ route('size.create') }}"><i class="fa fa-plus"></i> Add Size</a>
                        <h3 class="card-title">Manage Size</h3>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th width="10%">SL. No </th>
                                    <th>Size</th>
                                    <th width="10%">Actions</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($size_data as $size_res)
                                <tr>
                                    <td align="center">{{ $loop->iteration }}</td>
                                    <td>{{ $size_res->size }}</td>
                                    <td align="center">                                      
                                        <a data-toggle="tooltip" title="Edit" href="{{ route('size.edit',$size_res->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o"></i></a>

                                        {!! Form::open(['method' => 'DELETE','route' => ['size.destroy', $size_res->id],'style'=>'display:inline','onClick'=>"return confirm('Are you sure you want to delete this record ?')"]) !!}

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
