@extends('front.master')

@section('title')
    Home
@endsection
@section('body')
    <!-- Carousel Start -->
    <div class="container-fluid p-0 pb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="owl-carousel header-carousel position-relative">
         @foreach($Slider as $item)
            <div class="owl-carousel-item position-relative" data-dot="<img src='{{asset($item->image)}}'>">
                <img class="img-fluid" src="{{asset($item->image)}}" alt="Slider image">
                <div class="owl-carousel-inner">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-10 col-lg-8">
                                <h1 class="display-1 text-white animated slideInDown">{{$item->title}}</h1>
                                <p class="fs-5 fw-medium text-white mb-4 pb-3">{{$item->s_title}}</p>
                                <a href="{{$item->link}}" class="btn btn-primary py-3 px-5 animated slideInLeft">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           @endforeach
        </div>
    </div>
    <!-- Carousel End -->

      @php
        $ongoing = App\Models\Category::find(105);
        $upcoming = App\Models\Category::find(106);
        $compleat = App\Models\Category::find(107);
      @endphp
    <!-- Facts Start -->
    <div class="container-xxl py-5">
        <div class="container pt-5">
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item d-flex position-relative text-center h-100" >
                        <img class="bg-img" src="{{ asset('front') }}/img/service-1.jpg" alt="">
                        <div class="service-text p-5">
                            <img class="mb-4" src="{{ asset('front') }}/img/icons/icon-5.png" alt="Icon">
                            <h3 class="mb-3">{{$ongoing->category_name}}</h3>
                            <p class="mb-4">{{$ongoing->description}}</p>
                            <a class="btn" href="{{route('ongoing')}}"><i class="fa fa-plus text-primary me-3"></i>Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item d-flex position-relative text-center h-100">
                        <img class="bg-img" src="{{ asset('front') }}/img/service-1.jpg" alt="">
                        <div class="service-text p-5">
                            <img class="mb-4" src="{{ asset('front') }}/img/icons/icon-5.png" alt="Icon">
                            <h3 class="mb-3">{{$upcoming->category_name}}</h3>
                            <p class="mb-4">{{$upcoming->description}}</p>
                            <a class="btn" href="{{route('upcoming')}}"><i class="fa fa-plus text-primary me-3"></i>Read More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="service-item d-flex position-relative text-center h-100">
                        <img class="bg-img" src="{{ asset('front') }}/img/service-1.jpg" alt="">
                        <div class="service-text p-5">
                            <img class="mb-4" src="{{ asset('front') }}/img/icons/icon-5.png" alt="Icon">
                            <h3 class="mb-3">{{$compleat->category_name}}</h3>
                            <p class="mb-4">{{$compleat->description}}</p>
                            <a class="btn" href="{{route('completed')}}"><i class="fa fa-plus text-primary me-3"></i>Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Facts End -->

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
      @php
        $servicehome = App\Models\Category::find(108);
      @endphp
    <!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h4 class="section-title">{{$servicehome->category_name}}</h4>
                <h1 class="display-5 mb-4">{{$servicehome->description}}</h1>
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
                            <a class="btn" href="#"><i class="fa fa-plus text-primary me-3"></i>Read More</a>
                        </div>
                    </div>
                </div>
               @endforeach
            </div>
        </div>
    </div>
    <!-- Service End -->
     @php
        $projecthome = App\Models\Category::find(109);
      @endphp
    <!-- Project Start -->
    <div class="container-xxl project py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h4 class="section-title">{{$projecthome->category_name}}</h4>
                <h1 class="display-5 mb-4">{{$projecthome->description}}</h1>
            </div>
            <div class="row g-4 wow fadeInUp" data-wow-delay="0.3s">
                <div class="col-lg-4">
                    <div class="nav nav-pills d-flex justify-content-between w-100 h-100 me-4">

                        @foreach($projects as $key => $project)

                        <button
                        class="nav-link w-100 d-flex align-items-center text-start p-4 mb-4 {{ $key==0 ? 'active' : '' }}"
                        data-bs-toggle="pill"
                        data-bs-target="#tab{{ $project->id }}"
                        type="button">

                        <h3 class="m-0">
                        {{ $loop->iteration }}. {{ $project->name }}
                        </h3>

                        </button>

                        @endforeach
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="tab-content w-100">
                        @foreach($projects as $key => $project)
                        <div class="tab-pane fade {{ $key==0 ? 'show active' : '' }}" id="tab{{ $project->id }}">
                            <div class="row g-4">
                                <div class="col-md-6" style="min-height: 350px;">
                                    <div class="position-relative h-100">
                                        <img class="position-absolute img-fluid w-100 h-100" src="{{ asset($project->image) }}"
                                            style="object-fit: cover;" alt="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h1 class="mb-3">{{ $project->title }}</h1>
                                   <p class="mb-4">{!! $project->privacy !!}</p>

                                    <a href="" class="btn btn-primary py-3 px-5 mt-3">Read More</a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Project End -->

      @php
        $teamhome = App\Models\Category::find(110);
      @endphp
    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h4 class="section-title">{{$teamhome->category_name}}</h4>
                <h1 class="display-5 mb-4">{{$teamhome->description}}</h1>
            </div>
            <div class="row g-0 team-items">
                @foreach($team as $item)
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item position-relative">
                        <div class="position-relative">
                            <img class="img-fluid" src="{{ asset($item->image) }}" alt="">
                            
                            <div class="team-social text-center">
                                <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                        <a href="{{route('team.detail',$item->id)}}" class="link-btn">
                        <div class="bg-light text-center p-4">
                            <h3 class="mt-2">{{ $item->name }}</h3>
                            <span class="text-primary">{{ $item->title }}</span>
                        </div>
                         </a>
                    </div>
                </div>
                @endforeach
            </div>
          </div>
        </div>
    <!-- Team End -->
      @php
        $appointment = App\Models\Category::find(111);
        $setting = App\Models\Setting::select('location', 'p_phone', 'p_mail')->find(1);
      @endphp

    <!-- Appointment Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h4 class="section-title">{{$appointment->category_name}}</h4>
                    <h1 class="display-5 mb-4">{{$appointment->description}}</h1>
                    <p class="mb-4">{{$setting->location}}</p>
                    <div class="row g-4">
                        <div class="col-12">
                            <div class="d-flex">
                                <div class="d-flex flex-shrink-0 align-items-center justify-content-center bg-light" style="width: 65px; height: 65px;">
                                    <i class="fa fa-2x fa-phone-alt text-primary"></i>
                                </div>
                                <div class="ms-4">
                                    <p class="mb-2">Call Us Now</p>
                                    <h3 class="mb-0">{{$setting->p_phone}}</h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="d-flex">
                                <div class="d-flex flex-shrink-0 align-items-center justify-content-center bg-light" style="width: 65px; height: 65px;">
                                    <i class="fa fa-2x fa-envelope-open text-primary"></i>
                                </div>
                                <div class="ms-4">
                                    <p class="mb-2">Mail Us Now</p>
                                    <h3 class="mb-0">{{$setting->p_mail}}</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="row g-3">
                        <div class="col-12 col-sm-6">
                            <input type="text" class="form-control" placeholder="Your Name" style="height: 55px;">
                        </div>
                        <div class="col-12 col-sm-6">
                            <input type="email" class="form-control" placeholder="Your Email" style="height: 55px;">
                        </div>
                        <div class="col-12 col-sm-6">
                            <input type="text" class="form-control" placeholder="Your Mobile" style="height: 55px;">
                        </div>
                        <div class="col-12 col-sm-6">
                            <select class="form-select" style="height: 55px;">
                                <option selected>Choose Service</option>
                                <option value="1">Service 1</option>
                                <option value="2">Service 2</option>
                                <option value="3">Service 3</option>
                            </select>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="date" id="date" data-target-input="nearest">
                                <input type="text"
                                    class="form-control datetimepicker-input"
                                    placeholder="Choose Date" data-target="#date" data-toggle="datetimepicker" style="height: 55px;">
                            </div>
                        </div>
                        <div class="col-12 col-sm-6">
                            <div class="time" id="time" data-target-input="nearest">
                                <input type="text"
                                    class="form-control datetimepicker-input"
                                    placeholder="Choose Date" data-target="#time" data-toggle="datetimepicker" style="height: 55px;">
                            </div>
                        </div>
                        <div class="col-12">
                            <textarea class="form-control" rows="5" placeholder="Message"></textarea>
                        </div>
                        <div class="col-12">
                            <button class="btn btn-primary w-100 py-3" type="submit">Book Appointment</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Appointment End -->

@endsection
