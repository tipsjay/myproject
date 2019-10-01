<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //I made it fillable opposite to guarded so this should always have parameter
    protected $fillable = ['imagePath','title','description','price'];
    
}
