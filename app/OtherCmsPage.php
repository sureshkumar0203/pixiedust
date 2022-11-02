<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OtherCmsPage extends Model
{
     protected $fillable = ['cms_page','title', 'description','img_vid','meta_title','meta_keywords','meta_description'];
}
