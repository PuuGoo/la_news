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
                            <img alt="" src="{{!empty($userData->photo) ? asset('upload/user_images/' . $userData->photo) : asset('upload/no_image.jpg')}}" class="avatar avatar-96 photo" height="96" width="96" loading="lazy">
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
                            Change Password </h4>
                        <div role="form" class="wpcf7" id="wpcf7-f437-o1" lang="en-US" dir="ltr">
                            <div class="screen-reader-response">
                                <p role="status" aria-live="polite" aria-atomic="true"></p>
                                <ul></ul>
                            </div>
                            <form method="post" action="{{route('user.update.password')}}">
                                @csrf

                                @if (session('status'))
                                <div class="alert alert-success p-2" role="alert">
                                    {{session('status')}}
                                </div>
                                @elseif(session('error'))
                                <div class="alert alert-danger p-2" role="alert">
                                    {{session('error')}}
                                </div>
                                @endif

                                <div style="display: none;">

                                </div>

                                <div class="main_section">
                                    <div class="row">


                                        <div class="col-md-12 col-sm-12">
                                            <div class="contact-title ">
                                                Old Password *
                                            </div>
                                            <div class="contact-form">
                                                <span class="wpcf7-form-control-wrap sub_title">
                                                    <input type="password" class="form-control @error('old_password') is-invalid @enderror " id="old_password" name="old_password">
                                                    @error('old_password')
                                                    <span class="text-danger">{{$message}}</span>
                                                    @enderror
                                                </span>
                                            </div>
                                        </div>

                                        <div class="col-md-12 col-sm-12">
                                            <div class="contact-title ">
                                                New Password *
                                            </div>
                                            <div class="contact-form">
                                                <span class="wpcf7-form-control-wrap sub_title">
                                                    <input type="password" class="form-control @error('new_password') is-invalid @enderror " id="new_password" name="new_password">
                                                    @error('new_password')
                                                    <span class="text-danger">{{$message}}</span>
                                                    @enderror
                                                </span>
                                            </div>
                                        </div>

                                        <div class="col-md-12 col-sm-12">
                                            <div class="contact-title ">
                                                Confirm Password *
                                            </div>
                                            <div class="contact-form">
                                                <span class="wpcf7-form-control-wrap sub_title">
                                                    <input type="password" class="form-control @error('new_password_confirmation') is-invalid @enderror " id="new_password_confirmation" name="new_password_confirmation">
                                                    @error('new_password_confirmation')
                                                    <span class="text-danger">{{$message}}</span>
                                                    @enderror
                                                </span>
                                            </div>
                                        </div>

                                    </div>




                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="contact-btn">
                                                <input type="submit" value="Change Password" class="wpcf7-form-control has-spinner wpcf7-submit"><span class="wpcf7-spinner"></span>
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



@endsection