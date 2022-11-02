@extends('layouts.master')
@section('title') {{ "Oreder Details" }} @stop
@section('keywords'){{ "Oreder Details" }} @stop
@section('description'){{ "Oreder Details" }} @stop
@section('content')

<div class="checkout-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <h5 class="ac-head" style="border-bottom:solid 1px #fff;">My Account & Delivery Details <a href="{{ url('/edit-profile') }}" class="ac-edit">EDIT PROFILE</a></h5>      
                <h5 class="ac-head"><i class="fa fa-user" aria-hidden="true"></i> My Account</h5> 
                <div class="ac-block" >
                    <span>First Name : {{ $getOrderDetails->bill_first_name }}</span>
                    <span>Last Name : {{ $getOrderDetails->bill_last_name }}</span>      
                    <span>Email Address : {{ $getOrderDetails->email }}</span>
                    <span>Phone : {{ $getOrderDetails->bill_phone_number }}</span>
                </div>

                <h5 class="ac-head"><i class="fa fa-file-text" aria-hidden="true"></i> Order Details</h5>
                <div class="ac-block" >
                    <span>Order ID :  {{ $getOrderDetails->id }} </span>

                    <span>Transaction ID :  {{ $getOrderDetails->transaction_id }} </span>

                    <span>Item Total : $ {{ number_format($getOrderDetails->orderItems->sum('total_price'),2) }}
                    </span>

                    @if($getOrderDetails->discount_amount > 0)
                    <span>Discount ({{ $getOrderDetails->discount_percentage }} %) : $ {{ $getOrderDetails->discount_amount }}</span>
                    @endif

                    @if($getOrderDetails->tax_amount > 0)
                    <span>Tax ({{ $getOrderDetails->tax_per }} %) : $ {{ $getOrderDetails->tax_amount }}</span>
                    @endif

                    <span>Shipping :  $ {{ $getOrderDetails->shipping_amount }}</span>

                    <span>Order Total : $ {{ $getOrderDetails->total_amount }}</span>
                </div>

                <h5 class="ac-head"><i class="fa fa-file-text" aria-hidden="true"></i> Billing Address</h5>
                <div class="ac-block" >
                    <span>{{ $getOrderDetails->bill_address1 }} {{ $getOrderDetails->bill_address2 }}</span>
                    <span>City : {{ $getOrderDetails->bill_city }}</span>
                    <span> Post Code : {{ $getOrderDetails->bill_post_code }}</span>
                    <span>State : {{ $getOrderDetails->bill_state }} </span>
                    <span>Country : {{ $getOrderDetails->bill_country }}</span>
                </div>

                <h5 class="ac-head"><i class="fa fa-truck" aria-hidden="true"></i> Delivery Address</h5>
                <div class="ac-block" >
                    <span>Full Name : {{ $getOrderDetails->ship_full_name }}</span>                    
                    <span>Phone : {{ $getOrderDetails->ship_phone_number }}</span>
                    <span>{{ $getOrderDetails->ship_address1 }} {{ $getOrderDetails->ship_address2 }}</span>
                    <span>City : {{ $getOrderDetails->ship_city }}</span>
                    <span> Post Code : {{ $getOrderDetails->ship_post_code }}</span>
                    <span>State : {{ $getOrderDetails->ship_state }} </span>
                    <span>Country : {{ $getOrderDetails->ship_country }}</span>
                </div>
            </div> 
            <div class="col-lg-8 col-md-8">
                <div class="order-history-block">
                    <h5 class="ac-head">Item information <span style="float: right;"> <a href="{{ url('/my-account') }}" style="color:#fff;"><i class="fa fa-chevron-left"></i> Back</a> </span></h5>
                    <table cellpadding="2" cellspacing="2" class="order-history table-striped mb-50 item-info" id="no-more-tables">                 
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Product Details</th>
                                <th>Quantity</th>
                                <th>Unit Price</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($getOrderItems as $getOrderItem)
                            <tr>
                                <td><img src="{{ asset('public/images/products/'.$getOrderItem->products->image) }}" width="80"></td>
                                <td align="center" valign="middle" class="dis-in-block">
                               <span>{{ $getOrderItem->products->name }}</span><br>

                               <span> @if($getOrderItem->size) Size : {{ $getOrderItem->size }} @endif</span><br>

                               <div style="display:inline-block; margin:0 auto; margin-top:5px;"> 
                                @if($getOrderItem->color_code)
								<!--<span class="cart-color" style="background:#{{ $getOrderItem->color_code }};"></span>-->
                                <span>{{ $getOrderItem->color }}</span>
                                @endif
                                </div>
                                
                                
                                </td>
                                <td> {{ $getOrderItem->quantity }} </td>
                                <td> $ {{ $getOrderItem->unit_price }} </td>                        
                                <td>$ {{ $getOrderItem->total_price }}</td>  
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection