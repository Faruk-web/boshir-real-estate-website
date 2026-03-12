@extends('front.master')

@section('title')
    Blog us
@endsection
@section('body')
@php
     $settings = App\Models\Category::find(153);
      @endphp
<div class="breadcumb-wrapper " data-bg-src="{{ asset('front') }}/assets/img/bg/breadcrumb-bg.jpg" data-overlay="title" data-opacity="8">
        <div class="container">
            <div class="breadcumb-content">
            <h1 class="breadcumb-title">{{$settings->category_name}}</h1>
                <ul class="breadcumb-menu">
                    <li><a href="{{route('home')}}">Home</a></li>
                    <li>{{$settings->description}}</li>
                </ul>
            </div>
        </div>
    </div>
    <!--==============================
Blog Area
==============================-->

    <section class="th-blog-wrapper space-top space-extra-bottom">
        <div class="container">
            <div class="row">
                <div class="col-xxl-8 col-lg-7">
                    <div class="th-blog blog-single has-post-thumbnail">
                        <div class="blog-img">
                            <a href="#"><img src="{{ asset($blogs->image) }}" alt="Blog Image"></a>
                        </div>
                        <div class="blog-content">
                            <h2 class="blog-title"><a href="#">{{$blogs->name}}</a>
                            </h2>
                            <p class="blog-text">{!!$blogs->privacy!!}</p>
                            <p class="blog-text">{!!$blogs->condition!!}</p>
                        </div>
                    </div>
                    <div class="th-pagination ">
                        <ul>
                            <li><a href="blog.html">1</a></li>
                            <li><a href="blog.html">2</a></li>
                            <li><a href="blog.html">3</a></li>
                            <li><a href="blog.html"><i class="far fa-arrow-right"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-xxl-4 col-lg-5">
                    <aside class="sidebar-area">
                        <div class="widget widget_search  ">
                            <form class="search-form">
                                <input type="text" placeholder="Enter Keyword">
                                <button type="submit"><i class="far fa-search"></i></button>
                            </form>
                        </div>
                        <div class="widget widget_categories  ">
                            <h3 class="widget_title">Legal Articles</h3>
                            <ul>
                            @foreach($blog as $item)
                                <li>
                                    <a href="{{route('blog.details',$item->id)}}">{{$item->name}}</a>
                                    <span><i class="fa-sharp fa-light fa-arrow-right"></i></span>
                                </li>
                            @endforeach
                            </ul>
                        </div>
                        <div class="widget  ">
                            <h3 class="widget_title">Recent Posts</h3>
                            <div class="recent-post-wrap">
                            @foreach($blog as $item)
                                <div class="recent-post">
                                    <div class="media-img">
                                        <a href="{{route('blog.details',$item->id)}}"><img src="{{ asset($item->image) }}" alt="Blog Image"></a>
                                    </div>
                                    <div class="media-body">
                                        <h4 class="post-title"><a class="text-inherit" href="{{route('blog.details',$item->id)}}">{{$item->name}}</a></h4>
                                    </div>
                                </div>
                            @endforeach
                            </div>
                        </div>
                        <div class="widget widget_tag_cloud  ">
                            <h3 class="widget_title">Popular Tags</h3>
                            <div class="tagcloud">
                                <a href="#">Family</a>
                                <a href="#">Criminal</a>
                                <a href="#">Firm</a>
                                <a href="#">Clean</a>
                                <a href="#">Real Estate</a>
                                <a href="#">Law NFT</a>
                                <a href="#">Crypto Law</a>
                                <a href="#">Tips</a>
                                <a href="#">Criminal Law</a>
                                <a href="#">Health Policy</a>
                            </div>
                        </div>
                        @php
                        $setting = App\Models\Setting::select('id', 'p_phone', 'p_mail','location')->find(1);
                        $settings = App\Models\Category::find(154);
                        @endphp
                        <div class="widget widget_call  ">
                            <div class="widget-call">
                                <h4 class="box-title text-white">{{$settings->category_name}}</h4>
                                <p class="text-white box_text">{{$settings->description}}</p>
                                <div class="widget_call">

                                    <div class="info-box">
                                        <div class="info-box_icon">
                                            <i class="fas fa-phone"></i>
                                        </div>
                                        <div>
                                            <span class="info-box_subtitle"> Call Us</span>
                                            <p class="info-box_text">
                                                <a href="tel:{{$setting->p_phone}}" class="info-box_link">{{$setting->p_phone}}</a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="info-box">
                                        <div class="info-box_icon">
                                            <i class="fas fa-envelope"></i>
                                        </div>
                                        <div>
                                            <span class="info-box_subtitle">Mail Us</span>
                                            <p class="info-box_text">
                                                <a href="mailto:{{$setting->p_mail}}" class="info-box_link">{{$setting->p_mail}}</a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="info-box">
                                        <div class="info-box_icon">
                                            <i class="fa-solid fa-location-dot"></i>
                                        </div>
                                        <div>
                                            <span class="info-box_subtitle">Office Address</span>
                                            <p class="info-box_text">{{$setting->location}}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section><!--==============================
