@extends('front.master')
@section('title')
    Contact us
@endsection
@section('body')
     @php
        $setting = App\Models\Category::find(125);
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
        $ongoing = App\Models\Category::find(126);
        $upcoming = App\Models\Category::find(160);
        $compleat = App\Models\Category::find(161);
      @endphp
    <!-- Facts Start -->
    <div class="container-xxl py-5">
        <div class="container pt-5">
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="fact-item text-center bg-light h-100 p-5 pt-0">
                        <div class="fact-icon">
                            <img src="{{ asset('front') }}/img/icons/icon-2.png" alt="Icon">
                        </div>
                        <a class="" href="{{route('ongoing')}}"><h3 class="mb-3">{{$ongoing->category_name}}</h3></a>
                        <p class="mb-0">{{$ongoing->description}}</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="fact-item text-center bg-light h-100 p-5 pt-0">
                        <div class="fact-icon">
                            <img src="{{ asset('front') }}/img/icons/icon-3.png" alt="Icon">
                        </div>
                        <a class="" href="{{route('upcoming')}}"><h3 class="mb-3">{{$upcoming->category_name}}</h3></a>
                        <p class="mb-0">{{$upcoming->description}}</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="fact-item text-center bg-light h-100 p-5 pt-0">
                        <div class="fact-icon">
                            <img src="{{ asset('front') }}/img/icons/icon-4.png" alt="Icon">
                        </div>
                        <a class="" href="{{route('completed')}}"><h3 class="mb-3">{{$compleat->category_name}}</h3></a>
                        <p class="mb-0">{{$compleat->description}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Facts End -->
      @php
        $servicepage = App\Models\Category::find(162);
      @endphp

   <!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h4 class="section-title">{{$servicepage->category_name}}</h4>
                <h1 class="display-5 mb-4">{{$servicepage->description}}</h1>
            </div>
            <div class="row g-4">
                @foreach($service as $item)
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item d-flex position-relative text-center h-100">
                        <img class="bg-img" src="{{ asset($item->main_image) }}" alt="">
                        <div class="service-text p-5">
                            <img class="mb-4" src="{{ asset($item->image) }}" alt="Icon">
                            <h3 class="mb-3">{{$item->name}}</h3>
                            <p class="mb-4">{!!$item->privacy!!}</p>
                            <a class="btn" href="{{route('service.deatils',$item->id)}}"><i class="fa fa-plus text-primary me-3"></i>Read More</a>
                        </div>
                    </div>
                </div>
               @endforeach
            </div>
        </div>
    </div>
    <!-- Service End -->

      @php
        $Testimonial = App\Models\Category::find(163);
      @endphp
      <!-- Testimonial Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h4 class="section-title">{{ $Testimonial->category_name}}</h4>
                <h1 class="display-5 mb-4">{{$Testimonial->description}}</h1>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                 @foreach($client as $item)
                <div class="testimonial-item text-center" data-dot="<img class='img-fluid' src='{{ asset($item->image) }}' alt=''>">
                    <p class="fs-5">{!! Str::limit($item->privacy, 150, '...') !!}</p>
                    <a href="{{route('client.deatils',$item->id)}}"><h3>{{ $item->name }}</h3></a>
                    <span class="text-primary">{{ $item->title }}</span>
                </div>
              @endforeach
            </div>      
        </div>
    </div>
    <!-- Testimonial End -->
@endsection
