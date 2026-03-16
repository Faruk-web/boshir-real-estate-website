@extends('front.master')
@section('title')
    Projects
@endsection
@section('body')
     @php
        $settings = App\Models\Category::find(140);
      @endphp

   <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <h1 class="display-1 text-white animated slideInDown"> Projects {{$settings->category_name}}</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb text-uppercase mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="{{route('home')}}">Home</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">{{$settings->description}}</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="about-img">
                        <img class="img-fluid" src="{{ asset($teams->image) }}" alt="">
                        <img class="img-fluid" src="{{ asset($teams->image) }}" alt="">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <h1 class="display-5 mb-4">{{$teams->name}}</h1>
                    <h4 class="section-title">{{$teams->title}}</h4>
                    <p class="mb-4">{!!$teams->privacy!!}</p>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->     
@endsection
