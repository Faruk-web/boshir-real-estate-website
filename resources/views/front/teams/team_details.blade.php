@extends('front.master')
@section('title')
    Contact us
@endsection
@section('body')
@php
     $settings = App\Models\Category::find(149);
      @endphp

<!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <h1 class="display-1 text-white animated slideInDown">{{$settings->category_name}}</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb text-uppercase mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="{{route('home')}}">Home</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">{{$settings->description}}</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-4 wow fadeIn" data-wow-delay="0.1s">
                    <div class="positionrelative">
                        <img class="img-fluid" src="{{ asset($teams->image) }}" alt="">
                    </div>
                </div>
                <div class="col-lg-8 wow fadeIn" data-wow-delay="0.5s">
                    <h4 class="section-title">{{$teams->name}}</h4>
                     <h4>{{$teams->title}}</h4>
                    <p class="mb-4">{!!$teams->privacy!!}</p>
                </div>
            </div>

        </div>
    </div>


@endsection
