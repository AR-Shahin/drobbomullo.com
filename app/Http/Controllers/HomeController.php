<?php

namespace App\Http\Controllers;

use App\Models\MainTable;
use Illuminate\Http\Request;


class HomeController extends Controller
{
    const PAGINATE = 20;

    public function index(Request $request)
    {

        $products = MainTable::
                        when($request->key, fn($q) => $q->where("item_name", "like", "%{$request->key}%"))
                        ->paginate(HomeController::PAGINATE)
                        ->withQueryString($request->all());
        $cat = "";
        $tempSubCat = "";
        return view('frontend.home',compact('products','cat','tempSubCat'));
    }

    public function categorySubcategory($cat,$subcat)
    {
        $products = MainTable::
                                whereCategory($cat)
                                ->whereSubcategory($subcat)
                                ->paginate(HomeController::PAGINATE);
        $tempSubCat =  $subcat;
        return view('frontend.home',compact('products','cat','tempSubCat'));
    }

}
