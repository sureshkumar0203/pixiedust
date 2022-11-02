<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MassageTherapyBooking extends Model {

    protected $fillable = ['user_id', 'booking_time', 'booking_mins', 'booking_date', 'paid_amount', 'payment_status', 'transaction_id', 'booking_email', 'booking_note','off_status','cancel_status','account_details','admin_notes'];

    public function user_registrations() {
        return $this->belongsTo('App\UserRegistration', 'user_id');
    }

}
