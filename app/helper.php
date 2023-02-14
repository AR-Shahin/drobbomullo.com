<?php

use App\Models\MainTable;

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