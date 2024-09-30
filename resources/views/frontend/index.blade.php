@extends('frontend.home_dashboard')

@section('home')

@section('title')
La News
@endsection

<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12">

        </div>
    </div>
</div>

<section class="themesBazar_section_one">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-8">
                <div class="row">
                    <div class="col-lg-7 col-md-7">
                        <div class="themesbazar_led_active owl-carousel owl-loaded owl-drag">



                            <div class="owl-stage-outer">
                                <div class="owl-stage"
                                    style="transform: translate3d(-1578px, 0px, 0px); transition: all 1s ease 0s; width: 3684px;">

                                    @foreach ($newspost_topslider as $topslider)
                                    <div class="owl-item" style="width: 506.25px; margin-right: 20px;">
                                        <div class="secOne_newsContent">
                                            <div class="sec-one-image">
                                                <a
                                                    href="{{url('news/details/' . $topslider->id . '/' . $topslider->news_title_slug)}}"><img
                                                        class="lazyload"
                                                        src="{{asset('upload/news/' . $topslider->image)}}"></a>
                                                <h6 class="sec-small-cat">
                                                    <a href=" ">
                                                        <!-- 8 September 2022, 09:31 PM -->
                                                        {{$topslider->created_at->format('d m Y')}}
                                                    </a>
                                                </h6>
                                                <h1 class="sec-one-title">
                                                    <a href=" ">{{$topslider->news_title}}</a>
                                                </h1>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach


                                </div>
                            </div>

                            <div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><i
                                        class="fa-solid fa-angle-left"></i></button>
                                <button type="button" role="presentation" class="owl-next"><i
                                        class="fa-solid fa-angle-right"></i></button>
                            </div>
                            <div class="owl-dots"><button role="button" class="owl-dot"><span></span></button><button
                                    role="button" class="owl-dot active"><span></span></button><button role="button"
                                    class="owl-dot"><span></span></button></div>
                        </div>


                    </div>
                    <div class="col-lg-5 col-md-5">

                        @foreach ($newspost_three as $section_three)
                        <div class="secOne-smallItem">
                            <div class="secOne-smallImg">
                                <a
                                    href="{{url('news/details/' . $section_three->id . '/' . $section_three->news_title_slug)}} "><img
                                        class="lazyload" src="{{asset('upload/news/' . $section_three->image)}}"></a>
                                <h5 class="secOne_smallTitle">
                                    <a
                                        href=" {{url('news/details/' . $section_three->id . '/' . $section_three->news_title_slug)}}">{{$section_three->news_title}}
                                    </a>
                                </h5>
                            </div>
                        </div>
                        @endforeach



                    </div>
                </div>
                <div class="sec-one-item2">
                    <div class="row">
                        @foreach ($newspost_nine as $section_nine)
                        <div class="themesBazar-3 themesBazar-m2">
                            <div class="sec-one-wrpp2">
                                <div class="secOne-news">
                                    <div class="secOne-image2">
                                        <a
                                            href="{{url('news/details/' . $section_nine->id . '/' . $section_nine->news_title_slug)}} "><img
                                                class="lazyload"
                                                src="{{asset('upload/news/' . $section_nine->image)}}"></a>
                                    </div>
                                    <h4 class="secOne-title2">
                                        <a
                                            href=" {{url('news/details/' . $section_nine->id . '/' . $section_nine->news_title_slug)}}">{{$section_nine->news_title}}
                                        </a>
                                    </h4>
                                </div>
                                <div class="cat-meta">
                                    <a
                                        href=" {{url('news/details/' . $section_nine->id . '/' . $section_nine->news_title_slug)}}">
                                        <i class="lar la-newspaper"></i>
                                        {{$section_nine->created_at->format('d m Y')}}
                                    </a>
                                </div>
                            </div>
                        </div>
                        @endforeach

                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4">
                <div class="live-item">
                    <div class="live_title">
                        <a href=" ">LIVE TV </a>
                        <div class="themesBazar"></div>
                    </div>
                    <div class="popup-wrpp">
                        <div class="live_image">
                            <img width="700" height="400" src="{{asset('upload/video/' .$live_tv->live_image)}}"
                                class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt=""
                                loading="lazy">
                            <div data-mfp-src="#mymodal" class="live-icon modal-live"> <i class="las la-play"></i>
                            </div>
                        </div>
                        <div class="live-popup">
                            <div id="mymodal" class="mfp-hide" role="dialog" aria-labelledby="modal-titles"
                                aria-describedby="modal-contents">
                                <div id="modal-contents">
                                    <div class="embed-responsive embed-responsive-16by9 embed-responsive-item">
                                        <iframe width="560" height="315" src="{{$live_tv->live_url}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="themesBazar_widget">
                    <h3 style="margin-top:5px"> OLD NEWS </h3>
                </div>

                <form class="wordpress-date" action="{{route('search.by.date')}}" method="post">
                    @csrf
                    <input type="date" id="wordpress" placeholder="Select Date" autocomplete="off" value="" name="date"
                        class="hasDatepicker">
                    <input type="submit" value="Search">
                </form>

                <div class="recentPopular">
                    <ul class="nav nav-pills" id="recentPopular-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <div class="nav-link active" id="recent-tab" data-bs-toggle="pill" data-bs-target="#recent"
                                role="tab" aria-controls="recent" aria-selected="false"> LATEST </div>
                        </li>
                        <li class="nav-item" role="presentation">
                            <div class="nav-link" id="popular-tab" data-bs-toggle="pill" data-bs-target="#popular"
                                role="tab" aria-controls="popular" aria-selected="false"> POPULAR </div>
                        </li>
                    </ul>
                </div>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane active show  fade" id="recent" role="tabpanel" aria-labelledby="recent">
                        <div class="news-titletab">

                            @foreach ($newsLatest as $key => $item)
                            <div class="tab-image tab-border">
                                <a href=" {{url('news/details/' . $item->id . '/' . $item->news_title_slug)}}"><img
                                        class="lazyload" src="{{asset('upload/news/' . $item->image)}}"></a>
                                <a href="{{url('news/details/' . $item->id . '/' . $item->news_title_slug)}} "
                                    class="tab-icon"><i class="la la-play"></i></a>
                                <h4 class="tab_hadding"><a
                                        href="{{url('news/details/' . $item->id . '/' . $item->news_title_slug)}} ">{{$item->news_title}}
                                    </a></h4>
                            </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="tab-pane fade" id="popular" role="tabpanel" aria-labelledby="popular">
                        <div class="news-titletab">
                            @foreach ($newsPopular as $key => $item)
                            <div class="tab-image tab-border">
                                <a href=" {{url('news/details/' . $item->id . '/' . $item->news_title_slug)}}"><img
                                        class="lazyload" src="{{asset('upload/news/' . $item->image)}}"></a>
                                <a href=" {{url('news/details/' . $item->id . '/' . $item->news_title_slug)}}"
                                    class="tab-icon"><i class="la la-play"></i></a>
                                <h4 class="tab_hadding"><a
                                        href="{{url('news/details/' . $item->id . '/' . $item->news_title_slug)}} ">{{$item->news_title}}
                                    </a></h4>
                            </div>
                            @endforeach


                        </div>
                    </div>
                </div>
                <div class="themesBazar_widget">
                    <h3 style="margin-top:5px"> Our Like Page </h3>
                </div>
                <div class="facebook-content">
                    <iframe src=" " width="260" height="170" style="border:none;overflow:hidden" scrolling="no"
                        frameborder="0" allowfullscreen="true"
                        allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                </div>
                <div class="themesBazar_widget">
                    <h3 style="margin-top:5px"> Our Like Page </h3>
                </div>
                <div class="facebook-content">
                    <div class="twitter-timeline twitter-timeline-rendered"
                        style="display: flex; width: 410px; max-width: 100%; margin-top: 0px; margin-bottom: 0px;">
                        <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true"
                            allowfullscreen="true" class=""
                            style="position: static; visibility: visible; width: 279px; height: 220px; display: block; flex-grow: 1;"
                            title="Twitter Timeline" src=" "></iframe>
                    </div>
                    <script async="" src="assets/js/widgets.js" charset="utf-8"></script>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-6">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="{{asset('upload/banner/' . $banner->home_one)}}"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="{{asset('upload/banner/' . $banner->home_two)}}"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="section-two">
    <div class="container">
        <div class="secTwo-color">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="themesBazar_cat6">
                        <ul class="nav nav-pills" id="categori-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <div class="nav-link active" id="categori-tab1" data-bs-toggle="pill"
                                    data-bs-target="#Info-tabs1" role="tab" aria-controls="Info-tabs1"
                                    aria-selected="true">
                                    ALL
                                </div>
                            </li>

                            @foreach ($catelogies as $key => $cat)

                            <li class="nav-item" role="presentation">
                                <div class="nav-link" id="categori-tab2" data-bs-toggle="pill"
                                    data-bs-target="#Info-tabs{{$key + 2}}" role="tab" aria-controls="Info-tabs2"
                                    aria-selected="false">
                                    {{$cat->category_name}}
                                </div>
                            </li>

                            @endforeach

                            <span class="themeBazar6"></span>
                        </ul>
                    </div>

                    <div class="tab-content" id="pills-tabContent">

                        <div class="tab-pane fade active show" id="Info-tabs1" role="tabpanel"
                            aria-labelledby="categori-tab1 ">
                            <div class="row">
                                @foreach ($news_eight as $item)

                                <div class="themesBazar-4 themesBazar-m2">
                                    <div class="sec-two-wrpp">
                                        <div class="section-two-image">

                                            <a href="{{url('news/details/' . $item->id . '/' . $item->news_title_slug)}} "><img class="lazyload" src="{{'upload/news/' . $item->image}}"></a>
                                        </div>
                                        <h5 class="sec-two-title">
                                            <a href="{{url('news/details/' . $item->id . '/' . $item->news_title_slug)}} ">{{$item->news_title}} </a>
                                        </h5>
                                    </div>
                                </div>

                                @endforeach

                            </div>
                        </div>

                        @foreach ($catelogies as $key => $cat)
                        <div class="tab-pane fade" id="Info-tabs{{$key + 2}}" role="tabpanel" aria-labelledby="categori-tab2">
                            <div class="row">

                                @php
                                $news_cats = App\Models\NewsPost::where('category_id', $cat->id)->orderBy('id', "ASC")->limit(8)->get();
                                @endphp

                                @foreach ($news_cats as $item)

                                <div class="themesBazar-4 themesBazar-m2">
                                    <div class="sec-two-wrpp">
                                        <div class="section-two-image">
                                            <a href=" {{url('news/details/' . $item->id . '/' . $item->news_title_slug)}} "><img class="lazyload" src="{{'upload/news/' . $item->image}}"></a>
                                        </div>
                                        <h5 class="sec-two-title">
                                            <a href=" {{url('news/details/' . $item->id . '/' . $item->news_title_slug)}} ">{{$item->news_title}} </a>
                                        </h5>
                                    </div>
                                </div>

                                @endforeach

                            </div>
                        </div>
                        @endforeach



                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-6">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="{{asset('upload/banner/' . $banner->home_three)}}"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="{{asset('upload/banner/' . $banner->home_four)}}"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="section-three">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8">

                <h2 class="themesBazar_cat07"> <a href="{{ url('news/category/'.$skip_cat_0->id.'/'.$skip_cat_0->category_slug) }}"> <i class="las la-align-justify"></i> {{ $skip_cat_0->category_name }} </a> </h2>

                <div class="row">
                    <div class="col-lg-6 col-md-6">

                        @foreach($skip_news_0 as $item)
                        @if($loop->index < 1)
                            <div class="secThree-bg">
                            <div class="sec-theee-image">
                                <a href=" {{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}"><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                            </div>
                            <h4 class="secThree-title">
                                <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }} "> {{ $item->news_title }} </a>
                            </h4>
                    </div>
                    @endif
                    @endforeach


                </div>

                <div class="col-lg-6 col-md-6">
                    <div class="bg2">

                        @foreach($skip_news_0 as $item)
                        @if($loop->index > 0)
                        <div class="secThree-smallItem">
                            <div class="secThree-smallImg">
                                <a href=" {{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}"><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                                <a href=" {{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}" class="small-icon3"><i class="la la-play"></i></a>
                                <h5 class="secOne_smallTitle">
                                    <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }} ">{{ $item->news_title }} </a>
                                </h5>
                            </div>
                        </div>
                        @endif
                        @endforeach




                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-4">



            <div class="map-area" style="width:100%; background: #eff3f4;">
                <div style="padding:5px 35px 0px 35px;">
                    <img class="lazyload" src="{{ asset('frontend/assets/images/lazy.jpg') }}"></a>
                    <br> <br>
                    <img class="lazyload" src="{{ asset('frontend/assets/images/lazy.jpg') }}"></a>

                </div>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <div class="row">
        <div class="col-lg-4 col-md-4">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="assets/images/biggapon-1.gif"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-4">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="assets/images/biggapon-1.gif"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-md-4">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="assets/images/biggapon-1.gif"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="section-four">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">

                <h2 class="themesBazar_cat04"> <a href="{{ url('news/category/'.$skip_cat_2->id.'/'.$skip_cat_2->category_slug) }}"> <i class="las la-align-justify"></i> {{ $skip_cat_2->category_name }} </a> </h2>

                <div class="secFour-slider owl-carousel owl-loaded owl-drag">

                    <div class="owl-stage-outer">
                        <div class="owl-stage" style="transform: translate3d(-3294px, 0px, 0px); transition: all 1s ease 0s; width: 4792px;">

                            @foreach($skip_news_2 as $item)
                            <div class="owl-item" style="width: 289.5px; margin-right: 10px;">
                                <div class="secFour-wrpp ">
                                    <div class="secFour-image">
                                        <a href=" {{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}"><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                                        <h5 class="secFour-title">
                                            <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }} ">{{ $item->news_title }}</a>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                            @endforeach



                        </div>
                    </div>
                    <div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><i class="las la-angle-left"></i></button><button type="button" role="presentation" class="owl-next"><i class="las la-angle-right"></i></button></div>
                    <div class="owl-dots"><button role="button" class="owl-dot"><span></span></button><button role="button" class="owl-dot active"><span></span></button></div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-6">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="assets/images/biggapon-1.gif"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="assets/images/biggapon-1.gif"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="section-five">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">

                <h2 class="themesBazar_cat01"> <a href="{{ url('news/category/'.$skip_cat_1->id.'/'.$skip_cat_1->category_slug) }}">{{ $skip_cat_1->category_name }}</a> <span> <a href="{{ url('news/category/'.$skip_cat_1->id.'/'.$skip_cat_1->category_slug) }}"> More <i class="las la-arrow-circle-right"></i> </a></span> </h2>

                <div class="white-bg">

                    @foreach($skip_news_1 as $item)
                    @if($loop->index < 1)
                        <div class="secFive-image">
                        <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }} "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                        <div class="secFive-title">
                            <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">{{ $item->news_title }}</a>
                        </div>
                </div>
                @endif
                @endforeach


                @foreach($skip_news_1 as $item)
                @if($loop->index > 0)
                <div class="secFive-smallItem">
                    <div class="secFive-smallImg">
                        <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }} "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                        <h5 class="secFive_title2">
                            <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">
                                {{ $item->news_title }}</a>
                        </h5>
                    </div>
                </div>
                @endif
                @endforeach


            </div>
        </div>
        <div class="col-lg-4 col-md-4">

            <h2 class="themesBazar_cat01"> <a href=" {{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}"> {{ $skip_cat_2->category_name }} </a> <span> <a href=" ">More <i class="las la-arrow-circle-right"></i> </a></span> </h2>

            <div class="white-bg">

                @foreach($skip_news_7 as $item)
                @if($loop->index < 1)
                    <div class="secFive-image">
                    <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }} "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                    <div class="secFive-title">
                        <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">{{ $item->news_title }}</a>
                    </div>
            </div>
            @endif
            @endforeach


            @foreach($skip_news_7 as $item)
            @if($loop->index > 0)
            <div class="secFive-smallItem">
                <div class="secFive-smallImg">
                    <a href=" {{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}"><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                    <h5 class="secFive_title2">
                        <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">
                            {{ $item->news_title }}</a>
                    </h5>
                </div>
            </div>
            @endif
            @endforeach


        </div>
    </div>
    <div class="col-lg-4 col-md-4">

        <h2 class="themesBazar_cat01"> <a href=" "> SPORTS </a> <span> <a href=" "> More <i class="las la-arrow-circle-right"></i> </a></span> </h2>

        <div class="white-bg">

            @foreach($skip_news_8 as $item)
            @if($loop->index < 1)
                <div class="secFive-image">
                <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }} "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                <div class="secFive-title">
                    <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">{{ $item->news_title }}</a>
                </div>
        </div>
        @endif
        @endforeach


        @foreach($skip_news_8 as $item)
        @if($loop->index > 0)
        <div class="secFive-smallItem">
            <div class="secFive-smallImg">
                <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }} "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                <h5 class="secFive_title2">
                    <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">
                        {{ $item->news_title }}</a>
                </h5>
            </div>
        </div>
        @endif
        @endforeach


    </div>
    </div>
    </div>
    </div>
