<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\NewsPost;
use App\Models\SubCategory;
use App\Models\User;
use Illuminate\Http\Request;
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


        return view('frontend.index', compact('newspost_topslider', 'newspost_three', 'newspost_nine', 'newsLatest', 'newsPopular'));
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

        return view('frontend.news.news_details', compact('news', 'tags_all', 'relatedNews', 'newsLatest', 'newsPopular'));
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

    public function NewsSearch()
    {


        return view('frontend.news.news_search_keyword');
    }

    public function NewsSearchKeyword(Request $request)
    {
        $keyword = strtolower($request->key_search);
        $newskeyword = NewsPost::where('news_title', 'LIKE', "%{$keyword}%")->get();

        return view('frontend.news.news_search_keyword', compact('newskeyword', 'keyword'));
    }
}
