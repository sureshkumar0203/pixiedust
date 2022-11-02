@extends('admin.layouts.master')

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Dashboard</h1>
                </div><!-- /.col -->
                <!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <!-- Small boxes (Stat box) -->
            <div class="row">
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-info">
                        <div class="inner">
                            <h3>{{ $getTotalOrdersCount }}</h3>

                            <p>New Orders</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="{{ url('admin/manage-orders') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-success">
                        <div class="inner">
                            <h3>{{ $getTotalMassageTherapyBookingCount }}<sup style="font-size: 20px"></sup></h3>

                            <p>Massage Therapy Bookings</p>
                        </div>
                        <div class="icon">
                            <i class="icon ion-ios-body"></i>
                        </div>
                        <a href="{{ url('admin/massage-therapy-bookings') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                        <div class="inner">
                            <h3>{{ $getTotalUsersCount }}</h3>

                            <p>User Registrations</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <a href="{{ url('admin/manage-customers') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-danger">
                        <div class="inner">
                            <h3>{{ $getTotalPsychicBookingCount }}</h3>

                            <p>Psychic Reading Booking</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-android-hand"></i>
                        </div>
                        <a href="{{ url('admin/intutive-bookings') }}" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
            </div>

            <div class="row">

                <div class="col-lg-8">   

                    <div class="card">
                        <div class="card-header border-transparent">
                            <h3 class="card-title">Latest Orders</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body p-0">
                            <div class="table-responsive">
                                <table class="table m-0">
                                    <thead>
                                        <tr>
                                            <th>Order ID</th>
                                            <th>Item</th>
                                            <th>Status</th>
                                            <th>Total Cost</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @if($getLatestOrders->count() > 0)
                                        @foreach($getLatestOrders as $getLatestOrder)
                                        <tr>
                                            <td><a href="{{ url('/admin/view-order-details/'.$getLatestOrder->id) }}">{{ $getLatestOrder->id }}</a></td>
                                            <td>{{ $getLatestOrder->orderItems[0]->products->name }}</td>
                                            <td><span class="badge badge-{{ ($getLatestOrder->order_status == 1)? 'success' : 'danger' }}">{{ ($getLatestOrder->order_status == 1)? "Shipped" : "Not Shipped" }}</span></td>
                                            <td>
                                                <div class="sparkbar" data-color="#00a65a" data-height="20">${{ $getLatestOrder->total_amount }}</div>
                                            </td>
                                        </tr> 
                                        @endforeach
                                        @else
                                        <tr><td colspan="2" style="color: red;text-align: center;">No order found !!!</td></tr>
                                        @endif

                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.card-body -->
                        @if($getLatestOrders->count() > 0)
                        <div class="card-footer clearfix">                    
                            <a href="{{ url('admin/manage-orders') }}" class="btn btn-sm btn-secondary float-right">View All Orders</a>
                        </div>
                        @endif
                    </div>
                </div>

                <div class="col-lg-4"> 

                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Recently Added Products</h3>

                        </div>
                        <!-- /.card-header -->
                        <div class="card-body p-0">
                            <ul class="products-list product-list-in-card pl-2 pr-2">
                                @foreach($getLatestProducts as $getLatestProduct)
                                <li class="item">
                                    <div class="product-img">
                                        <img src="{{ asset('public/images/products/'.$getLatestProduct->image) }}" alt="Product Image" class="img-size-50">
                                    </div>
                                    <div class="product-info">
                                        <a href="javascript:void(0)" class="product-title">{{ $getLatestProduct->name }}
                                            <span class="badge badge-warning float-right">${{ ($getLatestProduct->discount_price) ? $getLatestProduct->discount_price :$getLatestProduct->price }}</span></a>
                                    </div>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer text-center">
                            <a href="{{ route('products.index') }}" class="uppercase">View All Products</a>
                        </div>
                        <!-- /.card-footer -->
                    </div> 
                </div>   
            </div>

        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
@endsection
