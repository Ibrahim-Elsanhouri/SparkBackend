<?php

namespace App\Repositories;
use App\Project; 
class ProjectRepository implements ProjectRepositoryInterface{

    public function all(){
        return Project::orderBy('id', 'desc')->paginate(6); 
    }

    public function show($id){
        return Project::find($id);
    }

    public function store(array $data){
         return Project::create($data);
}
}