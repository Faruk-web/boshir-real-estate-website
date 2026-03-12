@extends('front.master')
@section('title')
    Contact us
@endsection
@section('body')
     @php
     $setting = App\Models\Setting::find(1);
     $settings = App\Models\Category::find(133);
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
Contact Area  
==============================-->
@php
     $settings = App\Models\Category::find(134);
      @endphp
    <div class="contact-area-2 space-top" id="contact-sec">
        <div class="container">
            <div class="row gy-4 justify-content-center">
                <div class="contact-icon-wrap">
                    <div class="info-box">
                        <div class="info-box_icon">
                            <img src="{{ asset('front') }}/assets/img/icon/contact-icon-1.svg" alt="shape-img">
                        </div>
                        <div class="info-contnt">
                            <h4 class="footer-info-title">Location</h4>
                            <p class="info-box_text">{{$setting->location}}</p>
                        </div>
                    </div>
                    <div class="info-box">
                        <div class="info-box_icon">
                            <img src="{{ asset('front') }}/assets/img/icon/contact-icon-2.svg" alt="shape-img">
                        </div>
                        <div class="info-contnt">
                            <h4 class="footer-info-title">Phone</h4>

                            <p class="info-box_text">
                                <a target="_blank" href="tel:{{$setting->p_phone}}" class="info-box_link">{{$setting->p_phone}}</a>
                                <a target="_blank" href="tel:{{$setting->s_phone}}" class="info-box_link">{{$setting->s_phone}}</a>
                                <a target="_blank" href="tel:{{$setting->d_phone}}" class="info-box_link">{{$setting->d_phone}}</a>
                            </p>
                        </div>
                    </div>
                    <div class="info-box">
                        <div class="info-box_icon">
                            <img src="{{ asset('front') }}/assets/img/icon/contact-icon-3.svg" alt="shape-img">
                        </div>
                        <div class="info-contnt">
                            <h4 class="footer-info-title">Email</h4>
                            <p class="info-box_text">
                                <a href="mailto:{{$setting->p_mail}}" class="info-box_link">{{$setting->p_mail}}</a>
                                <a href="mailto:{{$setting->s_mail}}" class="info-box_link">{{$setting->s_mail}}</a>
                            </p>
                        </div>
                    </div>
                    <div class="info-box">
                        <div class="info-box_icon">
                            <img src="{{ asset('front') }}/assets/img/icon/contact-icon-4.svg" alt="shape-img">
                        </div>

                        <div class="info-contnt">
                            <h4 class="footer-info-title">{{$settings->category_name}}</h4>
                            <p class="info-box_text">{{$settings->description}}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @php
     $settings = App\Models\Category::find(135);
      @endphp
    <div class="space-top">
        <div class="container">
            <div class="row gy-4">
                <div class="col-lg-7">
                    <form action="{{route('contact')}}" method="POST" class="contact-form style-4 " enctype="multipart/form-data">
                    @csrf
                        <h3 class="form-title text-start">{{$settings->description}}</h3>
                        <div class="row">
                            <div class="form-group col-md-12">
                                <input type="text" class="form-control" name="name" id="name" placeholder="Name">
                                <i class="fas fa-user"></i>
                            </div>
                            <div class="form-group col-md-6">
                                <input type="text" class="form-control" name="phone" id="phone" placeholder="phone">
                                <i class="fas fa-user"></i>
                                <small id="phoneError"></small>
                            </div>
                            <div class="form-group col-md-6">
                                <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="form-group col-12">
                                <textarea name="message" id="message" cols="30" rows="3" class="form-control" placeholder="Your Message"></textarea>
                                <i class="fas fa-pencil"></i>
                            </div>
                            <div class="form-btn col-12">
                                <button type="submit" class="th-btn style2">Send Message <i class="fa-regular fa-arrow-right-long"></i></button>
                            </div>
                        </div>
                        <p class="form-messages mb-0 mt-3"></p>
                    </form>
                </div>
                <div class="col-lg-5">
                    <div class="contact-page-thumb">
                        <img src="{{ asset('front') }}/assets/img/contact/contact-right.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--==============================
Map Area  
==============================-->
    <div class="space">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contact-map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d913.0928835398264!2d90.41233361441613!3d23.734126978204902!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b9001a73c661%3A0x190ce08404c76761!2sR.K.%20Roy%20%26%20Associates!5e0!3m2!1sbn!2sbd!4v1738750220831!5m2!1sbn!2sbd" allowfullscreen="" loading="lazy"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
