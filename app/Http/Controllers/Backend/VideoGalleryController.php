<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\LiveTv;
use Illuminate\Http\Request;
use App\Models\VideoGallery;
use Illuminate\Support\Carbon;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class VideoGalleryController extends Controller
{
    public function AllVideoGallery()
    {
        $video = VideoGallery::latest()->get();
        return view('backend.video.all_video', compact('video'));
    }

    public function AddVideoGallery()
    {

        return view('backend.video.add_video');
    }

    public function StoreVideoGallery(Request $request)
    {
        if ($request->file('video_image')) {
            $image = $request->file('video_image');
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $img = $manager->read($image);
            $img = $img->resize(506, 285)->save('upload/video/' . $name_gen);
            $save_url = $name_gen;

            VideoGallery::insert([
                'video_title' => $request->video_title,
                'video_url' => $request->video_url,

                'post_date' => date('d-m-Y'),
                'video_image' => $save_url,
                'created_at' => Carbon::now()->setTimezone('Asia/Ho_Chi_Minh'),

            ]);

            $notification = array(
                'message' => 'Video Gallery Inserted Successfully!',
                'alert-type' => 'info',
            );

            return redirect()->route('all.video.gallery')->with($notification);
        } else {
            VideoGallery::insert([
                'video_title' => $request->video_title,
                'video_url' => $request->video_url,

                'post_date' => date('d-m-Y'),
                'created_at' => Carbon::now()->setTimezone('Asia/Ho_Chi_Minh'),

            ]);

            $notification = array(
                'message' => 'Video Gallery Inserted Successfully!',
                'alert-type' => 'info',
            );

            return redirect()->route('all.video.gallery')->with($notification);
        }
    }

    public function EditVideoGallery($id)
    {

        $video = VideoGallery::findOrFail($id);
        return view('backend.video.edit_video', compact('video'));
    }

    public function UpdateVideoGallery(Request $request)
    {
        $video_id = $request->id;

        if ($request->file('video_image')) {

            $video = VideoGallery::findOrFail($video_id);
            unlink('upload/video/' . $video->video_image);


            $image = $request->file('video_image');
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $img = $manager->read($image);
            $img = $img->resize(506, 285)->save('upload/video/' . $name_gen);
            $save_url = $name_gen;

            VideoGallery::findOrFail($video_id)->update([
                'video_title' => $request->video_title,
                'video_url' => $request->video_url,

                'post_date' => date('d-m-Y'),
                'video_image' => $save_url,
                'updated_at' => Carbon::now()->setTimezone('Asia/Ho_Chi_Minh'),

            ]);

            $notification = array(
                'message' => 'Video Gallery Updated Successfully!',
                'alert-type' => 'info',
            );

            return redirect()->route('all.video.gallery')->with($notification);
        } else {
            VideoGallery::findOrFail($video_id)->update([
                'video_title' => $request->video_title,
                'video_url' => $request->video_url,

                'post_date' => date('d-m-Y'),
                'updated_at' => Carbon::now()->setTimezone('Asia/Ho_Chi_Minh'),

            ]);

            $notification = array(
                'message' => 'Video Gallery Updated Successfully!',
                'alert-type' => 'info',
            );

            return redirect()->route('all.video.gallery')->with($notification);
        }
    }

    public function DeleteVideoGallery($id)
    {

        $video = VideoGallery::findOrFail($id);
        unlink('upload/video/' . $video->video_image);
        $video->delete();

        $notification = array(
            'message' => 'Video Gallery Deleted Successfully!',
            'alert-type' => 'info',
        );

        return redirect()->route('all.video.gallery')->with($notification);
    }

    ////////// Live TV ///////////
    public function EditLiveTv()
    {

        $live = LiveTv::findOrFail(1);
        return view('backend.video.edit_live_tv', compact('live'));
    }

    public function UpdateLiveTv(Request $request)
    {
        $live_tv_id = $request->id;

        if ($request->file('live_image')) {

            $live = LiveTv::findOrFail($live_tv_id);
            unlink('upload/video/' . $live->live_image);


            $image = $request->file('live_image');
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $img = $manager->read($image);
            $img = $img->resize(506, 285)->save('upload/video/' . $name_gen);
            $save_url = $name_gen;

            LiveTv::findOrFail($live_tv_id)->update([

                'live_url' => $request->live_url,

                'post_date' => date('d-m-Y'),
                'live_image' => $save_url,
                'updated_at' => Carbon::now()->setTimezone('Asia/Ho_Chi_Minh'),

            ]);

            $notification = array(
                'message' => 'Live Tv Updated Successfully!',
                'alert-type' => 'info',
            );

            return redirect()->route('edit.live.tv')->with($notification);
        } else {
            LiveTv::findOrFail($live_tv_id)->update([

                'live_url' => $request->live_url,

                'post_date' => date('d-m-Y'),
                'updated_at' => Carbon::now()->setTimezone('Asia/Ho_Chi_Minh'),

            ]);

            $notification = array(
                'message' => 'Live Tv Updated Successfully!',
                'alert-type' => 'info',
            );

            return redirect()->route('edit.live.tv')->with($notification);
        }
    }
}
