<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    //
    protected $guarded = []; 
    public function category(){
        return $this->belongsTo('App\Category' , 'categories_id' );
    }
    public function user(){
        return $this->belongsTo('App\User' , 'users_id' );

    }
    public function scopeFilter($query, $params)
    {
    if ( isset($params['name']) && trim($params['name'] !== '') )
    {
    $query->where('name', 'LIKE','%'.trim($params['name']).'%');
    }
    if ( isset($params['categories_id']) && $params['categories_id'] !== '' )
    {
    $query->where('categories_id',$params['categories_id']);
    }

    if ( isset($params['created_at']) && trim($params['created_at']) !== '' )
    {
    $query->whereDate('created_at', '>=', trim($params['created_at']));
    }

    if ( isset($params['cost']) && $params['cost'] !== '' )
    {
    $query->where('cost',$params['cost']);
    }


    return $query;
    }
    
}
   // if ( $params['show_expired'] == 1 )
    //{
    //$query->whereDate('receive_date', '<=', Carbon::today()->toDateString());
    //}
    


    /*
    if ( isset($params['taging']) && trim($params['taging'] !== '' )){
      //  $length = count($params['taging']); 
       // $names = []; 
    $names =  $params['taging'];
    $query->whereHas('tags' , function($query) use ($names) {
       // for ($i = 0; $i <= $length; $i++) {
         //   $off = $params['taging'][$i];
    //    }
    
     $query->whereIn('name'  , [$names[0] , $names[1] , $names[2] , $names[3] ,  $names[4] , $names[5] , $names[6] ,  $names[7] ,$names[8]  , $names[9]  ]);
        
      //       $query->orwhere('name' ,'LIKE' ,   $names[$i]);
       //  $query->where('name'  ,   $names[$i]);
    
    });
    }
    */
    