<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EventCms extends Model
{
    protected $fillable = ['title', 'slug', 'description', 'image', 'meta_title', 'meta_description', 'meta_keywords'];
}
