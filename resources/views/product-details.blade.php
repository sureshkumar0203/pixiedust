@extends('layouts.master')
@section('title'){{ $getProductDetails->meta_title }}@stop
@section('keywords'){{ $getProductDetails->meta_keywords }}@stop
@section('description'){!! $getProductDetails->meta_description !!}@stop
@section('content')
<div class="container  mtb50">
    {!! Form::open(['url'=>'add-to-cart','METHOD'=>'POST']) !!}
    {{ Form::hidden('product_id', '',['id'=>'product_id'])}}
    {{ Form::hidden('stock_id', $getProductDetails->productStock[0]->id,['id'=>'stock_id'])}}     
    {{ Form::hidden('quantity', "1",['id'=>'quantity']) }}
    {!! Form::close() !!}
    <!-- Breadcrumb ============================================= -->
    <ul class="breadcrumb">
        <li><a href="{{ url('/') }}"><i class="fa fa-home"></i></a></li>
        <li>{{ $getProductDetails->category->name }}</li>
        <li>Products Details</li>
    </ul><!-- Breadcrumb End-->


    <div class="row">
        <div id="content" class="col-sm-12">
            <div class="row product-info">
                <div class="col-sm-5">
                    <div style="border: 1px solid #f1f1f1; min-height:479px; background-color:#e2e2e2; padding:5px;">
                        <div class="bzoom_wrap">
                            <ul id="bzoom">
                                <li>
                                    <img class="bzoom_thumb_image" src="{{ asset('public/images/products/'.$getProductDetails->image) }}" title="{{ $getProductDetails->name }}" />
                                    <img class="bzoom_big_image" src="{{ asset('public/images/products/'.$getProductDetails->image) }}" title="{{ $getProductDetails->name }}"/>
                                </li>

                                @if($getProductDetails->productImages->count() > 0)
                                @foreach($getProductDetails->productImages as $productImage)
                                <li>
                                    <img class="bzoom_thumb_image" src="{{ asset('public/images/products/multiple_images/'.$productImage->image) }}" title="first img" />
                                    <img class="bzoom_big_image" src="{{ asset('public/images/products/multiple_images/'.$productImage->image) }}" title=""/>
                                </li>                                 
                                @endforeach
                                @endif
                            </ul>
                        </div>
                    </div>    
                    @if($getProductDetails->discount)
                    <span class="saving">-{{ $getProductDetails->discount }}%</span>
                    @endif
                </div>

                <div class="col-sm-7">
                    <h3 class="title">{{ $getProductDetails->name }}</h3>
                    <ul class="price-box">
                        <li class="price">
                            <span class="price-new">${{ ($getProductDetails->discount_price) ? $getProductDetails->discount_price :$getProductDetails->price }}</span>
                            <span class="price-old">{{ ($getProductDetails->price && $getProductDetails->discount_price) ? '$'.$getProductDetails->price : ""  }}</span>
                        </li>
                    </ul>
                    
                    <div id="product">
                        <div class="cart">
                        	@if($getProductDetails->prd_cs_opt==1)
                              {{ Form::hidden('stock_opt_chk', 1, ['id'=>'stock_opt_chk']) }}
                              <table class="table tbl-w">
                                <tr class="pr-det">
                                  <td width="50%" align="left" valign="middle" class="bdr-btm pad5 col-b">Varients</td>
                                  <td width="30%" align="left" valign="middle" class="bdr-btm pad5 col-b">Size</td>
                                  
                                </tr>
                                @foreach(getColorSizeDetails($getProductDetails->id) as $prd_stock_dtls)
                               
                                <tr class="bdr-btm  sto_dis_cls">
                                  <td align="left" valign="middle" class="pad5"><label class="st"> {{ Form::radio('prd_stock_id', $prd_stock_dtls->id , false, array('id'=>'prd_stock_id','class'=>'','placeholder'=>'')) }} {{ $prd_stock_dtls->color->color }}</label></td>
                                  
                                  <td align="left" valign="middle" class="pad5"> {{ $prd_stock_dtls->size->size }} 
                                  @if($prd_stock_dtls->stock <=0)
                                  <span class="check-disbl"></span>
                                  @endif
                                  
                                  </td>
                                  
                                 
                                </tr>

                                @endforeach
                              </table>
                            @endif 
                  			
                             <div class="error dblock" style="height:20px;">
                             @if (Session::has('error')) {{ Session::get('error') }} @endif
                             </div>
                            
                            <div class="qty-c">
                            
                                               
                           
                                <div class="qty">
                                    <label class="control-label" for="input-quantity">Qty</label>
                                    <a class="qtyBtn mines" href="javascript:void(0);"><i class="fa fa-minus"></i></a>
                                    <input readonly type="text" name="quantity" value="1" maxlength="2" id="input-quantity" class="form-control cartqty" />
                                    <a class="qtyBtn plus" href="javascript:void(0);"><i class="fa fa-plus"></i></a><br />

                                    <div class="clear"></div>
                                </div>
                                
                               
                                @if($getProductDetails->prd_cs_opt==0 && $getProductDetails->ProductStock[0]->stock <=0)
                                <span class="pull-right add-cart-btn">
                                <button type="button" id="button-cart" class="btn btn-cart btn-lg pull-right stock-out">Out of Stock</button>
                                </span>
                                
                                @else
                                <span class="pull-right"><button type="button" id="button-cart" class="btn btn-cart btn-lg " onclick="addToCart({{ $getProductDetails->id }})">Add to Cart</button></span>
                                @endif
                          
                            
                            
                            
                            
                            
                          </div> 
                      </div>
                    </div>
                    
                    <div id="tab-description">
                        {!! $getProductDetails->description !!}   
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

@push('script')

<script type="text/javascript">
    $("#bzoom").zoom({
    zoom_area_width: 500,
            autoplay_interval: 3000,
            small_thumbs: 1 + {{ $getProductDetails->productImages->count() }},
            autoplay: false
    });
</script>

@endpush('script')
