<?php

namespace App\Http\Controllers;

use App\Models\Animal;
use Illuminate\Http\Request;

class PageController extends Controller
{
    public function home() 
    {
        return view('home');
    }

    public function all()
    {
        return view('database.all', ['animals' => Animal::orderBy('aname')->paginate(20)]);
    }
}