Brand Area  
==============================-->
@php
     $settings = App\Models\Category::find(152);
      @endphp
    <div class="space-bottom overflow-hidden">
        <div class="container">
            <div class="row">
                <div class="brand-bg-wrap">
                    <div class="row">
                        <div class="col-12">
                            <div class="brand-1-top title-area text-center">
                                <h3 class="box-title">{{$settings->description}}</h3>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="swiper th-slider" id="brandSlider2" data-slider-options='{"breakpoints":{"0":{"slidesPerView":2},"576":{"slidesPerView":"2"},"768":{"slidesPerView":"3"},"992":{"slidesPerView":"4"},"1200":{"slidesPerView":"5"},"1400":{"slidesPerView":"6"}}}'>
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="brand-box">
                                            <a href="about.html">
                                                <img src="{{ asset('front') }}/assets/img/brand/brand_2_1.svg" alt="Brand Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="brand-box">
                                            <a href="about.html">
                                                <img src="{{ asset('front') }}/assets/img/brand/brand_2_2.svg" alt="Brand Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="brand-box">
                                            <a href="about.html">
                                                <img src="{{ asset('front') }}/assets/img/brand/brand_2_3.svg" alt="Brand Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="brand-box">
                                            <a href="about.html">
                                                <img src="{{ asset('front') }}/assets/img/brand/brand_2_4.svg" alt="Brand Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="brand-box">
                                            <a href="about.html">
                                                <img src="{{ asset('front') }}/assets/img/brand/brand_2_5.svg" alt="Brand Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="brand-box">
                                            <a href="about.html">
                                                <img src="{{ asset('front') }}/assets/img/brand/brand_2_6.svg" alt="Brand Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="brand-box">
                                            <a href="about.html">
                                                <img src="{{ asset('front') }}/assets/img/brand/brand_2_1.svg" alt="Brand Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="brand-box">
                                            <a href="about.html">
                                                <img src="{{ asset('front') }}/assets/img/brand/brand_2_2.svg" alt="Brand Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="brand-box">
                                            <a href="about.html">
                                                <img src="{{ asset('front') }}/assets/img/brand/brand_2_3.svg" alt="Brand Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="brand-box">
                                            <a href="about.html">
                                                <img src="{{ asset('front') }}/assets/img/brand/brand_2_4.svg" alt="Brand Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="brand-box">
                                            <a href="about.html">
                                                <img src="{{ asset('front') }}/assets/img/brand/brand_2_5.svg" alt="Brand Logo">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="brand-box">
                                            <a href="about.html">
                                                <img src="{{ asset('front') }}/assets/img/brand/brand_2_6.svg" alt="Brand Logo">
                                            </a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
