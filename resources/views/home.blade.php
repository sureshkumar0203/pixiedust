@extends('layouts.master')
@section('title') {{ getSeoDetails(1)->meta_title }} @stop
@section('keywords'){{ getSeoDetails(1)->meta_keywords }} @stop
@section('description'){{ getSeoDetails(1)->meta_description }} @stop
@section('content')

<div class="slideshow single-slider owl-carousel"> 
    @foreach($getBanners as $getBanner)
    <div class="item"><img class="img-responsive" src="{{ asset('public/images/banner/'.$getBanner->banner) }}" alt="{{ $loop->iteration }}" /></div>
    @endforeach
</div><!-- Slideshow End-->


<div class="container">
    <div class="row text-center">
      <h2>{!! $get_home_cms->title !!} </h2>
      {!! $get_home_cms->description !!}
    </div>
    <div class="row">
        <div id="content" class="col-sm-12">
            <!-- Featured Product Start-->
            <h3 class="subtitle"><span>NEW IN</span></h3>
            <div class="row products-category">

                {!! Form::open(['url'=>'add-to-cart','METHOD'=>'POST']) !!}
                {{ Form::hidden('product_id', '',['id'=>'product_id'])}}                
                {{ Form::hidden('quantity', "1",['id'=>'quantity']) }}
                {!! Form::close() !!}

                @foreach($getNewProducts as $getNewProduct)

                <div class="product-layout product-grid col-lg-2 col-md-2 col-sm-4 col-xs-6">
                    <div class="product-thumb">
                        <div class="image"><a href="{{ url('products/'.$getNewProduct->slug) }}"><img src="{{ asset('public/images/products/'.$getNewProduct->image) }}" alt="{{ $getNewProduct->name }}" title="" class="img-responsive"></a></div>
                        <div>
                            <div class="caption">
                                <h4><a href="{{ url('products/'.$getNewProduct->slug) }}">{{ $getNewProduct->name }}
                                    </a></h4>

                                <p class="price">                                  
                                    <span class="price-new">${{ ($getNewProduct->discount_price) ? $getNewProduct->discount_price :$getNewProduct->price }}</span>
                                    <span class="price-old">{{ ($getNewProduct->price && $getNewProduct->discount_price) ? '$'.$getNewProduct->price : ""  }}</span>

                                    @if($getNewProduct->discount)
                                    <span class="saving">-{{ $getNewProduct->discount }}%</span>
                                    @endif

                                </p>
                            </div>
                            <div class="button-group">
                            <!--<button class="btn-primary" type="button" onclick="addToCart({{ $getNewProduct->id }})"> <span>Add to Cart</span></button>-->
                            </div>
                        </div>
                    </div>
                </div>

                @endforeach
            </div>
            <!-- Featured Product End-->
        </div><!--NEW INMiddle Part End-->


        <!-- BEST SELLERS Middle Part============================================= -->
        <div id="content" class="col-sm-12">
            <!-- Featured Product Start-->
            <h3 class="subtitle"><span>BEST SELLERS</span></h3>
            <div class="row products-category">
                
                @foreach($getBestSellerProducts as $getBestSellerProduct)

                <div class="product-layout product-grid col-lg-2 col-md-2 col-sm-4 col-xs-6">
                    <div class="product-thumb">
                        <div class="image"><a href="{{ url('products/'.$getBestSellerProduct->slug) }}"><img src="{{ asset('public/images/products/'.$getBestSellerProduct->image) }}" alt="{{ $getBestSellerProduct->name }}" title="" class="img-responsive"></a></div>
                        <div>
                            <div class="caption">
                                <h4><a href="{{ url('products/'.$getBestSellerProduct->slug) }}">{{ $getBestSellerProduct->name }}
                                    </a></h4>

                                <p class="price">                                  
                                    <span class="price-new">${{ ($getBestSellerProduct->discount_price) ? $getBestSellerProduct->discount_price :$getBestSellerProduct->price }}</span>
                                    <span class="price-old">{{ ($getBestSellerProduct->price && $getBestSellerProduct->discount_price) ? '$'.$getBestSellerProduct->price : ""  }}</span>

                                    @if($getBestSellerProduct->discount)
                                    <span class="saving">-{{ $getBestSellerProduct->discount }}%</span>
                                    @endif

                                </p>
                            </div>
                            <div class="button-group">
                                <!--<button class="btn-primary" type="button" onclick="addToCart({{ $getBestSellerProduct->id }})"> <span>Add to Cart</span></button>-->
                            </div>
                        </div>
                    </div>
                </div>

                @endforeach
      
            </div>
            <!-- Featured Product End-->
        </div><!--BEST SELLERS Part End-->

    </div>
</div>

@endsection
