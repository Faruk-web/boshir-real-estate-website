<?php

namespace App\Http\Controllers;
use App\Models\Setting;
use App\Models\Contact;
use App\Models\Business;
use App\Models\Peace;
use Intervention\Image\Facades\Image;
use RealRashid\SweetAlert\Facades\Alert;
use Carbon\Carbon;
use enshrined\svgSanitize\Sanitizer;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    //
      public function index()
      {
          return view('admin.setting.index');
      }
  
      public function create(Request $request)
  {
      $request->validate([
          'name' => 'required',
      ]);
  
      $privacy = new Setting();
  
      // Handle image upload
      if ($request->hasFile('logo')) {
          $image = $request->file('logo');
          $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
          $save_url_blog = 'upload/setting/' . $name_gen_blog;
  
          Image::make($image)->resize(200, 60)->save(public_path($save_url_blog));
          $privacy->logo = $save_url_blog;
      }
       // Handle image upload
       if ($request->hasFile('f_logo')) {
        $image = $request->file('f_logo');
        $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        $save_url_blog = 'upload/setting/' . $name_gen_blog;

        Image::make($image)->resize(80, 90)->save(public_path($save_url_blog));
        $privacy->f_logo = $save_url_blog;
    }
  
      // Assign other fields
      $privacy->name = $request->name;
      $privacy->p_phone = $request->p_phone;
      $privacy->s_phone = $request->s_phone;
      $privacy->d_phone = $request->d_phone;
      $privacy->p_mail = $request->p_mail;
      $privacy->s_mail = $request->s_mail;
      $privacy->location = $request->location;
      $privacy->privacy = $request->privacy;
 
      $privacy->save();
  
      Alert::success('Setting Added Successfully', '');
      return redirect()->back();
  }
  
    public function manage()
      {
          $privacy = Setting::orderBy('id', 'asc')->get();
          return view('admin.setting.manage', compact('privacy'));
      }
  
      public function edit($id)
      {
          $privacy = Setting::find($id);
          return view('admin.setting.edit', compact('privacy'));
      }
  
      public function update(Request $request, $id)
      {
          $privacy = Setting::find($id);
      
          if (!$privacy) {
              Alert::error('Practice not found', '');
              return redirect()->route('practice.manage');
          }
          if ($request->hasFile('logo')) {
              if (!empty($privacy->image) && file_exists(public_path($privacy->logo))) {
                  try {
                      unlink(public_path($privacy->logo));
                  } catch (\Exception $e) {
                      \Log::error("Failed to delete logo: " . $e->getMessage());
                  }
              }
              // Upload new image
              $image = $request->file('logo');
              $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
              $save_url_blog = 'upload/setting/' . $name_gen_blog;
      
              Image::make($image)->resize(200, 60)->save(public_path($save_url_blog));
              $privacy->logo = $save_url_blog;
          }

          if ($request->hasFile('f_logo')) {
            // Delete old image if it exists
            if (!empty($privacy->f_logo) && file_exists(public_path($privacy->f_logo))) {
                try {
                    unlink(public_path($privacy->f_logo));
                } catch (\Exception $e) {
                    \Log::error("Failed to delete footer logo: " . $e->getMessage());
                }
            }
        
            // Upload new image
            $image = $request->file('f_logo');
            $ext = strtolower($image->getClientOriginalExtension());
            $name_gen = hexdec(uniqid()) . '.' . $ext;
            $save_path = 'upload/setting/' . $name_gen;
        
            if ($ext === 'svg') {
                // Save SVG file without resizing
                file_put_contents(public_path($save_path), file_get_contents($image));
            } else {
                // Resize and save other image formats
                Image::make($image)->resize(80, 90)->save(public_path($save_path));
            }
        
            $privacy->f_logo = $save_path;
        }
          // Update other fields
            $privacy->name = $request->name;
            $privacy->p_phone = $request->p_phone;
            $privacy->s_phone = $request->s_phone;
            $privacy->d_phone = $request->d_phone;
            $privacy->p_mail = $request->p_mail;
            $privacy->s_mail = $request->s_mail;
            $privacy->location = $request->location;
            $privacy->privacy = $request->privacy;
      
          $privacy->save();
      
          Alert::success('Setting updated successfully', '');
          return redirect()->route('setting.manage');
      }
    //  ===================== contact form ====================================
    public function contact(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
        ]);
        $privacy = new Contact();
        $privacy->name = $request->name;
        $privacy->phone = $request->phone;
        $privacy->email = $request->email;
        $privacy->message = $request->message;
        $privacy->save();
    
        Alert::success('Your massage submitted Successfully', '');
        return redirect()->back()->with('success', 'Your massage submitted successfully!');
    }
    public function contactdata()
    {
        $privacy = Contact::orderBy('id', 'asc')->get()->map(function ($contact) {
            $contact->formatted_date = Carbon::parse($contact->created_at)->format('d F Y'); 
            return $contact;
        });
        return view('admin.setting.manage_query', compact('privacy'));
    }
    public function delete($id)
    {
        $privacy = Contact::find($id);
    
        if (!$privacy) {
            Alert::error('Query not found', '');
            return redirect()->back();
        }
        // Delete record from database
        $privacy->delete();
    
        Alert::success('Customer Query deleted successfully', '');
        return redirect()->back();
    }
