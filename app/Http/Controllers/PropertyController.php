<?php

namespace App\Http\Controllers;
use App\Models\Property;
use App\Models\Multi_image;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Input;
class PropertyController extends Controller
{
    public function index()
    {
        $privacy = Property::where('status', 1)->first();
        return view('admin.property.index', compact('privacy'));
    }

    public function create(Request $request){

            $request->validate([
                'name' => 'required',
            ]);
        
            $privacy = new Property(); 
            // Handle image upload
            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
                $save_url_blog = 'upload/blog/' . $name_gen_blog;
        
                Image::make($image)->resize(776,410)->save(public_path($save_url_blog));
                $privacy->image = $save_url_blog;
            }
            // Assign other fields
            $privacy->name = $request->name;
            $privacy->condition = $request->condition;
            $privacy->privacy = $request->privacy;
            $privacy->status = $request->status == 1 ? 1 : 2;
        
            $privacy->save();
        
            Alert::success('Blog Added Successfully', '');
            return redirect()->back();

     } // end mathod
    public function manage()
    {
        $privacy = Property::orderBy('id', 'asc')->get();
        return view('admin.property.manage', compact('privacy'));
    }

    public function edit($id)
    {
        $privacy = Property::find($id);
        return view('admin.property.edit', compact('privacy'));
    }

    public function update(Request $request, $id)
    {

        $privacy = Property::find($id);
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $name_gen_blog = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
            Image::make($image)->resize(776,410)->save('upload/blog/'.$name_gen_blog);
            $save_url_blog = 'upload/blog/'.$name_gen_blog;
            $privacy->image = $save_url_blog;
        }
        $privacy->privacy = $request->privacy;
        $privacy->name = $request->name;
        $privacy->condition = $request->condition;
        if ($request->status == 1)
        {
            $privacy->status = $request->status;
        }
        else
        {
            $privacy->status = 2;
        }
        $privacy->save();
        Alert::success('Blog update successfully', '');
        return redirect()->route('propertyy.manage');
    }

    public function delete($id)
    {
        $privacy = Property::find($id);
    
        if (!$privacy) {
            Alert::error('blog not found', '');
            return redirect()->back();
        }
    
        // Delete image from storage
        if (file_exists(public_path($privacy->image))) {
            unlink(public_path($privacy->image));
        }
    
        // Delete record from database
        $privacy->delete();
    
        Alert::success('Blog deleted successfully', '');
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
