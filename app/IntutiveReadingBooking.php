<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class IntutiveReadingBooking extends Model {

    protected $fillable = ['user_id', 'booking_time', 'booking_date', 'booking_mins', 'booking_email', 'booking_note','off_status','cancel_status'];
    
    public function user_registrations() {
        return $this->belongsTo('App\UserRegistration','user_id');
    }

}
