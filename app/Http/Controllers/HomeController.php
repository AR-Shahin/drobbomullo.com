<?php

namespace App\Http\Controllers;

use App\Models\MainTable;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $categories =  MainTable::select('category')->groupBy('category')->get();
        $products = MainTable::with(['link','price'])->paginate(4);
        return view('frontend.home',compact('products','categories'));
    }

    public function categorySubcategory($cat,$subcat)
    {
        $categories =  MainTable::select('category')->groupBy('category')->get();
        $products = MainTable::with(['link','price'])
                                ->whereCategory($cat)
                                ->whereSubcategory($subcat)
                                ->paginate(4);
        return view('frontend.home',compact('products','categories','cat',"subcat"));
    }
}
