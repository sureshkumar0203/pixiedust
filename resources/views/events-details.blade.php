@extends('layouts.master')
@section('title') {{ $getEventsCms->title }} @stop
@section('keywords') {{ $getEventsCms->meta_keywords }} @stop
@section('description') {{ $getEventsCms->meta_description }} @stop
@section('content')

<div class="container mtb50">

    <div class="row">
        <!--Middle Part Start-->
        <div id="content" class="col-sm-12 event-detail">
            <h1 class="title">{{ $getEventsCms->title }} <a href="{{ url('/events') }}" class="pull-right btn btn-info">Back</a></h1>
            <div class="row">
                <div class="col-sm-12">
                    <div>
                        @if($getEventsCms->image)<img src="{{ asset('public/images') }}/{{ $getEventsCms->image }}" style="float: left; margin-right: 20px; margin-bottom: 10px" alt="">@endif
                        {!!  $getEventsCms->description !!}
                    </div>
                </div>
            </div>
        </div>
        <!--Middle Part End -->
    </div>
</div>

@endsection
