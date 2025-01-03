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
                            <a href="{{route('add.video.gallery')}}" class="btn btn-blue waves-effect waves-light">Add Video</a>
                        </ol>
                    </div>
                    <h4 class="page-title">Video Gallery All</h4>
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
                                    <th>Title</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>


                            <tbody>
                                @foreach ($video as $key => $item)

                                <tr>
                                    <td>{{$key +1}}</td>
                                    <td><img src="{{asset('upload/video/' . $item->video_image)}}" width="50px" height="50px" alt=""></td>
                                    <td>{{$item->video_title}}</td>
                                    <td>{{$item->post_date}}</td>
                                    <td>
                                        @if (Auth::user()->can('video.edit'))
                                        <a href="{{route('edit.video.gallery', $item->id)}}" class="btn btn-primary rounded-pill waves-effect waves-light">Edit</a>
                                        @endif
                                        @if (Auth::user()->can('video.delete'))
                                        <a href="{{route('delete.video.gallery', $item->id)}}" id="delete" class="btn btn-danger rounded-pill waves-effect waves-light">Delete</a>
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