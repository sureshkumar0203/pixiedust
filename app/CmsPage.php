<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class CmsPage extends Model {

    protected $fillable = ['title', 'description', 'image', 'meta_title', 'meta_description', 'meta_keywords'];

}
