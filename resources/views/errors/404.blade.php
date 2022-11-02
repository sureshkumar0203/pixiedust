@extends('layouts.master')
@section('title') {{ "Page Not Found" }} @stop
@section('keywords'){{ "Page Not Found" }} @stop
@section('description'){!! "Page Not Found" !!} @stop
@section('content')

<div class="container mtb50">
    <div class="row">

        <div class="col-md-12">
            <h1 class="text-center" style="font-size: 125px; color: #7dced4; text-shadow: 7px 6px 9px #000;">404</h1>
            <h3 class="text-center" style="font-size: 28px;font-weight: 700; text-transform:uppercase; text-shadow: 7px 6px 9px #000;">Page not found</h3>

            <h5 class="text-center" style="line-height:30px;">The page you are looking for doesn't exist or an other<br>
                error occured. Go to <a href="{{ url('/') }}" style="color: #8eeaf1; text-decoration:underline;">Home page</a></h5>


        </div>

    </div>


</div>



@endsection
