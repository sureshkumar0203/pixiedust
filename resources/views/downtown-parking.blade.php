@extends('layouts.master')
@section('title') {{ $downtownParking->meta_title }} @stop
@section('keywords'){{ $downtownParking->meta_keywords }} @stop
@section('description'){!! $downtownParking->meta_description !!} @stop
@section('content')

<div class="container mtb50">

    <div class="row">
        <!--Middle Part Start-->
        <div id="content" class="col-sm-12">
            <h1 class="title"><span>{{ $downtownParking->title }}</span></h1>
            <div class="row">
                <div class="col-sm-12">
                    @if($downtownParking->image!=NULL)
                	<img src="{{ asset('public/images/'.$downtownParking->image) }}"  style="float: left; margin-right: 20px; margin-bottom: 20px"/>
                    @endif
                    {!! $downtownParking->description !!} 
                </div>
            </div>
        </div>
        <!--Middle Part End -->
    </div>
</div>

@endsection
