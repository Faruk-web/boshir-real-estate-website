<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Board;
use Intervention\Image\Facades\Image;
use RealRashid\SweetAlert\Facades\Alert;
use enshrined\svgSanitize\Sanitizer;
class ServiceController extends Controller
{
    //
    public function index()
    {
        return view('admin.service.index');
    }

    public function create(Request $request)
{
    $request->validate([
        'name' => 'required',
    ]);

    $privacy = new Board();

    // Handle image upload
    if ($request->hasFile('image')) {
        $image = $request->file('image');
        $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        $save_url_blog = 'upload/service/' . $name_gen_blog;

        Image::make($image)->resize(45, 45)->save(public_path($save_url_blog));
        $privacy->image = $save_url_blog;
    }
    if ($request->hasFile('main_image')) {
        $image = $request->file('main_image');
        $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        $save_url_blog = 'upload/service/' . $name_gen_blog;

        Image::make($image)->resize(856, 500)->save(public_path($save_url_blog));
        $privacy->main_image = $save_url_blog;
    }

    // Assign other fields
    $privacy->name = $request->name;
    $privacy->privacy = $request->privacy;
    $privacy->status = $request->status == 1 ? 1 : 2;

    $privacy->save();

    Alert::success('Service Added Successfully', '');
    return redirect()->back();
}

  public function manage()
    {
        $privacy = Board::orderBy('id', 'asc')->get();
        return view('admin.service.manage', compact('privacy'));
    }

    public function edit($id)
    {
        $privacy = Board::find($id);
        return view('admin.service.edit', compact('privacy'));
    }

    public function update(Request $request, $id)
{
    $privacy = Board::find($id);

    if (!$privacy) {
        Alert::error('service not found', '');
        return redirect()->route('service.manage');
    }

    // Check if a new image is uploaded
    if ($request->hasFile('image')) {
        // Delete old image if it exists
        if (!empty($privacy->image) && file_exists(public_path($privacy->image))) {
            unlink(public_path($privacy->image));
        }
    
        $image = $request->file('image');
        $ext = $image->getClientOriginalExtension();
        $name_gen = hexdec(uniqid()) . '.' . $ext;
        $save_path = 'upload/service/' . $name_gen;
    
        if ($ext === 'svg') {
            // Sanitize and save SVG
            $sanitizer = new Sanitizer();
            $cleanSvg = $sanitizer->sanitize(file_get_contents($image));
            file_put_contents(public_path($save_path), $cleanSvg);
        } else {
            // Handle normal images (JPEG, PNG, etc.)
            Image::make($image)->resize(45, 45)->save(public_path($save_path));
        }
    
        $privacy->image = $save_path;
    }
    
    if ($request->hasFile('main_image')) {
        // Delete old image
        if (file_exists(public_path($privacy->main_image))) {
            unlink(public_path($privacy->main_image));
        }

        // Upload new image
        $image = $request->file('main_image');
        $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        $save_url_blog = 'upload/service/' . $name_gen_blog;

        Image::make($image)->resize(856, 500)->save(public_path($save_url_blog));
        $privacy->main_image = $save_url_blog;
    }

    // Update other fields
    $privacy->name = $request->name;
    $privacy->privacy = $request->privacy;
    $privacy->status = $request->status == 1 ? 1 : 2;

    $privacy->save();

    Alert::success('Service updated successfully', '');
    return redirect()->route('service.manage');
}
 

    public function delete($id)
    {
        $privacy = Board::find($id);
    
        if (!$privacy) {
            Alert::error('service not found', '');
            return redirect()->back();
        }
    
        // Delete image from storage
        if (file_exists(public_path($privacy->image))) {
            unlink(public_path($privacy->image));
        }
        if (file_exists(public_path($privacy->main_image))) {
            unlink(public_path($privacy->main_image));
        }
        // Delete record from database
        $privacy->delete();
    
        Alert::success('service deleted successfully', '');
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
