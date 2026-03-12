@extends('admin.master')
@section('title')
    Privacy & Policy Manage | {{env('APP_NAME')}}
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
                <h4 class="page-title">Law Firm Manage</h4>
            </div>
        </div>
    </div>
    <!-- end row -->
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <table id="alternative-page-datatable" class="table table-striped dt-responsive nowrap w-100">
                        <thead>
                        <tr>
                            <th>S.N</th>
                            <th>Name</th>
                            <th>Primary Image</th>
                            <th>Secoundery Image</th>
                            <th>Case</th>
                            <th>Client</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($privacy as $data)
                        <tr>
                            <td>{{$loop->iteration}}</td>
                            <td>{{$data->name}}</td>
                            <td><img src="{{asset($data->image)}}" alt="" style="height: 50px"></td>
                            <td><img src="{{asset($data->s_image)}}" alt="" style="height: 50px"></td>
                            <td>{{$data->issue}}</td>
                            <td>{{$data->client}}</td>
                            <td>
                                <a href="{{route('business.edit', ['id' => $data->id])}}" class="btn btn-success btn-sm" title="Edit">
                                    <i class="ri-edit-box-fill"></i>
                                </a>
                            </td>
                        </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div> <!-- end card body-->
            </div> <!-- end card -->
        </div><!-- end col-->
    </div>

@endsection



