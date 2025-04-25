<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\HomeItem;
use Spatie\Activitylog\Models\Activity;

class AdminHomeItemController extends Controller
{
    Public function index()
    {
        $home_items = HomeItem::where('id', 1)->first();
        return view('admin.home_item.index', compact('home_items'));
    }

    Public function update(Request $request)
    {
        $obj = HomeItem::where('id', 1)->first();

        $request->validate([
            'destination_heading' =>'required',
            'destination_subheading' =>'required',
            'package_heading' =>'required',
            'package_subheading' =>'required',
            'testimonial_heading' =>'required',
            'testimonial_subheading' =>'required',
            'blog_heading' =>'required',
            'blog_subheading' =>'required',
            'sponsor_heading' =>'required',
        ]);

        // Simpan data lama
        $hotem = HomeItem::findOrFail(1);
        $oldData = $hotem->getAttributes();

        if($request->hasFile('testimonial_background')){
            $request->validate([
                'testimonial_background' =>'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ]);

            // unlink(public_path('uploads/').$obj->testimonial_background);

            $final_name = 'testimonial_'.time().'.'.$request->testimonial_background->extension();
            $request->testimonial_background->move(public_path('uploads/'), $final_name);
            $obj->testimonial_background = $final_name;
        }

        $obj->destination_heading = $request->destination_heading;
        $obj->destination_subheading = $request->destination_subheading;
        $obj->destination_status = $request->destination_status;
        $obj->featured_status = $request->featured_status;
        $obj->package_heading = $request->package_heading;
        $obj->package_subheading = $request->package_subheading;
        $obj->package_status = $request->package_status;

        $obj->testimonial_heading = $request->testimonial_heading;
        $obj->testimonial_subheading = $request->testimonial_subheading;
        $obj->testimonial_status = $request->testimonial_status;

        $obj->blog_heading = $request->blog_heading;
        $obj->blog_subheading = $request->blog_subheading;
        $obj->blog_heading = $request->blog_heading;
        $obj->blog_status = $request->blog_status;

        $obj->sponsor_heading = $request->sponsor_heading;
        $obj->sponsor_status = $request->sponsor_status;
        $obj->save();

        // Ambil data baru
        $newData = $obj->getAttributes();

        // Format log
        $logData = [
            'attributes' => $newData,
            'old' => $oldData,
        ];

        // Simpan log menggunakan insert
        Activity::insert([
            'causer_id' => Auth::guard('admin')->user()->id,
            'causer_type' => 'App\Models\Admin',
            'log_name' => 'default',
            'event' => 'updated',
            'subject_type' => 'App\Models\HomeItem',
            'subject_id' => 1,
            'description' => 'Admin ' .Auth::guard('admin')->user()->name. ' Mengedit Home Item.',
            'properties' => json_encode($logData), // Simpan dalam format JSON
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return redirect()->back()->with('success', 'Home Item berhasil di perbarui');
    }
}
