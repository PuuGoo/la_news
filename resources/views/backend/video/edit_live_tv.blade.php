@extends('admin.admin_dashboard')

@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<div class="content">

    <!-- Start Content-->
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item active">Edit Live Tv</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Edit Live Tv</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <!-- Form row -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <form id="myForm" method="post" action="{{route('update.live.tv')}}" enctype="multipart/form-data">
                            @csrf

                            <input type="hidden" name="id" value="{{$live->id}}">

                            <div class="row">
                                <div class="form-group col-md-6 mb-3">
                                    <label for="inputEmail4" class="form-label">Live Tv Url</label>
                                    <input type="text" class="form-control" id="inputEmail4" name="live_url" value="{{$live->live_url}}">
                                </div>
                            </div>

                            <div class="row">

                                <div class="form-group col-md-6 mb-3">
                                    <label for="inputEmail4" class="form-label">Live Tv Image</label>
                                    <input type="file" class="form-control" id="image" name="live_image">
                                </div>

                                <div class="form-group col-md-6 mb-3">
                                    <label for="inputEmail4" class="form-label"></label>
                                    <img id="showImage" src="{{asset('upload/video/' . $live->live_image )}}" class="rounded-circle avatar-lg img-thumbnail"
                                        alt="profile-image">
                                </div>

                            </div>

                            <button type="submit" class="btn btn-primary waves-effect waves-light">Save Changes</button>

                        </form>

                    </div> <!-- end card-body -->
                </div> <!-- end card-->
            </div> <!-- end col -->
        </div>
        <!-- end row -->

    </div> <!-- container -->

</div> <!-- content -->



<script>
    $(document).ready(function() {
        $('#image').change(function(e) {
            var reader = new FileReader();
            reader.readAsDataURL(e.target.files['0']);
            reader.onload = function(e) {
                $('#showImage').attr('src', e.target.result);
            }
        })
    })
</script>

@endsection