@extends('layouts.master')
@section('title') {{ $blog_data->meta_title }} @stop
@section('keywords') {{ $blog_data->meta_keywords }} @stop
@section('description') {{ $blog_data->meta_description }} @stop
@section('content')
<?php
$img_name = $blog_data->img_vid;
$img_ary = explode('.',$img_name);
$img_ext = array_pop($img_ary);
?>
<div class="container mtb50">
  <div class="row"> 
    <!--Middle Part Start-->
    <div id="content" class="col-sm-12 event-detail">
      <h1 class="title mar-bot10">{{ $blog_data->title }} <a href="{{ url('/blogs') }}" class="pull-right btn btn-info">Back</a></h1>
      <span class="pull-left mar-bot30 pd-date"><strong>Post Date :</strong> {{ date("jS M, Y",strtotime($blog_data->created_at)) }}</span>
      <div class="row">
        <div class="col-sm-12"> 
          @if($blog_data->img_vid!=NULL && $img_ext=='mp4')
            <video width="30%" controls style="float:left; margin-right: 20px; margin-bottom: 20px; width:280px;">
              <source src="{{ asset('public/images/img-vid/'.$blog_data->img_vid) }}" type="video/mp4">
            </video>
          @endif

          @if($blog_data->img_vid!=NULL && $img_ext=='mov')
            <video width="30%" src="{{ asset('public/images/img-vid/'.$blog_data->img_vid) }}" controls style="float:left; margin-right: 20px; margin-bottom: 20px; width:280px;"></video>
          @endif
          
          @if($blog_data->img_vid!=NULL && $img_ext!='mp4' && $img_ext!='mov') 
            <img src="{{ asset('public/images/img-vid/'.$blog_data->img_vid) }}" style="float:left; margin-right: 20px; margin-bottom: 20px; width:280px;"/> 
          @endif
          
          {!! $blog_data->description !!} 
        </div>
      </div>
    </div>
    <!--Middle Part End --> 
  </div>
</div>
@endsection