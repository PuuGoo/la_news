@extends('frontend.home_dashboard')

@section('home')

<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-12">
            <div class="contact-wrpp">
                <h4 class="contactAddess-title text-center">Resend Verification Email</h4>
                <p>Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another.')</p>
                <span>A new verification link has been sent to the email address you provided during registration.</span>
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
                    <form method="POST" action="{{ route('verification.send') }}">
                        @csrf


                        <div style="display: none"></div>

                        <div>
                            <x-primary-button style="color:black !important">
                                {{ __('Resend Verification Email') }}
                            </x-primary-button>
                        </div>

                    </form>

                    <form method="POST" action="{{ route('logout') }}">
                        @csrf

                        <button type="submit" class="btn btn-primary mt-3">
                            {{ __('Log Out') }}
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection