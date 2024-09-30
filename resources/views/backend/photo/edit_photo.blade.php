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
                            <li class="breadcrumb-item active">Edit Multi Photo</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Edit Multi Photo</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <!-- Form row -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">

                        <form id="myForm" method="post" action="{{route('update.photo.gallery')}}" enctype="multipart/form-data">
                            @csrf

                            <input type="hidden" name="id" value="{{$photo_gallery->id}}">
                            <div class="row">

                                <div class="form-group col-md-8 mb-3">
                                    <label for="inputEmail4" class="form-label">Multi Photo Gallery</label>
                                    <input type="file" class="form-control" id="image" name="multi_image">
                                </div>

                                <div class="form-group col-md-8 mb-3">
                                    <label for="inputEmail4" class="form-label"></label>
                                    <img id="showImage" src="{{asset('upload/multi/' . $photo_gallery->photo_gallery)}}" alt="" width="400px" height="200px">
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