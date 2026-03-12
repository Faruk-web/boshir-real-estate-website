<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use RealRashid\SweetAlert\Facades\Alert;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::where('parent_id', 0)->get();
        return view('admin.category.index', compact('categories'));
    }

    public function create(Request $request)
    {
        $request->validate([
            'category_name' => 'required|max:255',
            'parent_id' => 'required',
        ]);
        $category = new Category();
        $category->parent_id = $request->parent_id;
        $category->category_name = $request->category_name;
        $category->slug = Str::slug($request->category_name);
        $category->description = $request->description;
        if ($request->status == 1)
        {
            $category->status = $request->status;
        }
        else
        {
            $category->status = 2;
        }
        $category->save();
        Alert::success('Category Added Successfully', '');
        return redirect()->back();
    }

    public function manage()
    {
        $categories = Category::orderBy('id', 'asc')->get();
        return view('admin.category.manage', compact('categories'));
    }

    public function edit($id)
    {
        $category = Category::find($id);
        $categories = Category::where('parent_id', 0)->get();
        return view('admin.category.edit', compact('category', 'categories'));
    }

    public function update(Request $request, $id)
    {
        $category = Category::find($id);
        $category->parent_id = $request->parent_id;
        $category->category_name = $request->category_name;
        $category->slug = Str::slug($request->category_name);
        $category->description = $request->description;
        if ($request->status == 1)
        {
            $category->status = $request->status;
        }
        else
        {
            $category->status = '2';
        }
        $category->save();
        Alert::success('Category update successfully', '');
        return redirect()->back();
    }

    public function delete($id)
    {
        // Find category
        $category = Category::find($id);
        
        if (!$category) {
            return redirect()->back()->with('error', 'Category not found');
        }
        // Delete subcategories
        $subCategories = Category::where('parent_id', $category->id)->get();
        foreach ($subCategories as $subCategory) {
            $subCategory->delete();
        }
        // Delete associated news (if any)
        if (!empty($category->news)) { // Check if the relationship exists
            foreach ($category->news as $data) {
                if (!empty($data->image) && file_exists(public_path($data->image))) {
                    unlink(public_path($data->image));
                }
                $data->delete();
            }
        }
    
        // Delete the category itself
        $category->delete();
    
        Alert::success('Category deleted successfully', '');
        return redirect()->back();
    }
    
    // ========================all pages title update============
    public function homepage()
    {
        $categories = Category::where('parent_id',96)->orderBy('id', 'asc')->get();
        return view('admin.category.homepage', compact('categories'));
    }
    public function aboutpage()
    {
        $categories = Category::where('parent_id',97)->orderBy('id', 'asc')->get();
        return view('admin.category.aboutpage', compact('categories'));
    }
    public function practicepage()
    {
        $categories = Category::where('parent_id',98)->orderBy('id', 'asc')->get();
        return view('admin.category.practicepage', compact('categories'));
    }
    public function clientpage()
    {
        $categories = Category::where('parent_id',99)->orderBy('id', 'asc')->get();
        return view('admin.category.clientpage', compact('categories'));
    }
    public function advocatepage()
    {
        $categories = Category::where('parent_id',100)->orderBy('id', 'asc')->get();
        return view('admin.category.advocatepage', compact('categories'));
    }
    public function servicepage()
    {
        $categories = Category::where('parent_id',124)->orderBy('id', 'asc')->get();
        return view('admin.category.servicepage', compact('categories'));
    }
    public function teampage()
    {
        $categories = Category::where('parent_id',101)->orderBy('id', 'asc')->get();
        return view('admin.category.teampage', compact('categories'));
    }
    public function blogpage()
    {
        $categories = Category::where('parent_id',102)->orderBy('id', 'asc')->get();
        return view('admin.category.blogpage', compact('categories'));
    }
    public function gallerypage()
    {
        $categories = Category::where('parent_id',103)->orderBy('id', 'asc')->get();
        return view('admin.category.gallerypage', compact('categories'));
    }
    public function contactpage()
    {
        $categories = Category::where('parent_id',104)->orderBy('id', 'asc')->get();
        return view('admin.category.contactpage', compact('categories'));
    }
    public function areadetails()
    {
        $categories = Category::where('parent_id',139)->orderBy('id', 'asc')->get();
        return view('admin.category.areadetails', compact('categories'));
    }
    public function clientdetails()
    {
        $categories = Category::where('parent_id',142)->orderBy('id', 'asc')->get();
        return view('admin.category.clientdetails', compact('categories'));
    }
    public function advocatedetails()
    {
        $categories = Category::where('parent_id',137)->orderBy('id', 'asc')->get();
        return view('admin.category.advocatedetails', compact('categories'));
    }
    public function teamdetails()
    {
        $categories = Category::where('parent_id',138)->orderBy('id', 'asc')->get();
        return view('admin.category.teamdetails', compact('categories'));
    }
    public function blogdetails()
    {
        $categories = Category::where('parent_id',151)->orderBy('id', 'desc')->get();
        return view('admin.category.blogdetails', compact('categories'));
    }
    public function servicedetails()
    {
        $categories = Category::where('parent_id',136)->orderBy('id', 'desc')->get();
        return view('admin.category.servicedetails', compact('categories'));
    }
    
}
