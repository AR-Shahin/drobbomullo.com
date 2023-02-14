<?php

use App\Http\Controllers\HomeController;
use App\Models\MainTable;
use Illuminate\Support\Facades\Route;



Route::get('/',[HomeController::class,'index'])->name('home');
