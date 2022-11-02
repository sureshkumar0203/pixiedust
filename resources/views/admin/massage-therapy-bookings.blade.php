@extends('admin.layouts.master')
@section('title','Massage Therapy Bookings')
@section('content')
<style type="text/css">
span.symbol {
    display: inline-block;
    background: #007bff;
    padding: 0px 8px;
    color: #fff;
    line-height: 23px;
    text-align: center;
}
span.phone {
    display: inherit;
    background: #f39d00;
    color: #fff;
    padding: 0px 5px;
    font-size: 15px;
    line-height: 17px;
}
</style>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Massage Therapy Bookings</h1>
                </div>

                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Massage Therapy Bookings</li>
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
                        <h3 class="card-title">Massage Therapy Bookings</h3>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th align="center">SL. No </th>
                                    <th width="20%"> Booking ID  </th>
                                    <th>Booking Information</th>
                                    <th>Time & Duration </th>
                                    <th>Transaction Information</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($getMassageTherapyBookings as $getMassageTherapyBooking)
                                @php $bookExpl = explode(",",$getMassageTherapyBooking->booking_time);                                 
                                $endTime = date("H:i", strtotime("+$getMassageTherapyBooking->booking_mins minutes", strtotime($bookExpl[0])));
                                @endphp
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td># {{ $getMassageTherapyBooking->id }} 
                                     <br>

                                     @if($getMassageTherapyBooking->admin_notes==NULL)

                                     <a href="{{ url('admin/confirm-cancel-booking/'.$getMassageTherapyBooking->id) }}" title="Offline Cancel" class="cancl-btn"><i class="fa fa-ban" aria-hidden="true" style="color:#ff0000; font-size:15px;"></i></a>
                                     @else
                                     <span class="can-text">Canceled</span>
                                     @endif

                                    </td>

                                    <td>
                                    Name : {{ $getMassageTherapyBooking->user_registrations->bill_first_name . " " . $getMassageTherapyBooking->user_registrations->bill_last_name  }} <br>
                                    
                                    <span class="phone" style="display:inline-block;">Contact No. : {{ $getMassageTherapyBooking->user_registrations->bill_phone_number }}</span><br>
                                    
                                    Booking Date : {{ date("dS M Y",strtotime($getMassageTherapyBooking->booking_date)) }}
                                    
                                    </td>
                                    <td>
                                    {{ $bookExpl[0] }} to  {{ $endTime }}<br>
                                    {{ $getMassageTherapyBooking->booking_mins }} Mins
                                    </td>
                                                                                                          
                                    <td> 
                                    $ {{ $getMassageTherapyBooking->paid_amount }}<br>
                                    <span class="symbol">{{ $getMassageTherapyBooking->transaction_id }}
                                    </span>
                                    </td>
                                    <td class="text-center">
                                    @if($getMassageTherapyBooking->cancel_status==1)
                                    <a data-toggle="tooltip" title="Booking Cancel Request" href="{{ url('admin/confirm-cancel-booking/'.$getMassageTherapyBooking->id) }}" class="btn btn-warning btn-sm" style="padding:0px 5px;"><i class="fa fa-eye"></i></a>
                                    <br>
                                    @endif


                                    
                                    @if($getMassageTherapyBooking->admin_notes!='')
                                    <span style="font-size:12px;">{{ $getMassageTherapyBooking->admin_notes }}</span>
                                    @endif
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
