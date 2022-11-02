@extends('layouts.master')
@section('title') {{ getSeoDetails(6)->meta_title }} @stop
@section('keywords'){{ getSeoDetails(6)->meta_keywords }} @stop
@section('description'){{ getSeoDetails(6)->meta_description }} @stop
@section('content')
<div class="container mtb50">
  <div class="row"> 
    <!--Middle Part Start-->
    <div id="content" class="col-sm-12">
      <div class="row">
        <div class="col-sm-12" id="cms_img_disp">
          <h1 class="title"><span>About our psychic readers</span></h1>
        </div>
        <div class="col-sm-12"> @foreach($pr_rec as $pr_res)
          <?php
            $img_name = $pr_res->img_vid;
            $img_ary = explode('.',$img_name);
            $img_ext = array_pop($img_ary);
          ?>
          <div id="cms_img_disp">
            <h3 class="name-bg">{{ $pr_res->title }}</h3>
            @if($pr_res->img_vid!=NULL && $img_ext=='mp4')
            <video width="30%" controls style="float:right; margin-left: 20px; margin-bottom: 20px; width:300px;">
              <source src="{{ asset('public/images/img-vid/'.$pr_res->img_vid) }}" type="video/mp4">
            </video>
            @endif
            
            @if($pr_res->img_vid!=NULL && $img_ext=='mov')
            <video width="30%" src="{{ asset('public/images/img-vid/'.$pr_res->img_vid) }}" controls style="float:right; margin-left: 20px; margin-bottom: 20px; width:300px;"></video>
            @endif
            
            @if($pr_res->img_vid!=NULL && $img_ext!='mp4' && $img_ext!='mov') <img src="{{ asset('public/images/img-vid/'.$pr_res->img_vid) }}"  style="float:left; margin-right: 20px; margin-bottom: 20px; width:150px;"/> @endif
            {!! $pr_res->description !!}
            <div class="clearfix name-bdr"></div>
            </div>
            @endforeach
        </div>
      </div>
      <!--Middle Part End --> 
    </div>
  </div>
</div>
</div>
</div>
</div>
@endsection 