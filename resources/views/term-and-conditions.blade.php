@extends('layouts.master')
@section('title') {{ $getTermAndConditions->meta_title }} @stop
@section('keywords'){{ $getTermAndConditions->meta_keywords }} @stop
@section('description'){!! $getTermAndConditions->meta_description !!} @stop
@section('content')

<div class="container mtb50">

    <div class="row">
        <!--Middle Part Start-->
        <div id="content" class="col-sm-12">
            <h1 class="title"><span>{{ $getTermAndConditions->title }}</span></h1>
            <div class="row">
                <div class="col-sm-12">
                    @if($getTermAndConditions->image!=NULL)
                	<img src="{{ asset('public/images/'.$getTermAndConditions->image) }}"  style="float: left; margin-right: 20px; margin-bottom: 20px"/>
                    @endif
                    
                    {!! $getTermAndConditions->description !!} 
                </div>
            </div>
        </div>
        <!--Middle Part End -->
    </div>
</div>

@endsection
