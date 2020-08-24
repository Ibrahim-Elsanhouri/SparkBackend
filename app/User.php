<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'mobile' , 'roles_id' , 'categories_id'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
    public function verifyUser(){
        return $this->hasOne('App\VerifyUser'); 
    }
    public function role(){
        return $this->belongsTo('App\Role' , 'roles_id');
    }
    public function category(){
        return $this->belongsTo('App\Category' , 'categories_id');
    }
    public function project(){
        return $this->hasMany('App\Project');
    }
}
