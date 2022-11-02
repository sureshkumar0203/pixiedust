@extends('layouts.master')
@section('title') {{ getSeoDetails(2)->meta_title }} @stop
@section('keywords'){{ getSeoDetails(2)->meta_keywords }} @stop
@section('description'){{ getSeoDetails(2)->meta_description }} @stop
@section('content')


<div class="container  mtb50 product-page">

    <!-- Breadcrumb
    ============================================= -->
<h1 class="title"><span>Search Results</span></h1>

    <div id="demo" class="box jplist">
        <div class="jplist-panel box panel-top">

            <div class="row">
               
                <div id="content" class="col-sm-12">

                   

                    <div class="row products-category">
                        <div class="list box text-shadow">

                            {!! Form::open(['url'=>'add-to-cart','METHOD'=>'POST','id'=>'cart_form']) !!}
                            {{ Form::hidden('product_id', '',['id'=>'product_id'])}}                
                            {{ Form::hidden('quantity', "1",['id'=>'quantity']) }}
                            {!! Form::close() !!}

                            @foreach($getAllProducts as $getAllProduct)

                            <div class="list-item box">
                                <div class="product-layout product-grid col-lg-3 col-md-3 col-sm-4 col-xs-6 {{ $getAllProduct->category->slug }}">
                                    <div class="product-thumb clearfix">
                                        <div class="image"><a href="{{ url('products/'.$getAllProduct->slug) }}"><img src="{{ asset('public/images/products/'.$getAllProduct->image) }}" alt="" title="" class="img-responsive"></a></div>
                                        <div class="caption">
                                            <h4 class="title"><a href="{{ url('products/'.$getAllProduct->slug) }}">{{ $getAllProduct->name }}</a></h4>
                                            <p class="price" style="display:none;">{{ ($getAllProduct->discount_price) ? $getAllProduct->discount_price :$getAllProduct->price }}</p>
                                            <p class="price2">
                                                <span class="price-new"><i class="fa fa-dollar"></i>{{ ($getAllProduct->discount_price) ? $getAllProduct->discount_price :$getAllProduct->price }}</span> 
                                                <span class="price-old"></i>{{ ($getAllProduct->price && $getAllProduct->discount_price) ? '$'.$getAllProduct->price : ""  }}</span>
                                                @if($getAllProduct->discount)
                                                <span class="saving">-{{ $getAllProduct->discount }}%</span>
                                                @endif
                                            </p>

                                        </div>
                                        <p class="newest" style="display:none">1</p>
                                        <div class="button-group">
                                            <!--<button class="btn-primary f-none" type="button" onclick="addToCart({{ $getAllProduct->id }})"><span>Add to Cart</span></button>-->
                                        </div>
                                    </div>

                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
					
                    @if(count($getAllProducts)==0)
                    <div class="row">
                        <div class="box jplist-no-results text-shadow text-center">
                            <h1 style="color:#FFF; text-align:center; color:#ff0000;">
                            <span class="no-result">No results found</span>
                            </h1>
                        </div>
                    </div>
                    @endif
                    
                    
                </div>

            </div>
            <!-- row End-->
        </div>
    </div>

</div>

@endsection