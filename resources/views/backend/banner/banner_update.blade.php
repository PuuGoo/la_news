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
                            <li class="breadcrumb-item active">Update Banner</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Update Banner</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <!-- Form row -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <form id="myForm" method="post" action="{{route('banners.update')}}"
                            enctype="multipart/form-data">
                            @csrf

                            <input type="hidden" name="id" value="{{$banner->id}}">
                            <div class="row">

                                <div class="form-group col-md-6 mb-3">
                                    <label for="example-fileinput" class="form-label">Home Banner One</label>
                                    <input type="file" name="home_one" id="image" class="form-control">
                                </div>

                                <div class="form-group col-md-6 mb-3">
                                    <label for="example-fileinput" class="form-label"></label>
                                    <img id="showImage"
                                        src="{{!empty($banner->home_one) ? asset('upload/banner/' . $banner->home_one) : asset('upload/no_image.jpg')}}"
                                        class="" alt="profile-image" style="width: 400px; height: 60px;">
                                </div>

                                <div class="form-group col-md-6 mb-3">
                                    <label for="example-fileinput" class="form-label">Home Banner Two</label>
                                    <input type="file" name="home_two" id="image2" class="form-control">
                                </div>

                                <div class="form-group col-md-6 mb-3">
                                    <label for="example-fileinput" class="form-label"></label>
                                    <img id="showImage2"
                                        src="{{!empty($banner->home_two) ? asset('upload/banner/' . $banner->home_two) : asset('upload/no_image.jpg')}}"
                                        class="" alt="profile-image" style="width: 400px; height: 60px;">
                                </div>

                                <div class="form-group col-md-6 mb-3">
                                    <label for="example-fileinput" class="form-label">Home Banner Three</label>
                                    <input type="file" name="home_three" id="image3" class="form-control">
                                </div>

                                <div class="form-group col-md-6 mb-3">
                                    <label for="example-fileinput" class="form-label"></label>
                                    <img id="showImage3"
                                        src="{{!empty($banner->home_three) ? asset('upload/banner/' . $banner->home_three) : asset('upload/no_image.jpg')}}"
                                        class="" alt="profile-image" style="width: 400px; height: 60px;">
                                </div>

                                <div class="form-group col-md-6 mb-3">
                                    <label for="example-fileinput" class="form-label">Home Banner Four</label>
                                    <input type="file" name="home_four" id="image4" class="form-control">
                                </div>

                                <div class="form-group col-md-6 mb-3">
                                    <label for="example-fileinput" class="form-label"></label>
                                    <img id="showImage4"
                                        src="{{!empty($banner->home_four) ? asset('upload/banner/' . $banner->home_four) : asset('upload/no_image.jpg')}}"
                                        class="" alt="profile-image" style="width: 400px; height: 60px;">
                                </div>

                                <div class="form-group col-md-6 mb-3">
                                    <label for="example-fileinput" class="form-label">News Category Banner</label>
                                    <input type="file" name="news_category_one" id="image5" class="form-control">
                                </div>

                                <div class="form-group col-md-6 mb-3">
                                    <label for="example-fileinput" class="form-label"></label>
                                    <img id="showImage5"
                                        src="{{!empty($banner->news_category_one) ? asset('upload/banner/' . $banner->news_category_one) : asset('upload/no_image.jpg')}}"
                                        class="" alt="profile-image" style="width: 400px; height: 60px;">
                                </div>

                                <div class="form-group col-md-6 mb-3">
                                    <label for="example-fileinput" class="form-label">News Details Banner</label>
                                    <input type="file" name="news_details_one" id="image6" class="form-control">
                                </div>

                                <div class="form-group col-md-6 mb-3">
                                    <label for="example-fileinput" class="form-label"></label>
                                    <img id="showImage6"
                                        src="{{!empty($banner->news_details_one) ? asset('upload/banner/' . $banner->news_details_one) : asset('upload/no_image.jpg')}}"
                                        class="" alt="profile-image" style="width: 400px; height: 60px;">
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

    $(document).ready(function() {
        $('#image2').change(function(e) {
            var reader = new FileReader();
            reader.readAsDataURL(e.target.files['0']);
            reader.onload = function(e) {
                $('#showImage2').attr('src', e.target.result);
            }
        })
    })

    $(document).ready(function() {
        $('#image3').change(function(e) {
            var reader = new FileReader();
            reader.readAsDataURL(e.target.files['0']);
            reader.onload = function(e) {
                $('#showImage3').attr('src', e.target.result);
            }
        })
    })

    $(document).ready(function() {
        $('#image4').change(function(e) {
            var reader = new FileReader();
            reader.readAsDataURL(e.target.files['0']);
            reader.onload = function(e) {
                $('#showImage4').attr('src', e.target.result);
            }
        })
    })

    $(document).ready(function() {
        $('#image5').change(function(e) {
            var reader = new FileReader();
            reader.readAsDataURL(e.target.files['0']);
            reader.onload = function(e) {
                $('#showImage5').attr('src', e.target.result);
            }
        })
    })

    $(document).ready(function() {
        $('#image6').change(function(e) {
            var reader = new FileReader();
            reader.readAsDataURL(e.target.files['0']);
            reader.onload = function(e) {
                $('#showImage6').attr('src', e.target.result);
            }
        })
    })
</script>

@endsection