</section>

<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-6">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="assets/images/biggapon-1.gif"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="assets/images/biggapon-1.gif"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
    </div>
</div>



<section class="section-five">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">

                <h2 class="themesBazar_cat01"> <a href=" "> EDUCATION </a> <span> <a href=" "> More <i class="las la-arrow-circle-right"></i> </a></span> </h2>

                <div class="white-bg">

                    @foreach($skip_news_8 as $item)
                    @if($loop->index < 1)
                        <div class="secFive-image">
                        <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                        <div class="secFive-title">
                            <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">{{ $item->news_title }}</a>
                        </div>
                </div>
                @endif
                @endforeach


                @foreach($skip_news_8 as $item)
                @if($loop->index > 0)
                <div class="secFive-smallItem">
                    <div class="secFive-smallImg">
                        <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                        <h5 class="secFive_title2">
                            <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">
                                {{ $item->news_title }}</a>
                        </h5>
                    </div>
                </div>
                @endif
                @endforeach


            </div>
        </div>
        <div class="col-lg-4 col-md-4">

            <h2 class="themesBazar_cat01"> <a href=" "> SCI-TECH </a> <span> <a href=" "> More <i class="las la-arrow-circle-right"></i> </a></span> </h2>

            <div class="white-bg">

                @foreach($skip_news_6 as $item)
                @if($loop->index < 1)
                    <div class="secFive-image">
                    <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                    <div class="secFive-title">
                        <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">{{ $item->news_title }}</a>
                    </div>
            </div>
            @endif
            @endforeach


            @foreach($skip_news_6 as $item)
            @if($loop->index > 0)
            <div class="secFive-smallItem">
                <div class="secFive-smallImg">
                    <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                    <h5 class="secFive_title2">
                        <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">
                            {{ $item->news_title }}</a>
                    </h5>
                </div>
            </div>
            @endif
            @endforeach


        </div>
    </div>
    <div class="col-lg-4 col-md-4">

        <h2 class="themesBazar_cat01"> <a href=" "> SCI-TECH </a> <span> <a href=" ">More <i class="las la-arrow-circle-right"></i> </a></span> </h2>

        <div class="white-bg">

            @foreach($skip_news_6 as $item)
            @if($loop->index < 1)
                <div class="secFive-image">
                <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                <div class="secFive-title">
                    <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">{{ $item->news_title }}</a>
                </div>
        </div>
        @endif
        @endforeach


        @foreach($skip_news_6 as $item)
        @if($loop->index > 0)
        <div class="secFive-smallItem">
            <div class="secFive-smallImg">
                <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                <h5 class="secFive_title2">
                    <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">
                        {{ $item->news_title }}</a>
                </h5>
            </div>
        </div>
        @endif
        @endforeach


    </div>
    </div>
    </div>
    </div>
