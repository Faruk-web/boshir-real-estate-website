<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use RealRashid\SweetAlert\Facades\Alert;
use Intervention\Image\ImageManagerStatic as Image;

class SliderController extends Controller
{
    public function getImageUrl($request)
    {
        $slug = Str::slug($request->title);
        $image = $request->image;
        $imageName = $slug.'-'.time().'.'.$image->getClientOriginalExtension();
        $directory = 'slider-images/';
        $imageUrl = $directory.$imageName;
        // Create the directory if it doesn't exist
        if (!file_exists($directory)) {
            mkdir($directory, 0777, true);
        }

        // Create an Intervention Image instance
        $img = \Intervention\Image\Facades\Image::make($image->getRealPath());
        $img->resize(499, 565);
        $img->save($imageUrl);
        return $imageUrl;
    }
    public function index()
    {
        return view('admin.slider.index');
    }
    public function create(Request $request)
    {
        $slider = new Slider();
        $slider->title = $request->title;
        $slider->s_title = $request->s_title;
        $slider->number = $request->number;
        $slider->client = $request->client;
        if ($request->status)
        {
            $slider->status = $request->status;
        }
        else
        {
            $slider->status = 0;
        }
        $slider->image = $this->getImageUrl($request);
        $slider->save();
        Alert::success('Slider Add Successfully');
        return redirect()->back();
    }
    public function manage()
    {
        return view('admin.slider.manage', ['sliders' => Slider::all()]);
    }
    public function edit($id)
    {
        return view('admin.slider.edit',['slider' => Slider::find($id)]);
    }
    public function update(Request $request, $id)
    {
        $slider = Slider::find($id);
        if ($request->file('image'))
        {
            if (file_exists($slider->image))
            {
                unlink($slider->image);
            }
            $imageUrl = $this->getImageUrl($request);
        }
        else
        {
            $imageUrl = $slider->image;
        }
        $slider->title = $request->title;
        $slider->s_title = $request->s_title;
        $slider->number = $request->number;
        $slider->client = $request->client;
        if ($request->status)
        {
            $slider->status = $request->status;
        }
        else
        {
            $slider->status = 0;
        }
        $slider->image = $imageUrl;
        $slider->save();
        Alert::success('Slider Update Successfully');
        return redirect()->route('slider.manage');
    }
    public function delete($id)
    {
        $slider = Slider::find($id);
        if (file_exists($slider->image))
        {
            unlink($slider->image);
        }
        $slider->delete();
        Alert::success('Slider Delete Successfully');
        return redirect()->back();
    }
}
