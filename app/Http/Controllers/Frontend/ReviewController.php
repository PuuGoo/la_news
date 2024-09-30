<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Review;
use App\Models\User;
use App\Notifications\ReviewNotification;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Notification;

class ReviewController extends Controller
{
    public function StoreReview(Request $request)
    {

        $user = User::where('role', 'admin')->get();

        $news_id = $request->id;

        $request->validate([
            'comment' => 'required'
        ]);

        Review::insert([
            'news_id' => $news_id,
            'user_id' => Auth::id(),
            'comment' => $request->comment,
            'created_at' => Carbon::now()
        ]);

        Notification::send($user, new ReviewNotification($request));

        return back()->with('status', 'Review Will Approve By Admin');
    }

    public function PendingReview()
    {

        $review = Review::where('status', 0)->orderBy('id', 'DESC')->get();
        return view('backend.review.pending_review', compact('review'));
    }

    public function ReviewApprove($id)
    {

        Review::findOrFail($id)->update([
            'status' => 1
        ]);

        $notification = array(
            'message' => 'Approve Review Updated Successfully!',
            'alert-type' => 'info',
        );

        return redirect()->route('pending.review')->with($notification);
    }

    public function ApproveReview()
    {

        $review = Review::where('status', 1)->orderBy('id', 'DESC')->get();
        return view('backend.review.approve_review', compact('review'));
    }

    public function DeleteReview($id)
    {

        Review::findOrFail($id)->delete();

        $notification = array(
            'message' => 'Approve Review Deleted Successfully!',
            'alert-type' => 'info',
        );

        return redirect()->route('approve.review')->with($notification);
    }
}