</section>





<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-6">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="assets/images/biggapon-1.gif"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="assets/images/biggapon-1.gif"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="section-seven">
    <div class="container">

        <h2 class="themesBazar_cat01"> <a href=" "> {{ $skip_cat_4->category_name }} </a> <span> <a href="{{ url('news/category/'.$skip_cat_4->id.'/'.$skip_cat_4->category_slug) }}"> More <i class="las la-arrow-circle-right"></i> </a></span> </h2>

        <div class="secSecven-color">
            <div class="row">


                <div class="col-lg-5 col-md-5">

                    @foreach($skip_news_4 as $item)
                    @if($loop->index < 1)

                        <div class="black-bg">

                        <div class="secSeven-image">
                            <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a> <a href=" " class="video-icon6"><i class="la la-play"></i></a>
                        </div>
                        <h6 class="secSeven-title">
                            <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">{{ $item->news_title }} </a>
                        </h6>
                        <div class="secSeven-details">


                            <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}"> More..</a>
                        </div>

                </div>

                @endif
                @endforeach

            </div>


            <div class="col-lg-7 col-md-7">
                <div class="row">

                    @foreach($skip_news_4 as $item)
                    @if($loop->index > 0)
                    <div class="themesBazar-2 themesBazar-m2">
                        <div class="secSeven-wrpp ">
                            <div class="secSeven-image2">
                                <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                                <h5 class="secSeven-title2">
                                    <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">{{ $item->news_title }} </a>
                                </h5>
                            </div>
                        </div>
                    </div>
                    @endif
                    @endforeach




                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<div class="container">
    <div class="row">
        <div class="col-lg-6 col-md-6">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="assets/images/biggapon-1.gif"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="themesBazar_widget">
                <div class="textwidget">
                    <p><img loading="lazy" class="aligncenter size-full wp-image-74" src="assets/images/biggapon-1.gif"
                            alt="" width="100%" height="auto"></p>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="section-five">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">

                <h2 class="themesBazar_cat04"> <a href=" "> <i class="las la-align-justify"></i> ENTERTAINMENT </a> </h2>

                <div class="white-bg">

                    @foreach($skip_news_1 as $item)
                    @if($loop->index < 1)
                        <div class="secFive-image">
                        <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                        <div class="secFive-title">
                            <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">{{ $item->news_title }}</a>
                        </div>
                </div>
                @endif
                @endforeach


                @foreach($skip_news_1 as $item)
                @if($loop->index > 0)
                <div class="secFive-smallItem">
                    <div class="secFive-smallImg">
                        <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                        <h5 class="secFive_title2">
                            <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">
                                {{ $item->news_title }}</a>
                        </h5>
                    </div>
                </div>
                @endif
                @endforeach


            </div>
        </div>
        <div class="col-lg-4 col-md-4">

            <h2 class="themesBazar_cat04"> <a href=" "> <i class="las la-align-justify"></i> FEATURE </a> </h2>

            <div class="white-bg">

                @foreach($skip_news_1 as $item)
                @if($loop->index < 1)
                    <div class="secFive-image">
                    <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                    <div class="secFive-title">
                        <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">{{ $item->news_title }}</a>
                    </div>
            </div>
            @endif
            @endforeach


            @foreach($skip_news_1 as $item)
            @if($loop->index > 0)
            <div class="secFive-smallItem">
                <div class="secFive-smallImg">
                    <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                    <h5 class="secFive_title2">
                        <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">
                            {{ $item->news_title }}</a>
                    </h5>
                </div>
            </div>
            @endif
            @endforeach


        </div>
    </div>
    <div class="col-lg-4 col-md-4">

        <h2 class="themesBazar_cat04"> <a href=" "> <i class="las la-align-justify"></i> FACEBOOK NEWS </a> </h2>

        <div class="white-bg">

            @foreach($skip_news_1 as $item)
            @if($loop->index < 1)
                <div class="secFive-image">
                <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                <div class="secFive-title">
                    <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">{{ $item->news_title }}</a>
                </div>
        </div>
        @endif
        @endforeach


        @foreach($skip_news_1 as $item)
        @if($loop->index > 0)
        <div class="secFive-smallItem">
            <div class="secFive-smallImg">
                <a href=" "><img class="lazyload" src="{{ asset("upload/news/" . $item->image) }}"></a>
                <h5 class="secFive_title2">
                    <a href="{{ url('news/details/'.$item->id.'/'.$item->news_title_slug) }}">
                        {{ $item->news_title }}</a>
                </h5>
            </div>
        </div>
        @endif
        @endforeach


    </div>
    </div>
    </div>
    </div>
