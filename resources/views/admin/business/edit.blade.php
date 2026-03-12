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
                <h4 class="page-title">Law Firm Update</h4>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="tab-content">
                        <div class="tab-pane show active" id="basic-form-preview">
                            <form action="{{route('business.update', ['id' => $privacy->id])}}" method="POST" enctype="multipart/form-data">
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
                                    <label for="inputEmail3" class="col-2 col-form-label">Details</label>
                                    <div class="col-10">
                                        <textarea type="text" id="summernote" name="details" class="form-control @error('details') is-invalid @enderror" aria-describedby="emailHelp" placeholder="Enter privacy">{{$privacy->details}}</textarea>
                                        @error('details')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label class="col-2 col-form-label">Primary Image Size: 372 X 290</label>
                                    <div class="col-10">
                                        <input type="file" name="image" class="form-control @error('image') is-invalid @enderror" id="exampleInputPassword1">
                                        <img src="{{asset($privacy->image)}}" alt="" style="height: 100px">
                                        @error('image')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                
                                <div class="row mb-3">
                                    <label class="col-2 col-form-label">Secondery Image size: 372 X 290</label>
                                    <div class="col-10">
                                        <input type="file" name="s_image" class="form-control @error('s_image') is-invalid @enderror" id="exampleInputPassword1">
                                        <img src="{{asset($privacy->s_image)}}" alt="" style="height: 100px">
                                        @error('image')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Case </label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->issue}}" class="form-control @error('issue') is-invalid @enderror" name="issue" id="inputEmail34" placeholder="issue"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Case No</label>
                                    <div class="col-10">
                                        <input type="number" value="{{$privacy->issue_no}}" class="form-control @error('issue_no') is-invalid @enderror" name="issue_no" id="inputEmail34" placeholder="issue no"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Advocate</label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->advocate}}" class="form-control @error('advocate') is-invalid @enderror" name="advocate" id="inputEmail34" placeholder="advocate"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Advocate No</label>
                                    <div class="col-10">
                                        <input type="number" value="{{$privacy->advocate_no}}" class="form-control @error('advocate_no') is-invalid @enderror" name="advocate_no" id="inputEmail34" placeholder="advocate_no"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Client</label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->client}}" class="form-control @error('client') is-invalid @enderror" name="client" id="inputEmail34" placeholder="client"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Client No</label>
                                    <div class="col-10">
                                        <input type="number" value="{{$privacy->client_no}}" class="form-control @error('client_no') is-invalid @enderror" name="client_no" id="inputEmail34" placeholder="client_no"/>
                                    </div>
                                </div>
                                
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Award</label>
                                    <div class="col-10">
                                        <input type="text" value="{{$privacy->award}}" class="form-control @error('award') is-invalid @enderror" name="award" id="inputEmail34" placeholder="award"/>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="inputEmail34" class="col-2 col-form-label">Award No</label>
                                    <div class="col-10">
                                        <input type="number" value="{{$privacy->award_no}}" class="form-control @error('award_no') is-invalid @enderror" name="award_no" id="inputEmail34" placeholder="award_no"/>
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



