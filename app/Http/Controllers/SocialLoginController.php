<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
class SocialLoginController extends Controller
{
    // user login
    public function userLogin(){
        return view('auth.user_login');
    }
    //auth redirect
    public function authRedirect(){
        return Socialite::driver('github')->redirect();
    }
     //auth callback
     public function authCallback(){
        $githubUser = Socialite::driver('github')->user();
        $user = User::where('auth_type', 'github')->first();

        if ($user) {
            Auth::login($user);
           return redirect('/dashboard');
        } else {
            $ucid = Str::uuid()->toString();
            $user = User::create([
                'name' => $githubUser->name,
                'email' => $githubUser->email,
                'auth_type' =>"github",
                'password' => Hash::make($ucid.now()),
            ]);
        }
        Auth::login($user);

        return redirect('/dashboard');
    }
}
