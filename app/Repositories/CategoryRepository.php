<?php

namespace App\Repositories;
use App\Category; 
class CategoryRepository implements CategoryRepositoryInterface{

 

    public function show($id){
        return Category::find($id)->projects;
    }


}