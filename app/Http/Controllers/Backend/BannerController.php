<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class BannerController extends Controller
{
    public function AllBanners()
    {
        $banner = Banner::findOrFail(1);
        return view("backend.banner.banner_update", compact("banner"));
    }

    public function BannersUpdate(Request $request)
    {
        $banner_id = $request->id;

        if ($request->file('home_one')) {

            $banner = Banner::findOrFail($banner_id);
            unlink('upload/banner/' . $banner->home_one);

            $image1 = $request->file('home_one');
            $name_gen1 = hexdec(uniqid()) . '.' . $image1->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $image1 = $manager->read($image1);
            $image1 = $image1->resize(725, 100)->save('upload/banner/' . $name_gen1);
            $save_url1 = $name_gen1;

            Banner::findOrFail($banner_id)->update([
                'home_one' => $save_url1
            ]);

            $notification = array(
                'message' => 'Banner Updated Successfully!',
                'alert-type' => 'info',
            );

            return redirect()->route('all.banners')->with($notification);
        }

        if ($request->file('home_two')) {

            $banner = Banner::findOrFail($banner_id);
            unlink('upload/banner/' . $banner->home_two);

            $image2 = $request->file('home_two');
            $name_gen2 = hexdec(uniqid()) . '.' . $image2->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $image2 = $manager->read($image2);
            $image2 = $image2->resize(725, 100)->save('upload/banner/' . $name_gen2);
            $save_url2 = $name_gen2;

            Banner::findOrFail($banner_id)->update([
                'home_two' => $save_url2
            ]);

            $notification = array(
                'message' => 'Banner Updated Successfully!',
                'alert-type' => 'info',
            );

            return redirect()->route('all.banners')->with($notification);
        }

        if ($request->file('home_three')) {

            $banner = Banner::findOrFail($banner_id);
            unlink('upload/banner/' . $banner->home_three);

            $image3 = $request->file('home_three');
            $name_gen3 = hexdec(uniqid()) . '.' . $image3->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $image3 = $manager->read($image3);
            $image3 = $image3->resize(725, 100)->save('upload/banner/' . $name_gen3);
            $save_url3 = $name_gen3;

            Banner::findOrFail($banner_id)->update([
                'home_three' => $save_url3
            ]);

            $notification = array(
                'message' => 'Banner Updated Successfully!',
                'alert-type' => 'info',
            );

            return redirect()->route('all.banners')->with($notification);
        }

        if ($request->file('home_four')) {

            $banner = Banner::findOrFail($banner_id);
            unlink('upload/banner/' . $banner->home_four);

            $image4 = $request->file('home_four');
            $name_gen4 = hexdec(uniqid()) . '.' . $image4->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $image4 = $manager->read($image4);
            $image4 = $image4->resize(725, 100)->save('upload/banner/' . $name_gen4);
            $save_url4 = $name_gen4;

            Banner::findOrFail($banner_id)->update([
                'home_four' => $save_url4
            ]);

            $notification = array(
                'message' => 'Banner Updated Successfully!',
                'alert-type' => 'info',
            );

            return redirect()->route('all.banners')->with($notification);
        }

        if ($request->file('news_category_one')) {

            $banner = Banner::findOrFail($banner_id);
            unlink('upload/banner/' . $banner->news_category_one);

            $image5 = $request->file('news_category_one');
            $name_gen5 = hexdec(uniqid()) . '.' . $image5->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $image5 = $manager->read($image5);
            $image5 = $image5->resize(725, 100)->save('upload/banner/' . $name_gen5);
            $save_url5 = $name_gen5;

            Banner::findOrFail($banner_id)->update([
                'news_category_one' => $save_url5
            ]);

            $notification = array(
                'message' => 'Banner Updated Successfully!',
                'alert-type' => 'info',
            );

            return redirect()->route('all.banners')->with($notification);
        }

        if ($request->file('news_details_one')) {

            $banner = Banner::findOrFail($banner_id);
            unlink('upload/banner/' . $banner->news_details_one);

            $image6 = $request->file('news_details_one');
            $name_gen6 = hexdec(uniqid()) . '.' . $image6->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $image6 = $manager->read($image6);
            $image6 = $image6->resize(725, 100)->save('upload/banner/' . $name_gen6);
            $save_url6 = $name_gen6;

            Banner::findOrFail($banner_id)->update([
                'news_details_one' => $save_url6
            ]);

            $notification = array(
                'message' => 'Banner Updated Successfully!',
                'alert-type' => 'info',
            );

            return redirect()->route('all.banners')->with($notification);
        }
    }
}
