<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\CategoryRepository; 

class CategoryController extends Controller
{
    //
public $category;
    public function __construct(CategoryRepository $category){
        $this->category = $category; 
        
            }
    public function show($id){
$projects =  $this->category->show($id);

//dd($projects); 
return view('categories.show'  , compact('projects'));  


    }
}
