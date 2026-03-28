@extends('front.master')
@section('title')
    Privacy & Policy
@endsection
@section('body')

 <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <h1 class="display-1 text-white animated slideInDown">Privacy & Policy</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb text-uppercase mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="{{route('home')}}">Home</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">Privacy & Policy</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Team Start -->
     <div class="container-xxl py-5">
        <div class="container">
            <div class="row">
                    <h1 class="display-5 mb-4">{{$privacy->name}}</h1>
                    <p class="mb-4">{!! $privacy->privacy!!}</p>
            </div>
        </div>
    </div>
    <!-- Team End -->
@endsection
