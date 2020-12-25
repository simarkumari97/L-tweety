<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use App\Models\Tweet;
use Attribute;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded=[];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    //for avatar
    public function getAvatarAttribute($value){
        return asset($value?:'img/default-avatar.jpeg');
    }

    //bcrypt password
    public function setPasswordAttribute($value){
        $this->attributes['password']=bcrypt($value);
    }
    //to get olny current auth user tweets(timline)
    public function timeline(){
        // return Tweet::where('user_id',$this->id)->latest()->get();
        $friends=$this->follows()->pluck('id');

       return Tweet::whereIn('user_id',$friends)
       ->orWhere('user_id',$this->id)
       ->latest()->get();
    }

    //relationship
    public function tweets(){
        return $this->hasMany(Tweet::class)->latest();
    }


    //following
    public function follow(User $user){
        return $this->follows()->save($user);
    }
    public function unfollow(User $user){
        return $this->follows()->detach($user);
    }

    public function following(User $user){
        return $this->follows()->where('following_user_id',$user->id)->exists();
    }

    public function follows(){
        return $this->belongsToMany(User::class,'follows','user_id','following_user_id');
    }
//     public function getRouteKeyname(){
//         return 'name';
//  }
    public function path($append=''){
        $path=route('profile',$this->name);
        return $append?"{$path}/{$append}":$path;
    }


 
}
