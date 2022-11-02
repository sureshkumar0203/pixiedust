@extends('layouts.master')
@section('title') {{ getSeoDetails(8)->meta_title }} @stop
@section('keywords'){{ getSeoDetails(8)->meta_keywords }} @stop
@section('description'){{ getSeoDetails(8)->meta_description }} @stop
@section('content')

<div class="container mtb50">

    <div class="row">
        <!--Middle Part Start-->
        <div id="content" class="col-sm-12">
            <h1 class="title"><span>Blogs</span></h1>
            <div class="row">
                <div class="col-sm-12">
                    @foreach($blog_info as $blog_res)
                    <div class="event-box">
                        <h3 class="title pull-left"><span><a href="{{ url('/blogs') }}/{{ $blog_res->id }}-{{ str_slug($blog_res->title) }}">{{ $blog_res->title }}</a></span></h3>
                        <span class="pull-right pd-dt2"><strong>Post Date :</strong> {{ date("jS M, Y",strtotime($blog_res->created_at)) }}</span>
                        
                        <div class="clearfix"></div>
                        
                        {!!  str_limit(strip_tags($blog_res->description), 400, '...') !!}<br>

                        <a  href="{{ url('/blogs') }}/{{ $blog_res->id }}-{{ str_slug($blog_res->title) }}" class="pull-right btn btn-info">Read More</a>
                        <div class="blogs"></div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <!--Middle Part End -->
    </div>
</div>

@endsection
