<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\About;
use Intervention\Image\Facades\Image;
use RealRashid\SweetAlert\Facades\Alert;
class AboutController extends Controller
{
    //
    public function index()
    {
        return view('admin.about.index');
    }

    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);
    
        $privacy = new About();
    
        // Handle image upload
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            $save_url_blog = 'upload/about/' . $name_gen_blog;
    
            Image::make($image)->resize(312, 288)->save(public_path($save_url_blog));
            $privacy->image = $save_url_blog;
        }
    
        // Assign other fields
        $privacy->name = $request->name;
        $privacy->sub_details = $request->sub_details;
        $privacy->privacy = $request->privacy;
        $privacy->details = $request->details;
        $privacy->status = $request->status == 1 ? 1 : 2;
    
        $privacy->save();
    
        Alert::success('About Added Successfully', '');
        return redirect()->back();
    }

    public function manage()
    {
        $privacy = About::orderBy('id', 'asc')->get();
        return view('admin.about.manage', compact('privacy'));
    }

    public function edit($id)
    {
        $privacy = About::find($id);
        return view('admin.about.edit', compact('privacy'));
    }

    public function update(Request $request, $id)
    {
        $privacy = About::find($id);
    
        if (!$privacy) {
            Alert::error('About not found', '');
            return redirect()->route('about.manage');
        }
        // Check if a new image is uploaded
        if ($request->hasFile('image')) {
            // Delete old image
            if (file_exists(public_path($privacy->image))) {
                unlink(public_path($privacy->image));
            }
    
            // Upload new image
            $image = $request->file('image');
            $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            $save_url_blog = 'upload/about/' . $name_gen_blog;
    
            Image::make($image)->resize(312, 288)->save(public_path($save_url_blog));
            $privacy->image = $save_url_blog;
        }
    
        // Update other fields
        $privacy->name = $request->name;
        $privacy->sub_details = $request->sub_details;
        $privacy->privacy = $request->privacy;
        $privacy->details = $request->details;
        $privacy->status = $request->status == 1 ? 1 : 2;
    
        $privacy->save();
    
        Alert::success('About updated successfully', '');
        return redirect()->route('about.manage');
    }

    public function delete($id)
    {
        $privacy = About::find($id);
    
        if (!$privacy) {
            Alert::error('Privacy not found', '');
            return redirect()->back();
        }
    
        // Delete image from storage
        if (file_exists(public_path($privacy->image))) {
            unlink(public_path($privacy->image));
        }
    
        // Delete record from database
        $privacy->delete();
    
        Alert::success('About deleted successfully', '');
        return redirect()->back();
    }

    public function page_view()
    {
        $privacy = Property::first();
        return view('front.property.privacy', compact('privacy'));
    }

    public function condition_page_view()
    {
        $privacy = Property::first();
        return view('front.property.conditions', compact('privacy'));
    }
}
