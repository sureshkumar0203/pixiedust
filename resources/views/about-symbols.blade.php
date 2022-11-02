@extends('layouts.master')
@section('title') {{ getSeoDetails(9)->meta_title }} @stop
@section('keywords'){{ getSeoDetails(9)->meta_keywords }} @stop
@section('description'){{ getSeoDetails(9)->meta_description }} @stop
@section('content')
<div class="container mtb50">
  <div class="row">
    <div id="content" class="col-sm-12">
      <h1 class="title"><span>About Symbols</span></h1>
      <div class="row">
        <div class="col-sm-12"> @foreach($symbols_info as $symbols_res)
          <?php
            $img_name = $symbols_res->img_vid;
            $img_ary = explode('.',$img_name);
            $img_ext = array_pop($img_ary);
          ?>
          <div class="event-box">
            <h3 class="title"><span>{{ $symbols_res->title }}</span></h3>
            @if($symbols_res->img_vid!=NULL && $img_ext=='mp4')
              <video width="30%" style="float:left; margin-right: 20px; margin-bottom: 20px;">
                <source src="{{ asset('public/images/img-vid/'.$symbols_res->img_vid) }}" controls type="video/mp4">
              </video>
            @endif

            @if($symbols_res->img_vid!=NULL && $img_ext=='mov')
              <video width="30%" src="{{ asset('public/images/img-vid/'.$symbols_res->img_vid) }}" controls style="float:left; margin-right: 20px; margin-bottom: 20px;"></video>
            @endif
            
            @if($symbols_res->img_vid!=NULL && $img_ext!='mp4' && $img_ext!='mov') 
              <img src="{{ asset('public/images/img-vid/'.$symbols_res->img_vid) }}"  style="float:left; margin-right: 20px; margin-bottom: 20px; width:150px;"/> 
            @endif
            
            {!! $symbols_res->description !!}
            <div class="clearfix"></div>
          </div>
          @endforeach </div>
      </div>
    </div>
  </div>
</div>
@endsection 