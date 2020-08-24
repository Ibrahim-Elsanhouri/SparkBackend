<?php

namespace App\Repositories;

interface ProjectRepositoryInterface
{
    public function all(); 
    public function show($id); 
    public function store(array $data);
}