@extends('front.master')
@section('title')
    About us
@endsection
@section('body')
     @php
        $setting = App\Models\Category::find(112);
      @endphp

   <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <h1 class="display-1 text-white animated slideInDown">{{$setting->category_name}}</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb text-uppercase mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="{{route('home')}}">Home</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">{{$setting->description}}</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

     @php
        $year = App\Models\Category::find(113);
      @endphp
    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="about-img">
                        <img class="img-fluid" src="{{ asset($about->image) }}" alt="">
                        <img class="img-fluid" src="{{ asset($about->image) }}" alt="">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <h4 class="section-title">{{$setting->category_name}}</h4>
                    <h1 class="display-5 mb-4">{{$about->name}}</h1>
                    <p class="mb-4">{!!$about->details!!}</p>
                    <div class="d-flex align-items-center mb-5">
                        <div class="d-flex flex-shrink-0 align-items-center justify-content-center border border-5 border-primary" style="width: 80px; height: 80px;">
                            <h1 class="display-1 mb-n2" data-toggle="counter-up">{{$year->category_name}}</h1>
                        </div>
                        <div class="ps-4">
                            <h3>{{$year->description}}</h3>
                        </div>
                    </div>
                </div>
                <p class="mb-4">{!!$about->sub_details!!}</p>
                <p class="mb-4">{!!$about->privacy!!}</p>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Feature Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h4 class="section-title">{{$business->title}}</h4>
                    <h1 class="display-5 mb-4">{{$business->name}}</h1>
                    <p class="mb-4">{!!$business->details!!}</p>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="feature-img">
                        <img class="img-fluid" src="{{ asset($business->image) }}" alt="">
                        <img class="img-fluid" src="{{ asset($business->s_image) }}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Feature End -->
   
@endsection
