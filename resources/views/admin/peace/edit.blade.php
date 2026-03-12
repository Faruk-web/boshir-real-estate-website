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
                <h4 class="page-title">Assurance of Peace Update</h4>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="tab-content">
                        <div class="tab-pane show active" id="basic-form-preview">
                            <form action="{{route('peace.update', ['id' => $privacy->id])}}" method="POST" enctype="multipart/form-data">
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
                                    <label for="inputEmail3" class="col-2 col-form-label">Consultation</label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->consultation}}" class="form-control @error('consultation') is-invalid @enderror" name="consultation" id="inputEmail3" placeholder="consultation"/>
                                        @error('consultation')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail3" class="col-2 col-form-label">Consultation Details</label>
                                    <div class="col-10">
                                        <textarea type="text" name="consultation_d" class="form-control @error('consultation_d') is-invalid @enderror" aria-describedby="emailHelp" placeholder="Enter consultation_d">{{$privacy->consultation_d}}</textarea>
                                        @error('consultation_d')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail3" class="col-2 col-form-label">Evaluation</label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->evaluation}}" class="form-control @error('evaluation') is-invalid @enderror" name="evaluation" id="inputEmail3" placeholder="evaluation"/>
                                        @error('evaluation')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail3" class="col-2 col-form-label">Evaluation Details</label>
                                    <div class="col-10">
                                        <textarea type="text" name="evaluation_d" class="form-control @error('evaluation_d') is-invalid @enderror" aria-describedby="emailHelp" placeholder="Enter evaluation_d">{{$privacy->evaluation_d}}</textarea>
                                        @error('evaluation_d')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail3" class="col-2 col-form-label">Strategy</label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->strategy}}" class="form-control @error('strategy') is-invalid @enderror" name="strategy" id="inputEmail3" placeholder="strategy"/>
                                        @error('strategy')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail3" class="col-2 col-form-label">Strategy Details</label>
                                    <div class="col-10">
                                        <textarea type="text" name="strategy_d" class="form-control @error('strategy_d') is-invalid @enderror" aria-describedby="emailHelp" placeholder="Enter strategy_d">{{$privacy->strategy_d}}</textarea>
                                        @error('strategy_d')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Video Limk</label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->link}}" class="form-control @error('link') is-invalid @enderror" name="link" id="inputEmail34" placeholder="link"/>
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

@endsection



