@extends('front.master')
@section('title')
    Contact us
@endsection
@section('body')
      @php
        $setting = App\Models\Category::find(120);
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
        $clientpage = App\Models\Category::find(121);
      @endphp

    <!-- Testimonial Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h4 class="section-title">{{$clientpage->category_name}}</h4>
                <h1 class="display-5 mb-4">{{$clientpage->description}}</h1>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                @foreach($client as $item)
                <div class="testimonial-item text-center" data-dot="<img class='img-fluid' src='{{ asset($item->image) }}' alt=''>">
                    <p class="fs-5">{!! Str::limit($item->privacy, 150, '...') !!}</p>
                    <h3>{{ $item->name }}</h3>
                    <span class="text-primary">{{ $item->title }}</span>
                </div>
              @endforeach
            </div>      
        </div>
    </div>
    <!-- Testimonial End -->

@endsection
