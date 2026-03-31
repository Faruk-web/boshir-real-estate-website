<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Carbon\Carbon;
use App\Models\Property;
use App\Models\Slider;
use App\Models\Privacy;
use App\Models\Multi_image;
use App\Models\Client;
use App\Models\Practice;
use App\Models\About;
use App\Models\Board;
use App\Models\Business;
use App\Models\Logo;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Str;
class HomeController extends Controller
{
    public function index()
    {

        $prectice = Practice::select('id', 'name','title','image')->where('status','ongoing')->get();
        $Slider=Slider::select('id','image','title','s_title','link')->get();
        $projects  = Privacy::select('id', 'name', 'title', 'image','privacy')->where('status',1)->limit(4)->get();
        $business=Business::find(1);
        $service = Board::select('id', 'name', 'image', 'main_image','privacy')->orderBy('id', 'DESC')->get()->map(function ($item) {
            $item->privacy = Str::limit($item->privacy, 100);
            return $item;
        });

        return view('front.home.home',compact('Slider','projects','prectice','business','service'));
    }
    public function service()
    {
        $service = Board::select('id', 'name', 'image','main_image', 'privacy')->orderBy('id', 'DESC')->get()->map(function ($item) {
            $item->privacy = Str::limit($item->privacy, 100);
            return $item;
        });
        $client=Client::select('id','name','title','privacy','image')->get();
        return view('front.service.service',compact('service','client'));
    }
    public function servicedeatils($id)
    {
        $teams = Board::select('id', 'name', 'main_image','privacy')->find($id);
        return view('front.service.service_details',compact('teams'));
    }
    
    public function blogs()
    {
        $blog = Property::select('id', 'name', 'image', 'privacy')->orderBy('id', 'DESC')->get()->map(function ($item) {
            $item->privacy = Str::limit($item->privacy, 200);
            return $item;
        });
        return view('front.blog.blog',compact('blog'));
    }
    public function blogDetails($id)
    {
        $blogs = Property::select('id', 'name', 'image','privacy','condition')->find($id);
        return view('front.blog.blog_details',compact('blogs'));
    }
    public function about()
    {
        $about=About::select('id','name','image','sub_details','details','privacy')->find(28);
         $business=Business::find(1);
        return view('front.about.about',compact('about','business'));
    }
    public function ongoing()
    {
        $prectice = Practice::select('id', 'name','title','image')->where('status','ongoing')->get();
        return view('front.project.ongoing',compact('prectice'));
    }
     public function upcoming()
    {
        $prectice = Practice::select('id', 'name','title','image')->where('status','upcoming')->get();
        return view('front.project.upcoming',compact('prectice'));
    }
     public function completed()
    {
        $prectice = Practice::select('id', 'name','title','image')->where('status','completed')->get();
        return view('front.project.completed',compact('prectice'));
    }
    public function practicedeatils($id)
    {
        $teams = Practice::select('id', 'name','title', 'image','file','privacy')->find($id);
        return view('front.project.project_deatils',compact('teams'));
    }
    
    public function client()
    {
        $client=Client::select('id','name','title','privacy','image')->get();
        return view('front.client.client',compact('client'));
    }
    public function clientdeatils($id)
    {
        $teams = Client::select('id', 'name','title', 'image','privacy')->find($id);
        return view('front.client.client_detail',compact('teams'));
    }
    
    public function attorney()
    {
        $advocate = Privacy::select('id', 'name', 'title', 'image')->where('status',1)->get();
        return view('front.attorney.attorney',compact('advocate'));
    }
    public function attorneydeatil($id)
    {
        $team = Privacy::select('id', 'name','image')->where('status',1)->get();
        $teams = Privacy::select('id', 'name','title', 'image','privacy')->find($id);
        return view('front.attorney.attorney_details',compact('team','teams'));
    }
    
    public function gallery()
    {
         $gallery = Multi_image::select('id', 'multi_image', 'link')->get();
        return view('front.gallery.gallery', compact('gallery'));
    }
    public function projects()
    {
        $Property=Property::select('id','image','name')->get();
        return view('front.page.projects',compact('Property'));
    }
    public function teams()
    {
        $team = Privacy::select('id', 'name', 'title', 'image')->where('status',2)->get();
        return view('front.teams.teams',compact('team'));
    }
    public function teamdetail($id)
    {
        $teams = Privacy::select('id', 'name','title', 'image','privacy')->find($id);
        return view('front.teams.team_details',compact('teams'));
    }
    
    // public function privacy()
    // {
    //     return view('front.privacy');
    // }
    public function contact()
    {
        return view('front.contact.contact');
    }


}
