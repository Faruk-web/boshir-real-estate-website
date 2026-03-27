@extends('front.master')
@section('title')
Gallery
@endsection
@section('body')
    @php
        $setting = App\Models\Category::find(129);
        $projectgallery = App\Models\Category::find(130);
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


    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h4 class="section-title">{{$projectgallery->category_name}}</h4>
                <h1 class="display-5 mb-4">{{$projectgallery->description}}</h1>
            </div>
            <div class="row g-0 team-items">
                
                @foreach($gallery as $item)
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item position-relative">
                        <div class="position-relative">

                            {{-- 👉 যদি image থাকে --}}
                            @if(!empty($item->multi_image))
                                <img class="img-fluid" src="{{ asset($item->multi_image) }}" alt="">
                            
                            {{-- 👉 যদি image না থাকে (video link থাকে) --}}
                            @elseif(!empty($item->link))
                                 <iframe 
                                    width="300" 
                                    height="250" 
                                    src="{{ $item->link }}" 
                                    frameborder="0" 
                                    allowfullscreen>
                                </iframe>
                            @endif

                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <!-- Team End -->
@endsection
