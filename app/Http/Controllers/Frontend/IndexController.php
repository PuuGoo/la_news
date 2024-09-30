<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\Category;
use App\Models\LiveTv;
use App\Models\NewsPost;
use App\Models\PhotoGallery;
use App\Models\Review;
use App\Models\SubCategory;
use App\Models\User;
use App\Models\VideoGallery;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;




class IndexController extends Controller
{
    public function Index()
    {

        // Top Slider
        $newspost_topslider = NewsPost::where('status', 1)->where('top_slider', 1)->limit(3)->get();

        // Section three
        $newspost_three = NewsPost::where('status', 1)->where('first_section_three', 1)->limit(3)->get();

        // Section nine
        $newspost_nine = NewsPost::where('status', 1)->where('first_section_nine', 1)->limit(9)->get();

        $newsLatest = NewsPost::where('status', 1)->latest()->limit(8)->get();
        $newsPopular = NewsPost::where('status', 1)->orderBy('view_count', 'DESC')->limit(8)->get();

        $banner = Banner::findOrFail(1);

        $photo_gallery = PhotoGallery::latest()->get();

        $video_gallery = VideoGallery::latest()->get();

        $live_tv = LiveTv::findOrFail(1);

        $news_eight = NewsPost::where('status', 1)->orderBy('id', 'ASC')->limit(8)->get();
        $catelogies = Category::orderBy('category_name', 'ASC')->get();

        $skip_cat_0 = Category::skip(0)->first();
        $skip_news_0 = NewsPost::where('status', 1)->where('category_id', $skip_cat_0->id)->orderBy('id', 'DESC')->limit(5)->get();

        $skip_cat_2 = Category::skip(2)->first();
        $skip_news_2 = NewsPost::where('status', 1)->where('category_id', $skip_cat_2->id)->orderBy('id', 'DESC')->limit(6)->get();

        $skip_cat_1 = Category::skip(1)->first();
        $skip_news_1 = NewsPost::where('status', 1)->where('category_id', $skip_cat_1->id)->orderBy('id', 'DESC')->limit(3)->get();

        $skip_cat_4 = Category::skip(4)->first();
        $skip_news_4 = NewsPost::where('status', 1)->where('category_id', $skip_cat_4->id)->orderBy('id', 'DESC')->limit(5)->get();

        $skip_cat_6 = Category::skip(6)->first();
        $skip_news_6 = NewsPost::where('status', 1)->where('category_id', $skip_cat_6->id)->orderBy('id', 'DESC')->limit(4)->get();

        $skip_cat_7 = Category::skip(7)->first();
        $skip_news_7 = NewsPost::where('status', 1)->where('category_id', $skip_cat_7->id)->orderBy('id', 'DESC')->limit(4)->get();

        $skip_cat_8 = Category::skip(8)->first();
        $skip_news_8 = NewsPost::where('status', 1)->where('category_id', $skip_cat_8->id)->orderBy('id', 'DESC')->limit(4)->get();


        return view('frontend.index', compact('newspost_topslider', 'newspost_three', 'newspost_nine', 'newsLatest', 'newsPopular', 'banner', 'photo_gallery', 'video_gallery', 'live_tv', 'news_eight', 'catelogies', 'skip_cat_0', 'skip_news_0', 'skip_cat_2', 'skip_news_2', 'skip_cat_1', 'skip_news_1', 'skip_cat_4', 'skip_news_4', 'skip_cat_6', 'skip_news_6', 'skip_cat_7', 'skip_news_7', 'skip_cat_8', 'skip_news_8'));
    }

    public function NewsDetails($id, $slug)
    {
        $news = NewsPost::findOrFail($id);

        $tags = $news->tags;
        $tags_all = explode(',', $tags);

        $newskey = 'blog' . $news->id;
        if (!Session($newskey)) {
            $news->increment('view_count');
            Session::put($newskey, 1);
        }

        $newsLatest = NewsPost::where('status', 1)->latest()->limit(8)->get();
        $newsPopular = NewsPost::where('status', 1)->orderBy('view_count', 'DESC')->limit(8)->get();

        $cat_id = $news->category_id;
        $relatedNews = NewsPost::where('category_id', $cat_id)->where('id', '!=', $id)->orderBy('id', 'DESC')->limit(6)->get();

        $review = Review::where('news_id', $id)->latest()->limit(5)->get();

        return view('frontend.news.news_details', compact('news', 'tags_all', 'relatedNews', 'newsLatest', 'newsPopular', 'review'));
    }

    public function CatWiseNews($id, $slug)
    {
        $news = NewsPost::where('status', 1)->where('category_id', $id)->latest()->get();

        $breadcrumb_cat = Category::findOrFail($id);

        $news_two = NewsPost::where('status', 1)->where('category_id', $id)->latest()->limit(3)->get();

        $newsLatest = NewsPost::where('status', 1)->latest()->limit(8)->get();
        $newsPopular = NewsPost::where('status', 1)->orderBy('view_count', 'DESC')->limit(8)->get();


        return view('frontend.news.news_category', compact('news', 'breadcrumb_cat', 'news_two', 'newsLatest', 'newsPopular'));
    }

    public function SubCatWiseNews($id, $slug)
    {
        $news = NewsPost::where('status', 1)->where('subcategory_id', $id)->latest()->get();

        $breadcrumb_subcat = SubCategory::findOrFail($id);

        $news_two = NewsPost::where('status', 1)->where('subcategory_id', $id)->latest()->limit(3)->get();

        $newsLatest = NewsPost::where('status', 1)->latest()->limit(8)->get();
        $newsPopular = NewsPost::where('status', 1)->orderBy('view_count', 'DESC')->limit(8)->get();


        return view('frontend.news.news_subcategory', compact('news', 'breadcrumb_subcat', 'news_two', 'newsLatest', 'newsPopular'));
    }

    public function SearchByDate(Request $request)
    {
        $date = new DateTime($request->date);
        $formatDate = $date->format('d-m-Y');

        $news = NewsPost::where('status', 1)->where('post_date', $formatDate)->latest()->get();

        $newsLatest = NewsPost::where('status', 1)->latest()->limit(8)->get();
        $newsPopular = NewsPost::where('status', 1)->orderBy('view_count', 'DESC')->limit(8)->get();


        return view('frontend.news.search_by_date', compact('news', 'formatDate', 'newsLatest', 'newsPopular'));
    }

    public function SearchByKeyword(Request $request)
    {

        $request->validate([
            'key_search' => 'required'
        ]);

        $keyword = strtolower($request->key_search);
        $news = NewsPost::where('news_title', 'LIKE', "%{$keyword}%")->get();

        $newsLatest = NewsPost::where('status', 1)->latest()->limit(8)->get();
        $newsPopular = NewsPost::where('status', 1)->orderBy('view_count', 'DESC')->limit(8)->get();


        return view('frontend.news.search_by_keyword', compact('news', 'keyword', 'newsLatest', 'newsPopular'));
    }

    public function ReporterNews($id)
    {

        $reporter = User::findOrFail($id);

        $news = NewsPost::where('user_id', $id)->get();
        return view('frontend.reporter.reporter_news_post', compact('reporter', 'news'));
    }
}
