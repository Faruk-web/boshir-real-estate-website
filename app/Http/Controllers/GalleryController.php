<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Multi_image;
use App\Models\Logo;
use Intervention\Image\Facades\Image;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\File;
use enshrined\svgSanitize\Sanitizer;
class GalleryController extends Controller
{
    public function index(Request $request)
    {
        return view('admin.gallery.index');
    }

    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'multi_image' => 'required|array',
            'multi_image.*' => 'image|mimes:jpg,jpeg,png,gif|max:2048', 
        ]);

        $uploadPath = public_path('upload/multi_image/');
        if (!File::exists($uploadPath)) {
            File::makeDirectory($uploadPath, 0775, true);
        }
        if ($request->hasFile('multi_image')) {
            foreach ($request->file('multi_image') as $image) {
                $imageName = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
                $savePath = 'upload/gallery/' . $imageName;
                Image::make($image)->resize(618, 355)->save(public_path($savePath));
                Multi_image::create([
                    'name' => $request->name,
                    'multi_image' => $savePath,
                ]);
            }
        }
        Alert::success('success', 'Gallery images uploaded successfully!');
        return redirect()->back();
    }
    
    public function manage()
    {
        $privacy = Multi_image::orderBy('id', 'asc')->get();
        return view('admin.gallery.manage', compact('privacy'));
    }

    public function edit($id)
    {
        $privacy = Multi_image::find($id);
        return view('admin.gallery.edit', compact('privacy'));
    }
   
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'multi_image' => 'nullable|image|mimes:jpg,jpeg,png,gif|max:2048',
        ]);
        $privacy = Multi_image::find($id);
        
        if (!$privacy) {
            return redirect()->route('gallery.manage')->with('error', 'Image not found');
        }
    
        if ($request->hasFile('multi_image')) {
            $image = $request->file('multi_image');
            $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            $save_path = 'upload/gallery/' . $name_gen_blog;
            Image::make($image)->resize(618, 355)->save(public_path($save_path));
            if (!empty($privacy->multi_image) && file_exists(public_path($privacy->multi_image))) {
                unlink(public_path($privacy->multi_image));
            }
    
            $privacy->multi_image = $save_path;
        }
        $privacy->name = $request->name;
        $privacy->save();
    
        Alert::success('Gallery updated successfully', '');
        return redirect()->route('gallery.manage');
    }
    
    public function delete($id)
    {
        $privacy = Multi_image::find($id);
    
        if (!$privacy) {
            Alert::error('Gallery not found', '');
            return redirect()->back();
        }
        if (file_exists(public_path($privacy->multi_image))) {
            unlink(public_path($privacy->multi_image));
        }
        $privacy->delete();
    
        Alert::success('Blog deleted successfully', '');
        return redirect()->back();
    }



// ======================= logo ==========================
public function logoindex(Request $request)
    {
        return view('admin.logo.index');
    }

    public function logocreate(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'multi_logo' => 'required|array',
            'multi_logo.*' => 'image|mimes:jpg,jpeg,png,gif|max:2048', 
        ]);

        $uploadPath = public_path('upload/multi_logo/');
        if (!File::exists($uploadPath)) {
            File::makeDirectory($uploadPath, 0775, true);
        }
        if ($request->hasFile('multi_logo')) {
            foreach ($request->file('multi_logo') as $image) {
                $imageName = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
                $savePath = 'upload/logo/' . $imageName;
                Image::make($image)->resize(95, 90)->save(public_path($savePath));
                Logo::create([
                    'name' => $request->name,
                    'multi_logo' => $savePath,
                ]);
            }
        }
        Alert::success('success', 'logo images uploaded successfully!');
        return redirect()->back();
    }
    
    public function logomanage()
    {
        $privacy = Logo::orderBy('id', 'asc')->get();
        return view('admin.logo.manage', compact('privacy'));
    }

    public function logoedit($id)
    {
        $privacy = Logo::find($id);
        return view('admin.logo.edit', compact('privacy'));
    }
   
    public function logoupdate(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'multi_logo' => 'nullable|mimes:jpg,jpeg,png,gif,svg|max:2048',
        ]);
    
        $privacy = Logo::find($id);
        
        if (!$privacy) {
            return redirect()->route('logo.manage')->with('error', 'Image not found');
        }
    
        if ($request->hasFile('multi_logo')) {
            $image = $request->file('multi_logo');
            $ext = strtolower($image->getClientOriginalExtension());
            $name_gen = hexdec(uniqid()) . '.' . $ext;
            $save_path = 'upload/logo/' . $name_gen;
    
            // Delete old image if it exists
            if (!empty($privacy->multi_logo) && file_exists(public_path($privacy->multi_logo))) {
                unlink(public_path($privacy->multi_logo));
            }
    
            if ($ext === 'svg') {
                // Save SVG file without resizing
                file_put_contents(public_path($save_path), file_get_contents($image));
            } else {
                // Resize and save other image formats
                Image::make($image)->resize(95, 90)->save(public_path($save_path));
            }
    
            $privacy->multi_logo = $save_path;
        }
    
        $privacy->name = $request->name;
        $privacy->save();
    
        Alert::success('Logo updated successfully', '');
        return redirect()->route('logo.manage');
    }
    
    public function logodelete($id)
    {
        $privacy = Logo::find($id);
    
        if (!$privacy) {
            Alert::error('logo not found', '');
            return redirect()->back();
        }
        if (file_exists(public_path($privacy->multi_logo))) {
            unlink(public_path($privacy->multi_logo));
        }
        $privacy->delete();
    
        Alert::success('logo deleted successfully', '');
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
