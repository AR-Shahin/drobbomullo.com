<?php

use App\Models\MainTable;
use Illuminate\Support\Facades\Route;

function hello(){
    return "Hello";
}

function getSubcategories($name)
{
    return MainTable::where('category',$name)
                        ->select('subcategory')
                        ->groupBy('subcategory')
                        ->get();
}


function routeActive($name) :bool
{
    return Route::is($name);
}
