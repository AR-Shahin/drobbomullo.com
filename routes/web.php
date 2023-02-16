<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;


Route::get('category/{cat}/subcategory/{subcat}',[HomeController::class,"categorySubcategory"])->name('cat_subcat');

Route::get("/ars",[HomeController::class,'index']);

Route::get('/',[HomeController::class,'index'])->name('home');
Route::get('auto-search-product/{key}',[HomeController::class,'search'])->name('search');

Route::get("/test",function (){
    return 1;
});
