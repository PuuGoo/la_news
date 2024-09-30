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
                            <a href="{{route('add.admin')}}" class="btn btn-blue waves-effect waves-light">Add Admin</a>
                        </ol>
                    </div>
                    <h4 class="page-title">Admin All <span class="btn btn-danger">{{count($alladminuser)}}</span></h4>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <p class="text-muted font-13 mb-4">
                            DataTables has most features enabled by default, so all you need to do to use it with your own tables is to call the construction
                            function:
                            <code>$().DataTable();</code>.
                        </p>

                        <table id="basic-datatable" class="table dt-responsive nowrap w-100">
                            <thead>
                                <tr>
                                    <th>SN</th>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Status</th>
                                    <th>Role</th>
                                    <th>Action</th>
                                </tr>
                            </thead>


                            <tbody>
                                @foreach ($alladminuser as $key => $item)

                                <tr>
                                    <td>{{$key +1}}</td>
                                    <td><img src="{{!empty($item->photo) ? asset('upload/admin_images/' . $item->photo) : asset('upload/no_image.jpg')}}" class="rounded-circle avatar-lg img-thumbnail"
                                            alt="profile-image" width="50px" height="50px"></td>
                                    <td>{{$item->name}}</td>
                                    <td>{{$item->email }}</td>
                                    <td>{{$item->phone}}</td>

                                    <td>
                                        @if ($item->status === 'active')
                                        <span class="badge text-bg-success p-1">Active</span>
                                        @else
                                        <span class="badge text-bg-danger p-1">Inactive</span>
                                        @endif

                                    </td>

                                    <td>
                                        @foreach ($item->roles as $role)
                                        <span class="badge badge-pill bg-danger">{{$role->name}}</span>
                                        @endforeach

                                    </td>

                                    <td>
                                        <a href="{{route('edit.admin', $item->id)}}" class="btn btn-primary rounded-pill waves-effect waves-light">Edit</a>
                                        <a href="{{route('delete.admin', $item->id)}}" id="delete" class="btn btn-danger rounded-pill waves-effect waves-light">Delete</a>

                                        @if ($item->status == 'active')
                                        <a href="{{route('inactive.admin.user', $item->id)}}" class="btn btn-primary rounded-pill waves-effect waves-light" title="Inactive"><i class="fa-solid fa-thumbs-down"></i></a>
                                        @else
                                        <a href="{{route('active.admin.user', $item->id)}}" class="btn btn-primary rounded-pill waves-effect waves-light" title="Active"><i class="fa-solid fa-thumbs-up"></i></a>
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