</section>






<section class="section-ten">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8">

                <h2 class="themesBazar_cat01"> <a href=" "> <i class="las la-camera"></i> PHOTO GALLERY </a></h2>

                <div class="homeGallery owl-carousel owl-loaded owl-drag">







                    <div class="owl-stage-outer">
                        <div class="owl-stage"
                            style="transform: translate3d(-4764px, 0px, 0px); transition: all 1s ease 0s; width: 5558px;">
                            @foreach ($photo_gallery as $photo_item)

                            <div class="owl-item" style="width: 784px; margin-right: 10px;">
                                <div class="item">
                                    <div class="photo">
                                        <a class="themeGallery" href="{{asset('upload/multi/' . $photo_item->photo_gallery)}}">
                                            <img src="{{asset('upload/multi/' . $photo_item->photo_gallery)}}" alt="PHOTO"></a>
                                        <h3 class="photoCaption">
                                            <a href=" ">{{$photo_item->post_date}} </a>
                                        </h3>
                                    </div>
                                </div>
                            </div>

                            @endforeach

                        </div>
                    </div>
                    <div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><i
                                class="las la-angle-left"></i></button><button type="button" role="presentation"
                            class="owl-next disabled"><i class="las la-angle-right"></i></button></div>
                    <div class="owl-dots disabled"></div>
                </div>
                <div class="homeGallery1 owl-carousel owl-loaded owl-drag">







                    <div class="owl-stage-outer">
                        <div class="owl-stage"
                            style="transition: all 1s ease 0s; width: 2515px; transform: translate3d(-463px, 0px, 0px);">
                            @foreach ($photo_gallery as $photo_item)

                            <div class="owl-item" style="width: 122.333px; margin-right: 10px;">
                                <div class="item">
                                    <div class="phtot2">
                                        <a class="themeGallery" href="{{asset('upload/multi/' . $photo_item->photo_gallery)}}">
                                            <img src="{{asset('upload/multi/' . $photo_item->photo_gallery)}}" alt="PHOTO"></a>
                                    </div>
                                </div>
                            </div>

                            @endforeach

                        </div>
                    </div>
                    <div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><span
                                aria-label="Previous">‹</span></button><button type="button" role="presentation"
                            class="owl-next"><span aria-label="Next">›</span></button></div>
                    <div class="owl-dots"><button role="button" class="owl-dot active"><span></span></button><button
                            role="button" class="owl-dot"><span></span></button><button role="button"
                            class="owl-dot"><span></span></button><button role="button"
                            class="owl-dot"><span></span></button><button role="button"
                            class="owl-dot"><span></span></button><button role="button"
                            class="owl-dot"><span></span></button><button role="button"
                            class="owl-dot"><span></span></button></div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4">

                <h2 class="themesBazar_cat01"> <a href=" "> <i class="las la-video"></i> VIDEO GALLERY </a></h2>

                <div class="white-bg">

                    @foreach ($video_gallery as $item_video)

                    <div class="secFive-smallItem">
                        <div class="secFive-smallImg">
                            <img src="{{asset('upload/video/' . $item_video->video_image)}}">
                            <a href="{{$item_video->video_url}}" class="home-video-icon popup"><i
                                    class="las la-video"></i></a>
                            <h5 class="secFive_title2">
                                <a href="{{$item_video->video_url}}" class="popup"> {{$item_video->video_title}} </a>
                            </h5>
                        </div>
                    </div>

                    @endforeach

                </div>
            </div>
        </div>
    </div>
</section>
@endsection