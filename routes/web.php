<?php

use App\Http\Controllers\HomeController;
use App\Models\MainTable;
use Illuminate\Support\Facades\Route;



Route::get('/',[HomeController::class,'index'])->name('home');
Route::get('category/{cat}/subcategory/{subcat}',[HomeController::class,"categorySubcategory"])->name('cat_subcat');