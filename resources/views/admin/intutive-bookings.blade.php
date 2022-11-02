@extends('admin.layouts.master')
@section('title','Intuitive Reading Bookings')
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
                    <h1>Intuitive Reading Bookings</h1>
                </div>

                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Intuitive Reading Bookings</li>
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
                        <h3 class="card-title">Intuitive Reading Bookings</h3>

                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th align="center">SL. No </th>
                                    <th>Booking ID </th>
                                    <th>Name</th>
                                    <th>Booking Date</th>
                                    <th>Booking Time</th>
                                    <th>Booking Time duration</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($getIntutiveBookings as $getIntutiveBooking)
                                @php 
                                $bookExpl = explode(",",$getIntutiveBooking->booking_time);
                                $endTime = date("H:i", strtotime("+$getIntutiveBooking->booking_mins minutes", strtotime($bookExpl[0])));
                                @endphp
                                <tr>
                                    <td>{{ $loop->iteration }}</td>

                                    <td>#
                                     {{ $getIntutiveBooking->id }}
                                    
                                    @if($getIntutiveBooking->cancel_status == 0)
                                    <a href="javascript:void(0)" title="Cancel this Booking" onClick="cancelPsychicBooking({{ $getIntutiveBooking->id }});" id="disp_pbs{{$getIntutiveBooking->id}}" class="cancl-btn">
                                    <i class="fa fa-ban" aria-hidden="true" style="color:#ff0000; font-size:15px;"></i></a> 
                                    @endif

                                    @if($getIntutiveBooking->cancel_status == 1)
                                      <span class="can-text">Canceled</span>
                                    @endif

                                    <span id="disp_bs{{$getIntutiveBooking->id}}"></span>



                                    </td>
                                    <td>{{ $getIntutiveBooking->user_registrations->bill_first_name . " " . $getIntutiveBooking->user_registrations->bill_last_name  }} <span class="phone">{{ $getIntutiveBooking->user_registrations->bill_phone_number }}</span></td>
                                    <td>{{ date("dS M Y",strtotime($getIntutiveBooking->booking_date)) }}</td>
                                    <td>{{ $bookExpl[0] }} to  {{ $endTime }}</td>
                                    <td>{{ $getIntutiveBooking->booking_mins }} Mins @if($getIntutiveBooking->user_id == 1) <span class="symbol">By Admin</span> @endif</td>                                                                      
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


@push('script') 
<script>
function cancelPsychicBooking(pb_id) {
    if(confirm('Are you sure you want to cancel this booking ?')){
        $("#ajax_loader").show();
        $.ajax({
            url: '{{ url("/cancel-psychic-booking") }}',
            type: "POST",
            data: {'pb_id': pb_id},
            success: function (response) {
                //console.log(response);
                //return false;
                $("#ajax_loader").hide();
                if (response.status == "success") {
                    $("#disp_pbs"+pb_id).hide();
                    $("#disp_bs"+pb_id).html('Canceled');
                    $("#disp_bs"+pb_id).addClass('can-text');
                }
            }
        });
    }
}
</script> 
@endpush
@stop
