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

    // public function create(Request $request)
    // {
    //     $request->validate([
    //         'name' => 'required|string|max:255',
    //         'multi_image' => 'required|array',
    //         'multi_image.*' => 'image|mimes:jpg,jpeg,png,gif|max:2048', 
    //     ]);

    //     $uploadPath = public_path('upload/multi_image/');
    //     if (!File::exists($uploadPath)) {
    //         File::makeDirectory($uploadPath, 0775, true);
    //     }
    //     if ($request->hasFile('multi_image')) {
    //         foreach ($request->file('multi_image') as $image) {
    //             $imageName = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
    //             $savePath = 'upload/gallery/' . $imageName;
    //             Image::make($image)->resize(618, 355)->save(public_path($savePath));
    //             Multi_image::create([
    //                 'name' => $request->name,
    //                 'multi_image' => $savePath,
    //             ]);
    //         }
    //     }
    //     Alert::success('success', 'Gallery images uploaded successfully!');
    //     return redirect()->back();
    // }
    public function create(Request $request)
{
    $request->validate([
        'name' => 'required|string|max:255',
        'link' => 'nullable|url',
        'multi_image' => 'nullable|array',
        'multi_image.*' => 'image|mimes:jpg,jpeg,png,gif|max:2048',
    ]);

    // 👉 যদি video link থাকে
    if ($request->filled('link')) {
        Multi_image::create([
            'name' => $request->name,
            'link' => $request->link,
            'multi_image' => null,
        ]);

        Alert::success('success', 'Video link added successfully!');
        return redirect()->back();
    }

    // 👉 না থাকলে image upload হবে (আগের মতো)
    $uploadPath = public_path('upload/gallery/');
    if (!File::exists($uploadPath)) {
        File::makeDirectory($uploadPath, 0775, true);
    }

    if ($request->hasFile('multi_image')) {
        foreach ($request->file('multi_image') as $image) {
            $imageName = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            $savePath = 'upload/gallery/' . $imageName;

            Image::make($image)->resize(300, 250)->save(public_path($savePath));

            Multi_image::create([
                'name' => $request->name,
                'multi_image' => $savePath,
                'link' => null,
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
   
    // public function update(Request $request, $id)
    // {
    //     $request->validate([
    //         'name' => 'required|string|max:255',
    //         'multi_image' => 'nullable|image|mimes:jpg,jpeg,png,gif|max:2048',
    //     ]);
    //     $privacy = Multi_image::find($id);
        
    //     if (!$privacy) {
    //         return redirect()->route('gallery.manage')->with('error', 'Image not found');
    //     }
    
    //     if ($request->hasFile('multi_image')) {
    //         $image = $request->file('multi_image');
    //         $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
    //         $save_path = 'upload/gallery/' . $name_gen_blog;
    //         Image::make($image)->resize(618, 355)->save(public_path($save_path));
    //         if (!empty($privacy->multi_image) && file_exists(public_path($privacy->multi_image))) {
    //             unlink(public_path($privacy->multi_image));
    //         }
    
    //         $privacy->multi_image = $save_path;
    //     }
    //     $privacy->name = $request->name;
    //     $privacy->save();
    
    //     Alert::success('Gallery updated successfully', '');
    //     return redirect()->route('gallery.manage');
    // }
    public function update(Request $request, $id)
{
    $request->validate([
        'name' => 'required|string|max:255',
        'link' => 'nullable|url',
        'multi_image' => 'nullable|image|mimes:jpg,jpeg,png,gif|max:2048',
    ]);

    $privacy = Multi_image::find($id);

    if (!$privacy) {
        return redirect()->route('gallery.manage')->with('error', 'Item not found');
    }

    // 👉 যদি video link থাকে
    if ($request->filled('link')) {

        // পুরাতন image delete (যদি থাকে)
        if (!empty($privacy->multi_image) && file_exists(public_path($privacy->multi_image))) {
            unlink(public_path($privacy->multi_image));
        }

        $privacy->name = $request->name;
        $privacy->link = $request->link;
        $privacy->multi_image = null;
    } 
    // 👉 না থাকলে image update হবে
    else {
        if ($request->hasFile('multi_image')) {
            $image = $request->file('multi_image');
            $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            $save_path = 'upload/gallery/' . $name_gen_blog;

            Image::make($image)->resize(300, 250)->save(public_path($save_path));

            // পুরাতন image delete
            if (!empty($privacy->multi_image) && file_exists(public_path($privacy->multi_image))) {
                unlink(public_path($privacy->multi_image));
            }

            $privacy->multi_image = $save_path;
        }

        $privacy->name = $request->name;
        $privacy->link = null;
    }

    $privacy->save();

    Alert::success('Gallery updated successfully', '');
    return redirect()->route('gallery.manage');
}
    // public function delete($id)
    // {
    //     $privacy = Multi_image::find($id);
    
    //     if (!$privacy) {
    //         Alert::error('Gallery not found', '');
    //         return redirect()->back();
    //     }
    //     if (file_exists(public_path($privacy->multi_image))) {
    //         unlink(public_path($privacy->multi_image));
    //     }
    //     $privacy->delete();
    
    //     Alert::success('Blog deleted successfully', '');
    //     return redirect()->back();
    // }

public function delete($id)
{
    $privacy = Multi_image::find($id);

    if (!$privacy) {
        Alert::error('Gallery not found', '');
        return redirect()->back();
    }

    // 👉 যদি image থাকে তাহলে delete করবো
    if (!empty($privacy->multi_image) && file_exists(public_path($privacy->multi_image))) {
        unlink(public_path($privacy->multi_image));
    }

    // 👉 video link থাকলে কিছু delete করার দরকার নাই (just record delete)
    $privacy->delete();

    Alert::success('Item deleted successfully', '');
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
    ]);

    Logo::create([
        'name' => $request->name,
        'privacy' => $request->privacy,
    ]);

    Alert::success('Success', 'Privacy added successfully!');
    return redirect()->back();
}
    public function logomanage()
    {
        $privacy = Logo::orderBy('id', 'asc')->get();
        return view('admin.logo.manage', compact('privacy'));
    }

   
        public function logoedit($id)
{
    $privacy = Logo::find($id); // Model name অনুযায়ী
    if (!$privacy) {
        return redirect()->back()->with('error', 'Not found');
    }
    return view('admin.logo.edit', compact('privacy'));
}
    
   
 public function logoupdate(Request $request, $id)
{
    $request->validate([
        'name' => 'required|string|max:255',
        'privacy' => 'nullable|string', // যদি details optional থাকে
    ]);

    $privacyy = Logo::find($id);

    if (!$privacyy) {
        return redirect()->route('logo.manage')->with('error', 'Record not found');
    }

    // Update fields
    $privacyy->name = $request->name;
    $privacyy->privacy = $request->privacy; // separate column for privacy/details
    $privacyy->save();

    Alert::success('Privacy updated successfully', '');
    return redirect()->route('logo.manage');
}
    public function logodelete($id)
    {
        $privacy = Logo::find($id);
    
        if (!$privacy) {
            Alert::error('logo not found', '');
            return redirect()->back();
        }
        $privacy->delete();
    
        Alert::success('privacy deleted successfully', '');
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
