@extends('frontend.home_dashboard')

@section('home')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<div class="container">


    <div class="row">
        <div class="col-md-4">

            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="contact-wrpp">


                        <figure class="authorPage-image">
                            <img alt="" src="{{!empty($userData->photo) && $userData->role == 'admin' ? asset('upload/admin_images/' . $userData->photo) : (!empty($userData->photo) ? asset('upload/user_images/' . $userData->photo) : asset('upload/avatar_default.png'))}}" class="avatar avatar-96 photo" height="96" width="96" loading="lazy">
                        </figure>
                        <h1 class="authorPage-name">
                            <a href=" "> {{$userData->name}} </a>
                        </h1>
                        <h6 class="authorPage-name">
                            {{$userData->email}}
                        </h6>



                        <ul>
                            <li><a href="{{route('dashboard')}}"><b>🟢 Your Profile </b></a> </li>
                            <li> <a href="{{route('user.change.password')}}"> <b>🔵 Change Password </b> </a> </li>
                            <li> <a href=""> <b>🟠 Read Later List </b> </a> </li>
                            <li> <a href="{{route('user.logout')}}"> <b>🟠 Logout </b> </a> </li>
                        </ul>

                    </div>
                </div>
            </div>


        </div>

        <div class="col-md-8">


            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="contact-wrpp">

                        <h4 class="contactAddess-title text-center">
                            User Account </h4>
                        <div role="form" class="wpcf7" id="wpcf7-f437-o1" lang="en-US" dir="ltr">
                            <div class="screen-reader-response">
                                <p role="status" aria-live="polite" aria-atomic="true"></p>
                                <ul></ul>
                            </div>
                            <form method="post" action="{{route('user.profile.edit')}}" enctype="multipart/form-data">
                                @csrf

                                @if (session('status'))
                                <div class="alert alert-success p-2" role="alert">
                                    {{session('status')}}
                                </div>
                                @elseif(session('error'))
                                <div class="alert alert-danger" role="alert">
                                    {{session('error')}}
                                </div>
                                @endif

                                <div style="display: none;">

                                </div>

                                <div class="main_section">
                                    <div class="row">


                                        <div class="col-md-12 col-sm-12">
                                            <div class="contact-title ">
                                                User Name *
                                            </div>
                                            <div class="contact-form">
                                                <span class="wpcf7-form-control-wrap sub_title"><input id="username" type="text" name="username" value="{{$userData->username}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false"></span>
                                            </div>
                                        </div>

                                        <div class="col-md-12 col-sm-12">
                                            <div class="contact-title ">
                                                Name *
                                            </div>
                                            <div class="contact-form">
                                                <span class="wpcf7-form-control-wrap sub_title"><input id="name" type="text" name="name" value="{{$userData->name}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false"></span>
                                            </div>
                                        </div>


                                        <div class="col-md-12 col-sm-12">
                                            <div class="contact-title ">
                                                Email *
                                            </div>
                                            <div class="contact-form">
                                                <span class="wpcf7-form-control-wrap sub_title"><input id="email" type="email" name="email" value="{{$userData->email}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false"></span>
                                            </div>
                                        </div>

                                        <div class="col-md-12 col-sm-12">
                                            <div class="contact-title ">
                                                Phone *
                                            </div>
                                            <div class="contact-form">
                                                <span class="wpcf7-form-control-wrap sub_title"><input id="phone" type="text" name="phone" value="{{$userData->phone}}" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false"></span>
                                            </div>
                                        </div>


                                        <div class="col-md-12 col-sm-12">
                                            <div class="contact-title ">
                                                Photo *
                                            </div>
                                            <div class="contact-form">
                                                <span class="wpcf7-form-control-wrap sub_title"><input id="image" type="file" name="photo" value="" size="40" class="wpcf7-form-control wpcf7-text" aria-invalid="false"></span>
                                            </div>
                                        </div>


                                        <div class="col-md-12 col-sm-12">
                                            <div class="contact-title ">

                                            </div>
                                            <div class="contact-form">
                                                <span class="wpcf7-form-control-wrap sub_title">
                                                    <img id="showImage" src="{{!empty($userData->photo) && $userData->role == 'admin' ? asset('upload/admin_images/' . $userData->photo) : (!empty($userData->photo) ? asset('upload/user_images/' . $userData->photo) : asset('upload/avatar_default.png'))}}" class="rounded-circle avatar-lg img-thumbnail"
                                                        alt="profile-image" width="100px" height="100px">
                                                </span>
                                            </div>
                                        </div>



                                    </div>




                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="contact-btn">
                                                <input type="submit" value="Save Changes" class="wpcf7-form-control has-spinner wpcf7-submit"><span class="wpcf7-spinner"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>




        </div>

    </div> <!--  // end row -->




</div>

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