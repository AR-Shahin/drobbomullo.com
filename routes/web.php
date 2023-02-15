<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;


Route::get("/ars",[HomeController::class,'index']);
Route::get('/',[HomeController::class,'index'])->name('home');
Route::get('category/{cat}/subcategory/{subcat}',[HomeController::class,"categorySubcategory"])->name('cat_subcat');
