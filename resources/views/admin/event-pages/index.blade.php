@extends('admin.layouts.master')
@section('title','Manage Event CMS Pages')
@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Manage Event CMS Pages</h1>
                </div>

                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Manage Event CMS Pages</li>
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
                        <a class="btn btn-info float-right" style="color: #eee;" href="{{ route('event-pages.create') }}"><i class="fa fa-plus"></i> Add Page</a>
                        <h3 class="card-title">Manage Event CMS Pages</h3>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example2" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th width="10%">SL. No </th>
                                    <th width="20%">Page Name</th>
                                    <th>Description</th>
                                    <th width="10%">Actions</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($getEventPages as $getEventPage)
                                <tr>
                                    <td align="center">{{ $loop->iteration }}</td>
                                    <td>{{ $getEventPage->title }}</td>
                                    <td>{!! str_limit(strip_tags($getEventPage->description), 500, '...') !!}</td>
                                    <td align="center">
                                        <!--<a href="" class="btn-sm btn-primary" data-toggle="tooltip" title="Edit"><i class="fa fa-edit"></i></a>-->
                                        <a data-toggle="tooltip" title="Edit" href="{{ route('event-pages.edit',$getEventPage->id) }}" class="btn btn-primary btn-sm">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
                                        {!! Form::open(['method' => 'DELETE','route' => ['event-pages.destroy', $getEventPage->id],'style'=>'display:inline','onClick'=>"return confirm('Are you sure you want to delete this Page ?')"]) !!}
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
