<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MainTable extends Model
{
    use HasFactory;
    protected $with = [
        "link","price"
    ];
    protected $table = "main_table";
    protected $primaryKey = "item_id";
    // protected $keyType = "string";

    public static function fetchCategories()
    {
        return self::select('category')->groupBy('category')->get();
    }
    public function link(){
        return $this->belongsTo(Link::class,"item_id","item_id");
    }

    public function price(){
        return $this->belongsTo(Price::class,"item_id","item_id");
    }
}
