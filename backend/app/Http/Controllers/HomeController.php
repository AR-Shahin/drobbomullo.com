<?php

namespace App\Http\Controllers;

use App\Models\MainTable;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
         $products = MainTable::paginate(4);
        return view('frontend.home',compact('products'));
    }
}
