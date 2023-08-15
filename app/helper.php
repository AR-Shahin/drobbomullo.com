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

function getPlatForm()
    {
        $u_agent = $_SERVER['HTTP_USER_AGENT'];
        $bname = 'Unknown';
        $platform = 'Unknown';
        $version= "";

        if (preg_match('/linux/i', $u_agent)) {
          $platform = 'linux';
        }elseif (preg_match('/macintosh|mac os x/i', $u_agent)) {
          $platform = 'mac';
        }elseif (preg_match('/windows|win32/i', $u_agent)) {
          $platform = 'windows';
        }

        if(preg_match('/MSIE/i',$u_agent) && !preg_match('/Opera/i',$u_agent)){
          $bname = 'Internet Explorer';
          $ub = "MSIE";
        }elseif(preg_match('/Firefox/i',$u_agent)){
          $bname = 'Mozilla Firefox';
          $ub = "Firefox";
        }elseif(preg_match('/OPR/i',$u_agent)){
          $bname = 'Opera';
          $ub = "Opera";
        }elseif(preg_match('/Chrome/i',$u_agent) && !preg_match('/Edge/i',$u_agent)){
          $bname = 'Google Chrome';
          $ub = "Chrome";
        }elseif(preg_match('/Safari/i',$u_agent) && !preg_match('/Edge/i',$u_agent)){
          $bname = 'Apple Safari';
          $ub = "Safari";
        }elseif(preg_match('/Netscape/i',$u_agent)){
          $bname = 'Netscape';
          $ub = "Netscape";
        }elseif(preg_match('/Edge/i',$u_agent)){
          $bname = 'Edge';
          $ub = "Edge";
        }elseif(preg_match('/Trident/i',$u_agent)){
          $bname = 'Internet Explorer';
          $ub = "MSIE";
        }

        $known = array('Version', $ub, 'other');
        $pattern = '#(?<browser>' . join('|', $known) .
      ')[/ ]+(?<version>[0-9.|a-zA-Z.]*)#';
        if (!preg_match_all($pattern, $u_agent, $matches)) {

        }

        $i = count($matches['browser']);
        if ($i != 1) {

          if (strripos($u_agent,"Version") < strripos($u_agent,$ub)){
              $version= $matches['version'][0];
          }else {
              $version= $matches['version'][1];
          }
        }else {
          $version= $matches['version'][0];
        }

        if ($version==null || $version=="") {$version="?";}

        $data = [
            'userAgent' => $u_agent,
            'name'      => $bname,
            'version'   => $version,
            'platform'  => $platform,
            'pattern'    => $pattern
          ];

        return ucfirst($data['platform']);
    }

    /**
       * Get browsing user browser information
       *
       * @param null
       * @return browser @platform
       */

     function getBrowser()
    {
        $arr_browsers = ["Opera", "Edg", "Chrome", "Safari", "Firefox", "MSIE", "Trident"];

        $agent = $_SERVER['HTTP_USER_AGENT'];

        $user_browser = '';
        foreach ($arr_browsers as $browser) {
            if (strpos($agent, $browser) !== false) {
                $user_browser = $browser;
                break;
            }
        }

        switch ($user_browser) {
            case 'MSIE':
                $user_browser = 'Internet Explorer';
                break;

            case 'Trident':
                $user_browser = 'Internet Explorer';
                break;

            case 'Edg':
                $user_browser = 'Microsoft Edge';
                break;
        }

        return $user_browser;
    }
