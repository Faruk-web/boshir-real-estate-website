<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Client;
use Intervention\Image\Facades\Image;
use RealRashid\SweetAlert\Facades\Alert;
class ClientController extends Controller
{
    //
    public function index()
    {
        return view('admin.client.index');
    }

    public function create(Request $request)
{
    $request->validate([
        'name' => 'required',
    ]);

    $privacy = new Client();

    // Handle image upload
    if ($request->hasFile('image')) {
        $image = $request->file('image');
        $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        $save_url_blog = 'upload/client/' . $name_gen_blog;

        Image::make($image)->resize(394, 341)->save(public_path($save_url_blog));
        $privacy->image = $save_url_blog;
    }

    // Assign other fields
    $privacy->name = $request->name;
    $privacy->title = $request->title;
    $privacy->privacy = $request->privacy;
    $privacy->status = $request->status == 1 ? 1 : 2;

    $privacy->save();

    Alert::success('Client Added Successfully', '');
    return redirect()->back();
}

  public function manage()
    {
        $privacy = Client::orderBy('id', 'asc')->get();
        return view('admin.client.manage', compact('privacy'));
    }

    public function edit($id)
    {
        $privacy = Client::find($id);
        return view('admin.client.edit', compact('privacy'));
    }

    public function update(Request $request, $id)
{
    $privacy = Client::find($id);

    if (!$privacy) {
        Alert::error('Privacy not found', '');
        return redirect()->route('privacyy.manage');
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
        $save_url_blog = 'upload/client/' . $name_gen_blog;

        Image::make($image)->resize(394, 341)->save(public_path($save_url_blog));
        $privacy->image = $save_url_blog;
    }

    // Update other fields
    $privacy->name = $request->name;
    $privacy->title = $request->title;
    $privacy->privacy = $request->privacy;
    $privacy->status = $request->status == 1 ? 1 : 2;

    $privacy->save();

    Alert::success('Client updated successfully', '');
    return redirect()->route('client.manage');
}
 

    public function delete($id)
    {
        $privacy = Client::find($id);
    
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
    
        Alert::success('client deleted successfully', '');
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
