@extends('admin.layouts.master')
@section('title','Manage SEO Pages')
@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Manage SEO Pages</h1>
                </div>

                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Manage SEO Pages</li>
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
                        <h3 class="card-title">Manage SEO Pages</h3>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>SL. No </th>
                                    <th>Title</th>
                                    <th>Meta Title</th>
                                    <th>Meta Keywords</th>                                    
                                    <th>Actions</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($getSeoPages as $getSeoPage)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $getSeoPage->page_name }}</td>
                                    <td>{{ $getSeoPage->meta_title }}</td>
                                    <td>{!! $getSeoPage->meta_keywords !!}</td>
                                    <td>
                                        <a data-toggle="tooltip" title="Edit" href="{{ route('seo.edit',$getSeoPage->id) }}" class="btn btn-primary btn-sm">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </a>
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
