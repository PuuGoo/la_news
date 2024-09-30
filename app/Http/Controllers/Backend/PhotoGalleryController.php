<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\PhotoGallery;
use Illuminate\Support\Carbon;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class PhotoGalleryController extends Controller
{
    public function AllPhotoGallery()
    {
        $photo = PhotoGallery::latest()->get();

        return view('backend.photo.all_photo', compact('photo'));
    }

    public function AddPhotoGallery()
    {

        return view('backend.photo.add_photo');
    }

    public function StorePhotoGallery(Request $request)
    {

        $image = $request->file('multi_image');

        foreach ($image as $multi_image) {
            $name_gen = hexdec(uniqid()) . '.' . $multi_image->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $multi_image = $manager->read($multi_image);
            $multi_image = $multi_image->resize(700, 400)->save('upload/multi/' . $name_gen);
            $save_url = $name_gen;

            PhotoGallery::insert([
                'photo_gallery' => $save_url,
                'post_date' => Carbon::now()->format('d F Y'),
                'created_at' => Carbon::now()->setTimezone('Asia/Ho_Chi_Minh'),
            ]);
        }

        $notification = array(
            'message' => 'Photo Gallery Inserted Successfully!',
            'alert-type' => 'info',
        );

        return redirect()->route('all.photo.gallery')->with($notification);
    }

    public function EditPhotoGallery($id)
    {

        $photo_gallery = PhotoGallery::findOrFail($id);
        return view('backend.photo.edit_photo', compact('photo_gallery'));
    }

    public function UpdatePhotoGallery(Request $request)
    {

        $photo_gallery_id = $request->id;

        if ($request->file('multi_image')) {

            $photo = PhotoGallery::findOrFail($photo_gallery_id);
            unlink('upload/multi/' . $photo->photo_gallery);

            $image = $request->file('multi_image');
            $name_gen = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            $manager = new ImageManager(new Driver());
            $img = $manager->read($image);
            $img = $img->resize(700, 400)->save('upload/multi/' . $name_gen);
            $save_url = $name_gen;

            PhotoGallery::findOrFail($photo_gallery_id)->update([
                'photo_gallery' => $save_url,
                'post_date' => Carbon::now()->format('d F Y')
            ]);
        }

        $notification = array(
            'message' => 'Photo Gallery Updated Successfully!',
            'alert-type' => 'info',
        );

        return redirect()->route('all.photo.gallery')->with($notification);
    }

    public function DeletePhotoGallery($id)
    {

        $photo = PhotoGallery::findOrFail($id);
        unlink('upload/multi/' . $photo->photo_gallery);
        $photo->delete();

        $notification = array(
            'message' => 'Photo Gallery Deleted Successfully!',
            'alert-type' => 'info',
        );

        return redirect()->route('all.photo.gallery')->with($notification);
    }
}
