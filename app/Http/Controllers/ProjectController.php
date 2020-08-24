<?php

namespace App\Http\Controllers;
use App\Project;
use Illuminate\Http\Request;
use App\Repositories\ProjectRepository; 
use App\Http\Requests\ProjectsRequest;
use Illuminate\Support\Facades\Gate;

use Illuminate\Support\Facades\Auth;

class ProjectController extends Controller
{
    public $project; 
    //
    public function __construct(ProjectRepository $project){
$this->project = $project; 
$this->middleware('auth')->only('create');

    }
    public function index(){
   $projects =   $this->project->all();
return view('projects.index' , compact('projects')); 
    }
    public function create(){
        if (Gate::allows('create-project')) {
            // The current user can edit settings
            return view('projects.create');
        }else{
            return redirect('/projects')->with('error' , 'هذه الخاصية محددة للمبتكرين موثقي الحساب فقط😜');
        }
        

    }

public function show($id){
    $project = $this->project->show($id); 
    return view('projects.show' , compact('project')); 

}
    public function store(ProjectsRequest $request)
    {

        $request->request->add(['users_id' => 
        Auth::user()->id]);
   
        $this->project->store($request->all()); 
        if ($request->hasFile('image')) {

            $imageName = time().'.'.request()->image->getClientOriginalName();
        
          
        
            request()->image->move(public_path('uploads'), $imageName);
            
            $request->image = $imageName;
        }
        if ($request->hasFile('file')) {

            $fileName = time().'.'.request()->file->getClientOriginalName();
        
          
        
            request()->file->move(public_path('uploads'), $fileName);
            
            $request->file = $imageName;
        }

        return redirect('/projects')->with('msg' , 'تم اضافة مشروعك بنجاح👷');
    }

    public function search(Request $request)
    {
       // dd('ok');
    
    $params = $request->except('_token');
    $params = $request->all(); 
    //dd($params); 
    $projects = Project::filter($params)->get();
   
   
    return view ('projects.search' , compact('projects'));
    
    }














}
