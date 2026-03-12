@extends('admin.master')
@section('title')
    Privacy & Policy Edit | {{env('APP_NAME')}}
@endsection

@section('body')
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <form class="d-flex">
                        <div class="input-group">
                            <input type="text" class="form-control form-control-light" id="dash-daterange">
                            <span class="input-group-text bg-primary border-primary text-white">
                                                    <i class="mdi mdi-calendar-range font-13"></i>
                                                </span>
                        </div>
                        <a href="javascript: void(0);" class="btn btn-primary ms-2">
                            <i class="mdi mdi-autorenew"></i>
                        </a>
                        <a href="javascript: void(0);" class="btn btn-primary ms-1">
                            <i class="mdi mdi-filter-variant"></i>
                        </a>
                    </form>
                </div>
                <h4 class="page-title">Website Setting Update Update</h4>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="tab-content">
                        <div class="tab-pane show active" id="basic-form-preview">
                            <form action="{{route('setting.update', ['id' => $privacy->id])}}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="row mb-3">
                                    <label for="inputEmail3" class="col-2 col-form-label">Name</label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->name}}" class="form-control @error('name') is-invalid @enderror" name="name" id="inputEmail3" placeholder="name"/>
                                        @error('title')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Primary Phone</label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->p_phone}}" class="form-control @error('p_phone') is-invalid @enderror" name="p_phone" id="inputEmail34" placeholder="Phone"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Secondary Phone</label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->s_phone}}" class="form-control @error('s_phone') is-invalid @enderror" name="s_phone" id="inputEmail34" placeholder="Phone"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Default Phone</label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->d_phone}}" class="form-control @error('d_phone') is-invalid @enderror" name="d_phone" id="inputEmail34" placeholder="Phone"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Primary Email</label>
                                    <div class="col-10">
                                        <input type="email" value="{{$privacy->p_mail}}" class="form-control @error('p_mail') is-invalid @enderror" name="p_mail" id="inputEmail34" placeholder="Email"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Secondary Email</label>
                                    <div class="col-10">
                                        <input type="email" value="{{$privacy->s_mail}}" class="form-control @error('s_mail') is-invalid @enderror" name="s_mail" id="inputEmail34" placeholder="Email"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Location</label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->location}}" class="form-control @error('location') is-invalid @enderror" name="location" id="inputEmail34" placeholder="location"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-2 col-form-label">Website Logo Size: 200 X 60</label>
                                    <div class="col-10">
                                        <input type="file" name="logo" class="form-control @error('logo') is-invalid @enderror" id="exampleInputPassword1">
                                        <img src="{{asset($privacy->logo)}}" alt="" style="height: 100px">
                                        @error('logo')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                
                                <div class="row mb-3">
                                    <label class="col-2 col-form-label">Website Footer Logo size: 80 X 90</label>
                                    <div class="col-10">
                                        <input type="file" name="f_logo" class="form-control @error('f_logo') is-invalid @enderror" id="exampleInputPassword1">
                                        <img src="{{asset($privacy->f_logo)}}" alt="" style="height: 100px">
                                        @error('image')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail3" class="col-2 col-form-label">Website Footer Details</label>
                                    <div class="col-10">
                                        <textarea type="text" id="summernote" name="privacy" class="form-control @error('privacy') is-invalid @enderror" aria-describedby="emailHelp" placeholder="Enter privacy">{{$privacy->privacy}}</textarea>
                                        @error('privacy')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail3" class="col-2 col-form-label"></label>
                                    <div class="col-10">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div> <!-- end preview-->
                    </div> <!-- end tab-content-->

                </div> <!-- end card-body-->
            </div> <!-- end card-->
        </div>
        <!-- end col -->
    </div>
    <!-- end row -->

    <script>
        $('#summernote').summernote({
            tabsize: 2,
            height: 300
        });
    </script>

@endsection



