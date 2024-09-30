@extends('admin.admin_dashboard')

@section('admin')
<div class="content">

    <!-- Start Content-->
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box">

                    <h4 class="page-title">Pending Review <span class="btn btn-danger">{{count($review)}}</span></h4>
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
                                    <th>News</th>
                                    <th>User</th>
                                    <th>Comment</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>


                            <tbody>
                                @foreach ($review as $key => $item)

                                <tr>
                                    <td>{{$key +1}}</td>
                                    <td><img src="{{!empty($item->news->image) ? asset('upload/news/' . $item->news->image) : asset('upload/no_image.jpg')}}" class="rounded-circle avatar-lg img-thumbnail"
                                            alt="profile-image" width="50px" height="50px"></td>
                                    <td>{{$item->news->news_title}}</td>
                                    <td>{{$item->user->name }}</td>
                                    <td>{{Str::limit($item->comment, 25)}}</td>
                                    <td>
                                        @if ($item->status == 0)
                                        <span class="badge text-bg-danger p-1">Pending</span>
                                        @else
                                        <span class="badge text-bg-success p-1">Publish</span>
                                        @endif

                                    </td>
                                    <td>
                                        <a href="{{route('review.approve', $item->id)}}" class="btn btn-primary rounded-pill waves-effect waves-light">Approve</a>
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