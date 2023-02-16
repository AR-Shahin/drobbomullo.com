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
    protected $primaryKey = "item_name";
    protected $keyType = "string";

    public function link(){
        return $this->belongsTo(Link::class,"item_name","item_name");
    }

    public function price(){
        return $this->belongsTo(Price::class,"item_name","item_name");
    }
}
