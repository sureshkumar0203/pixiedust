<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductStock extends Model
{
    protected $fillable = ['product_id', 'color_id','size_id','stock'];
    
    public function product() {
        return $this->belongsTo('App\Product');
    }
	
	public function size() {
        return $this->belongsTo('App\Size','size_id');
    }
	public function color() {
        return $this->belongsTo('App\Color','color_id');
    }
}
