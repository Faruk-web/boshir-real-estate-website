<?php

namespace App\Http\Controllers;

use App\Models\Privacy;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;
use Intervention\Image\Facades\Image;
class PrivacyController extends Controller
{
    public function index()
    {
        return view('admin.privacy.index');
    }
    public function create(Request $request)
{
    $request->validate([
        'name' => 'required',
    ]);

    $privacy = new Privacy();
    if ($request->hasFile('image')) {
        $image = $request->file('image');
        $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        $save_url_blog = 'upload/propert/' . $name_gen_blog;

        Image::make($image)->resize(394, 341)->save(public_path($save_url_blog));
        $privacy->image = $save_url_blog;
    }
    $privacy->name = $request->name;
    $privacy->title = $request->title;
    $privacy->privacy = $request->privacy;
    $privacy->status = 1;

    $privacy->save();

    Alert::success('Advocate Added Successfully', '');
    return redirect()->back();
}

  public function manage()
    {
        $privacy = Privacy::where('status',1)->orderBy('id', 'asc')->get();
        return view('admin.privacy.manage', compact('privacy'));
    }

    public function edit($id)
    {
        $privacy = Privacy::find($id);
        return view('admin.privacy.edit', compact('privacy'));
    }

    public function update(Request $request, $id)
{
    $privacy = Privacy::find($id);

    if (!$privacy) {
        Alert::error('Privacy not found', '');
        return redirect()->route('privacyy.manage');
    }
    if ($request->hasFile('image')) {
        if (file_exists(public_path($privacy->image))) {
            unlink(public_path($privacy->image));
        }
        $image = $request->file('image');
        $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        $save_url_blog = 'upload/propert/' . $name_gen_blog;

        Image::make($image)->resize(394, 341)->save(public_path($save_url_blog));
        $privacy->image = $save_url_blog;
    }
    $privacy->name = $request->name;
    $privacy->title = $request->title;
    $privacy->privacy = $request->privacy;
    $privacy->status = 1;

    $privacy->save();

    Alert::success('Privacy updated successfully', '');
    return redirect()->route('privacyy.manage');
}
 

    public function delete($id)
    {
        $privacy = Privacy::find($id);
    
        if (!$privacy) {
            Alert::error('Privacy not found', '');
            return redirect()->back();
        }
        if (file_exists(public_path($privacy->image))) {
            unlink(public_path($privacy->image));
        }
        $privacy->delete();
    
        Alert::success('Advocate deleted successfully', '');
        return redirect()->back();
    }
    // ================================================= support Team =================================
    public function teamindex()
    {
        return view('admin.team.index');
    }
    public function teamcreate(Request $request)
{
    $request->validate([
        'name' => 'required',
    ]);

    $privacy = new Privacy();
    if ($request->hasFile('image')) {
        $image = $request->file('image');
        $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        $save_url_blog = 'upload/propert/' . $name_gen_blog;

        Image::make($image)->resize(394, 341)->save(public_path($save_url_blog));
        $privacy->image = $save_url_blog;
    }
    $privacy->name = $request->name;
    $privacy->title = $request->title;
    $privacy->privacy = $request->privacy;
    $privacy->status = 2;

    $privacy->save();

    Alert::success('team Added Successfully', '');
    return redirect()->back();
}

  public function teammanage()
    {
        $privacy = Privacy::where('status',2)->orderBy('id', 'asc')->get();
        return view('admin.team.manage', compact('privacy'));
    }

    public function teamedit($id)
    {
        $privacy = Privacy::find($id);
        return view('admin.team.edit', compact('privacy'));
    }

    public function teamupdate(Request $request, $id)
{
    $privacy = Privacy::find($id);

    if (!$privacy) {
        Alert::error('team not found', '');
        return redirect()->route('team.manage');
    }
    if ($request->hasFile('image')) {
        if (file_exists(public_path($privacy->image))) {
            unlink(public_path($privacy->image));
        }
        $image = $request->file('image');
        $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        $save_url_blog = 'upload/propert/' . $name_gen_blog;

        Image::make($image)->resize(394, 341)->save(public_path($save_url_blog));
        $privacy->image = $save_url_blog;
    }
    $privacy->name = $request->name;
    $privacy->title = $request->title;
    $privacy->privacy = $request->privacy;
    $privacy->status = 2;

    $privacy->save();

    Alert::success('team updated successfully', '');
    return redirect()->route('team.manage');
}
 

    public function teamdelete($id)
    {
        $privacy = Privacy::find($id);
    
        if (!$privacy) {
            Alert::error('team not found', '');
            return redirect()->back();
        }
        if (file_exists(public_path($privacy->image))) {
            unlink(public_path($privacy->image));
        }
        $privacy->delete();
    
        Alert::success('team deleted successfully', '');
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

