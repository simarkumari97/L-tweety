<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
 use Illuminate\Validation\Rule;
 use Illuminate\Http\File;
use Illuminate\Support\Facades\Storage;
class ProfilesController extends Controller
{
    public function show(User $user){
        return view('profiles.show',compact('user'));
    }
    public function edit(User $user){
        if(!auth()->user()->is($user)){
            abort(404);
        }
        return view('profiles.edit',compact('user'));
    }
    public function update(User $user){
        
      $attribute= request()->validate([
          'name'=>['string','required','max:255'],
          'avatar'=>['file'],
           'email'=>['required','string','email','max:255',Rule::unique('users')->ignore($user)],
           'password'=>['required','string','min:8','max:255','confirmed']

       ]);
      
        if(request('avatar')){
            $attribute['avatar']=request('avatar')->store('avatars');
        }
    

       $user->update($attribute);
       return redirect($user->path());
    }
}
