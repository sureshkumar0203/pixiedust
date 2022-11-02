@extends('layouts.master')
@section('title', 'Events')
@section('keywords', 'Events')
@section('description', 'Events')
@section('content')

<div class="container mtb50">

    <div class="row">
        <!--Middle Part Start-->
        <div id="content" class="col-sm-12">
            <h1 class="title"><span>Events</span></h1>
            <div class="row">
                <div class="col-sm-12">
                    @foreach($eventsCms as $getEventCms)
                    <div class="event-box">
                        <h3><a href="{{ url('/events') }}/{{ $getEventCms->slug }}">{{ $getEventCms->title }}</a></h3>
                        {!!  str_limit(strip_tags($getEventCms->description), 400, '...') !!}<br>

                        <a  href="{{ url('/events') }}/{{ $getEventCms->slug }}" class="pull-right btn btn-info">Read More</a>
                        <div class="clearfix"></div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!--Middle Part End -->
    </div>
</div>

@endsection
