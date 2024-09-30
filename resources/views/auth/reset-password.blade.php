@extends('frontend.home_dashboard')

@section('home')
<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-12">
            <div class="contact-wrpp">
                <h4 class="contactAddess-title text-center">Reset Password</h4>
                <div
                    role="form"
                    class="wpcf7"
                    id="wpcf7-f437-o1"
                    lang="en-US"
                    dir="ltr">
                    <div class="screen-reader-response">
                        <p role="status" aria-live="polite" aria-atomic="true"></p>
                        <ul></ul>
                    </div>
                    <form method="POST" action="{{ route('password.store') }}">
                        @csrf

                        <!-- Password Reset Token -->
                        <input type="hidden" name="token" value="{{ $request->route('token') }}">

                        <div style="display: none"></div>

                        <div class="main_section">
                            <div class="row">

                                <div class="col-md-12 col-sm-12 d-none">
                                    <div class="contact-title">Email *</div>
                                    <div class="contact-form">
                                        <span class="wpcf7-form-control-wrap sub_title">
                                            <input
                                                id="email"
                                                type="email"
                                                name="email"
                                                value="{{$request->email}}"
                                                size="40"
                                                class="wpcf7-form-control wpcf7-text"
                                                aria-invalid="false"
                                                placeholder="Email" />
                                        </span>
                                    </div>
                                </div>

                                <div class="col-md-12 col-sm-12">
                                    <div class="contact-title">Password *</div>
                                    <div class="contact-form">
                                        <span class="wpcf7-form-control-wrap sub_title">
                                            <input
                                                id="password"
                                                type="password"
                                                name="password"
                                                value=""
                                                size="40"
                                                class="wpcf7-form-control wpcf7-text"
                                                aria-invalid="false"
                                                placeholder="Password" />
                                        </span>
                                    </div>
                                </div>

                                <div class="col-md-12 col-sm-12">
                                    <div class="contact-title">Confirm Password *</div>
                                    <div class="contact-form">
                                        <span class="wpcf7-form-control-wrap sub_title">
                                            <input
                                                id="password_confirmation"
                                                type="password"
                                                name="password_confirmation"
                                                value=""
                                                size="40"
                                                class="wpcf7-form-control wpcf7-text"
                                                aria-invalid="false"
                                                placeholder="Confirm Password" />
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="contact-btn">
                                        <input
                                            type="submit"
                                            value="Register Now"
                                            class="wpcf7-form-control has-spinner wpcf7-submit" /><span class="wpcf7-spinner"></span>
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
@endsection