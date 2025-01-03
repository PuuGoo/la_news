@extends('admin.admin_dashboard')

@section('admin')
<div class="content">

    <!-- Start Content-->
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <a href="{{route('add.photo.gallery')}}" class="btn btn-blue waves-effect waves-light">Add Photo</a>
                        </ol>
                    </div>
                    <h4 class="page-title">Photo Gallery All</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <table id="basic-datatable" class="table dt-responsive nowrap w-100">
                            <thead>
                                <tr>
                                    <th>SN</th>
                                    <th>Image</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>


                            <tbody>
                                @foreach ($photo as $key => $item)

                                <tr>
                                    <td>{{$key +1}}</td>
                                    <td><img src="{{asset('upload/multi/' . $item->photo_gallery)}}" width="50px" height="50px" alt=""></td>
                                    <td>{{$item->post_date}}</td>
                                    <td>
                                        @if (Auth::user()->can('photo.edit'))
                                        <a href="{{route('edit.photo.gallery', $item->id)}}" class="btn btn-primary rounded-pill waves-effect waves-light">Edit</a>
                                        @endif
                                        @if (Auth::user()->can('photo.delete'))
                                        <a href="{{route('delete.photo.gallery', $item->id)}}" id="delete" class="btn btn-danger rounded-pill waves-effect waves-light">Delete</a>
                                        @endif
                                    </td>
                                </tr>

                                @endforeach


                            </tbody>
                        </table>

                    </div> <!-- end card body-->
                </div> <!-- end card -->
            </div><!-- end col-->
        </div>
        <!-- end row-->

    </div> <!-- container -->

</div> <!-- content -->
@endsection