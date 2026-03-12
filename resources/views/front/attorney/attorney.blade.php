@extends('front.master')
@section('title')
    Contact us
@endsection
@section('body')
      @php
        $setting = App\Models\Category::find(122);
      @endphp
<div class="breadcumb-wrapper " data-bg-src="{{ asset('front') }}/assets/img/bg/breadcrumb-bg.jpg" data-overlay="title" data-opacity="8">
        <div class="container">
            <div class="breadcumb-content">
                <h1 class="breadcumb-title">{{$setting->category_name}}</h1>
                <ul class="breadcumb-menu">
                    <li><a href="{{route('home')}}">Home</a></li>
                    <li>{{$setting->description}}</li>
                </ul>
            </div>
        </div>
    </div>
    <!--==============================
Team Area  
==============================-->
     @php
        $setting = App\Models\Category::find(123);
      @endphp
    <section class="space" id="team-sec" data-bg-src="{{ asset('front') }}/assets/img/bg/team-2-shape-bg.png">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xxl-8 col-xl-9 ">
                    <div class="title-area text-center">
                        <span class="sub-title justify-content-center">{{$setting->category_name}}</span>
                        <h2 class="sec-title">{{$setting->description}}</h2>
                    </div>
                </div>
                <div></div>
            </div>
            <div class="row gy-4">
                <!-- Single Item -->
                @foreach($advocate as $item)
                <div class="col-xl-4 col-lg-4 col-sm-6">
                    <div class="team-card style-2">
                        <div class="team-img">
                            <img src="{{ asset($item->image) }}" alt="Team">
                        </div>
                        <div class="team-content">
                            <h3 class="box-title"><a href="{{route('attorney.details',$item->id)}}">{{ $item->name }}</a></h3>
                            <span class="team-desig">{{ $item->title }}</span>

                            <div class="team-social">
                            <a href="{{route('attorney.details',$item->id)}}" class="link-btn"> Read More <i class="fa-regular fa-arrow-right-long"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
