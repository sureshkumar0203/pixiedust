@extends('layouts.master')
@section('title') {{ $getPrivacyPolicy->meta_title }} @stop
@section('keywords'){{ $getPrivacyPolicy->meta_keywords }} @stop
@section('description'){!! $getPrivacyPolicy->meta_description !!} @stop
@section('content')

<div class="container mtb50">

    <div class="row">
        <!--Middle Part Start-->
        <div id="content" class="col-sm-12">
            <h1 class="title"><span>{{ $getPrivacyPolicy->title }}</span></h1>
            <div class="row">
                <div class="col-sm-12">
                    @if($getPrivacyPolicy->image!=NULL)
                	<img src="{{ asset('public/images/'.$getPrivacyPolicy->image) }}"  style="float: left; margin-right: 20px; margin-bottom: 20px"/>
                    @endif
                    
                    {!! $getPrivacyPolicy->description !!} 
                </div>
            </div>
        </div>
        <!--Middle Part End -->
    </div>
</div>

@endsection
