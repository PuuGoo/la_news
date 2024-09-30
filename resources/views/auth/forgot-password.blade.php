@extends('frontend.home_dashboard')

@section('home')

<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-12">
            <div class="contact-wrpp">
                <h4 class="contactAddess-title text-center">Forgot Password</h4>
                <p class="mb-4 text-sm text-gray-600">Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.</p>
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
                    <form method="POST" action="{{ route('password.email') }}">
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

                        <div style="display: none"></div>

                        <div class="main_section">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="contact-title">Email *</div>
                                    <div class="contact-form">
                                        <span class="wpcf7-form-control-wrap sub_title">
                                            <input
                                                id="email"
                                                type="email"
                                                name="email"
                                                value=""
                                                size="40"
                                                class="wpcf7-form-control wpcf7-text"
                                                aria-invalid="false"
                                                placeholder="Email" />
                                        </span>
                                    </div>
                                </div>

                            </div>

                            <p class="text-end"><a class="text-decoration-none text-black text-primary" href="{{route('password.request')}}">Forgot Password!</a></p>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="contact-btn">
                                        <input
                                            type="submit"
                                            value="Login Now"
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