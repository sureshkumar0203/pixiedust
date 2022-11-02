@extends('admin.layouts.master')
@section('title','Manage Psychic Off Days')
@section('content')
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Manage Psychic Off Days</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
            <li class="breadcrumb-item active">Manage Psychic Off Days</li>
          </ol>
        </div>
      </div>
    </div>
    <!-- /.container-fluid --> 
  </section>
  
  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-12"> @include('admin.includes.msg')
        <div class="card">
          <div class="card-header"> <a class="btn btn-info float-right" style="color: #eee;" href="{{ route('psychic-offdays.create') }}"><i class="fa fa-plus"></i> Add Psychic Off Days</a>
            <h3 class="card-title">Manage Psychic Off Days</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>SL. No </th>
                  <th>Date</th>
                  <th>Off Times</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
              
              @foreach($psychic_offdays as $po_res)
              @php
              $time_ary = explode(",",$po_res->booking_time);
              $time_slot_ary = [];
              foreach($time_ary as $time_val){
                $off_time_slot_val = date("g:i A", strtotime($time_val));
                array_push($time_slot_ary,$off_time_slot_val);
              }
              $off_time_slot=join(',',$time_slot_ary);
              @endphp
              <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ date("dS M Y",strtotime($po_res->booking_date)) }}</td>
                <td>{{ $off_time_slot }}</td>
                <td>
                {!! Form::open(['method' => 'DELETE','route' => ['psychic-offdays.destroy', $po_res->id],'style'=>'display:inline','onClick'=>"return confirm('Are you sure you want to delete this record ?')"]) !!}
                
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