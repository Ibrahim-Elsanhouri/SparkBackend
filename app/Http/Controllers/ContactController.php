<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact; 
class ContactController extends Controller
{
    //
    public function index(){
      

        return view('contact'); 


    }
    public function store(Request $request){
        $contact = new Contact(); 
$contact->name = $request->name; 
$contact->query = $request->input('query'); 
$contact->email = $request->email; 
$contact->save(); 

return redirect('/contact')->with('msg', 'تم ارسال استفسارك بنجاح!😊');

    }

}
