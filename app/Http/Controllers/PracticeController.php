<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Practice;
use Intervention\Image\Facades\Image;
use RealRashid\SweetAlert\Facades\Alert;

class PracticeController extends Controller
{
    //
    public function index()
    {
        return view('admin.practice.index');
    }

    public function create(Request $request)
{
    $request->validate([
        'name' => 'required',
    ]);

    $privacy = new Practice();

    // Handle image upload
    if ($request->hasFile('image')) {
        $image = $request->file('image');
        $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        $save_url_blog = 'upload/practice/' . $name_gen_blog;

        Image::make($image)->resize(394, 341)->save(public_path($save_url_blog));
        $privacy->image = $save_url_blog;
    }

    // Assign other fields
    $privacy->name = $request->name;
    $privacy->title = $request->title;
    $privacy->privacy = $request->privacy;
    $privacy->status = $request->status == 1 ? 1 : 2;

    $privacy->save();

    Alert::success('Practice Added Successfully', '');
    return redirect()->back();
}

  public function manage()
    {
        $privacy = Practice::orderBy('id', 'asc')->get();
        return view('admin.practice.manage', compact('privacy'));
    }

    public function edit($id)
    {
        $privacy = Practice::find($id);
        return view('admin.practice.edit', compact('privacy'));
    }

    public function update(Request $request, $id)
    {
        $privacy = Practice::find($id);
    
        if (!$privacy) {
            Alert::error('Practice not found', '');
            return redirect()->route('practice.manage');
        }
    
        // Check if a new image is uploaded
        if ($request->hasFile('image')) {
            // Delete old image safely
            if (!empty($privacy->image) && file_exists(public_path($privacy->image))) {
                try {
                    unlink(public_path($privacy->image));
                } catch (\Exception $e) {
                    \Log::error("Failed to delete image: " . $e->getMessage());
                }
            }
    
            // Upload new image
            $image = $request->file('image');
            $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            $save_url_blog = 'upload/practice/' . $name_gen_blog;
    
            Image::make($image)->resize(394, 341)->save(public_path($save_url_blog));
            $privacy->image = $save_url_blog;
        }
    
        // Update other fields
        $privacy->name = $request->name;
        $privacy->title = $request->title;
        $privacy->privacy = $request->privacy;
        $privacy->status = $request->status == 1 ? 1 : 2;
    
        $privacy->save();
    
        Alert::success('Practice updated successfully', '');
        return redirect()->route('practice.manage');
    }
   

    public function delete($id)
    {
        $privacy = Practice::find($id);
    
        if (!$privacy) {
            Alert::error('Practice not found', '');
            return redirect()->back();
        }
    
        // Delete image from storage
        if (file_exists(public_path($privacy->image))) {
            unlink(public_path($privacy->image));
        }
    
        // Delete record from database
        $privacy->delete();
    
        Alert::success('Practice deleted successfully', '');
        return redirect()->back();
    }
    

    public function page_view()
    {
        $privacy = Privacy::where('status', 1)->first();
        return view('front.privacy.privacy', compact('privacy'));
    }

    public function condition_page_view()
    {
        $privacy = Privacy::where('status', 1)->first();
        return view('front.privacy.conditions', compact('privacy'));
    }
}
