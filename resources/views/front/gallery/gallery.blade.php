@extends('front.master')
@section('title')
Gallery
@endsection
@section('body')
    @php
        $setting = App\Models\Category::find(129);
      @endphp

 <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <h1 class="display-1 text-white animated slideInDown">Members {{$setting->category_name}}</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb text-uppercase mb-0">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-primary active" aria-current="page">Members {{$setting->description}}</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h4 class="section-title">Projects Gallery</h4>
                <h1 class="display-5 mb-4">We Are Creative Architecture View For Your Dream Home</h1>
            </div>
            <div class="row g-0 team-items">
                 @foreach($gallery as $id => $image)
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item position-relative">
                        <div class="position-relative">
                            <img class="img-fluid" src="{{ asset($image) }}" alt="">
                            
                        </div>
                        <div class="bg-light text-center p-4">
                            <h3 class="mt-2">Architect Name</h3>
                            <span class="text-primary">Designation</span>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <!-- Team End -->
@endsection
