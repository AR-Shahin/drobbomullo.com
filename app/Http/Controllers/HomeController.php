<?php

namespace App\Http\Controllers;

use App\Models\MainTable;
use Illuminate\Http\Request;


class HomeController extends Controller
{
    public function index(Request $request)
    {

        $categories =  MainTable::select('category')->groupBy('category')->get();
        $products = MainTable::
                        when($request->key, fn($q) => $q->where("item_name", "like", "%{$request->key}%"))
                        ->paginate(10)
                        ->withQueryString($request->all());
        $cat = "";
        $tempSubCat = "";
        return view('frontend.home',compact('products','categories','cat','tempSubCat'));
    }

    public function categorySubcategory($cat,$subcat)
    {
        $categories =  MainTable::select('category')->groupBy('category')->get();
        $products = MainTable::
                                whereCategory($cat)
                                ->whereSubcategory($subcat)
                                ->paginate(10);
        $tempSubCat =  $subcat;
        return view('frontend.home',compact('products','categories','cat','tempSubCat'));
    }

    public function search($key)
    {
        $products = MainTable::where("item_name","like","%$key%")->get();
        return $products;
    }
}