//  ===================== Business ====================================
public function businessmanage()
{
    $privacy = Business::orderBy('id', 'asc')->get();
    return view('admin.business.manage', compact('privacy'));
}

public function businessedit($id)
{
    $privacy = Business::find($id);
    return view('admin.business.edit', compact('privacy'));
}

public function businessupdate(Request $request, $id)
{
    $privacy = Business::find($id);

    if (!$privacy) {
        Alert::error('business not found', '');
        return redirect()->route('business.manage');
    }
    if ($request->hasFile('image')) {
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
        $save_url_blog = 'upload/business/' . $name_gen_blog;

        Image::make($image)->resize(372, 290)->save(public_path($save_url_blog));
        $privacy->image = $save_url_blog;
    }

    if ($request->hasFile('s_image')) {
      if (!empty($privacy->image) && file_exists(public_path($privacy->s_image))) {
          try {
              unlink(public_path($privacy->s_image));
          } catch (\Exception $e) {
              \Log::error("Failed to delete footer s_image: " . $e->getMessage());
          }
      }
      // Upload new image
      $image = $request->file('s_image');
      $name_gen_blog = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
      $save_url_blog = 'upload/business/' . $name_gen_blog;
      Image::make($image)->resize(372, 290)->save(public_path($save_url_blog));
      $privacy->s_image = $save_url_blog;
  }
    // Update other fields
      $privacy->name = $request->name;
      $privacy->details = $request->details;
      $privacy->issue = $request->issue;
      $privacy->issue_no = $request->issue_no;
      $privacy->advocate = $request->advocate;
      $privacy->advocate_no = $request->advocate_no;
      $privacy->client = $request->client;
      $privacy->client_no = $request->client_no;
      $privacy->award = $request->award;
      $privacy->award_no = $request->award_no;

    $privacy->save();

    Alert::success('business updated successfully', '');
    return redirect()->route('business.manage');
}

//  ===================== Peace ====================================
public function peacemanage()
{
    $privacy = Peace::orderBy('id', 'asc')->get();
    return view('admin.peace.manage', compact('privacy'));
}

public function peaceedit($id)
{
    $privacy = Peace::find($id);
    return view('admin.peace.edit', compact('privacy'));
}

public function peaceupdate(Request $request, $id)
{
    $privacy = Peace::find($id);

    if (!$privacy) {
        Alert::error('business not found', '');
        return redirect()->route('business.manage');
    }
    // Update other fields
      $privacy->name = $request->name;
      $privacy->consultation = $request->consultation;
      $privacy->consultation_d = $request->consultation_d;
      $privacy->evaluation = $request->evaluation;
      $privacy->evaluation_d = $request->evaluation_d;
      $privacy->strategy = $request->strategy;
      $privacy->strategy_d = $request->strategy_d;
      $privacy->link = $request->link;
    $privacy->save();

    Alert::success('peace updated successfully', '');
    return redirect()->route('peace.manage');
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
