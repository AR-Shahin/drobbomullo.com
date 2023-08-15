<?php

use App\Http\Controllers\ContactController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\OfferController;

Route::get('category/{cat}/subcategory/{subcat}',[HomeController::class,"categorySubcategory"])->name('cat_subcat');

Route::get("/ars",[HomeController::class,'index']);

Route::get('/',[HomeController::class,'index'])->name('home');




Route::get('contact',[ContactController::class,'index'])->name('contact');
Route::get('offer',[OfferController::class,'index'])->name('offer');


Route::get('/mac', function () {
   

    $platform = getPlatForm();
    echo $platform . "<br>";
    if($platform == "Mac"){
      return "Mac " . shell_exec("ifconfig en0 | awk '/ether/{print $2}'");
    }elseif($platform == "Linux"){
      return "Mac  " . shell_exec("ifconfig en0 | awk '/ether/{print $2}'");
    }
   // return shell_exec("ifconfig en0 | awk '/ether/{print $2}'"); // Mac
    //return $mac = shell_exec("ip link | awk '{print $2}'"); // Linux
        // preg_match_all('/([a-z0-9]+):\s+((?:[0-9a-f]{2}:){5}[0-9a-f]{2})/i', $mac, $matches);
        // $output = array_combine($matches[1], $matches[2]);
        // $mac_address_values =  json_encode($output, JSON_PRETTY_PRINT);
        // $mac = json_decode($mac_address_values);

        // dd($mac_address_values);
        // return $mac;

        // function getOSInformation()
        // {
            // if (false == function_exists("shell_exec") || false == is_readable("/etc/os-release")) {
            //     return null;
            // }

            $os         = shell_exec('cat /etc/os-release');
            $listIds    = preg_match_all('/.*=/', $os, $matchListIds);
            $listIds    = $matchListIds[0];

            $listVal    = preg_match_all('/=.*/', $os, $matchListVal);
            $listVal    = $matchListVal[0];

            array_walk($listIds, function(&$v, $k){
                $v = strtolower(str_replace('=', '', $v));
            });

            array_walk($listVal, function(&$v, $k){
                $v = preg_replace('/=|"/', '', $v);
            });

            return array_combine($listIds, $listVal);
        // }


});

