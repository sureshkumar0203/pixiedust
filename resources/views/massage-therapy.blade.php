@extends('layouts.master')
@section('title') {{ getSeoDetails(5)->meta_title }} @stop
@section('keywords'){{ getSeoDetails(5)->meta_keywords }} @stop
@section('description'){{ getSeoDetails(5)->meta_description }} @stop
@section('content')
<div class="container mtb50">
  <div class="time-scdle">
    <div class="row">
      <div class="col-md-12">
        <h1 class="title"><span style="color:#000; font-size:20px;">Massage Therapy Time Schedule</span></h1>
        <br>
      </div>
      <div class="col-md-12">
        <div class="col-md-6 wk"> {!! $getMassageTherapists->description !!} </div>
        <div class="col-md-6" style="padding-right:6px;">
          <table width="100%" border="1" cellspacing="5" cellpadding="5" class="time-tbl">
            <tr>
              <th width="50%" style="background:#f0f8ff;">Timing</th>
              <th width="50%" style="background:#f0f8ff;">Price</th>
            </tr>
            <?php $getMassageTherapyPrices ?>
            @foreach($getMassageTherapyPrices as $getMassageTherapyPrice)
            <tr>
              <td>{{ minutes($getMassageTherapyPrice->massage_timing) }} Mins</td>
              <td>${{ $getMassageTherapyPrice->price }}</td>
            </tr>
            @endforeach
          </table>
        </div>
      </div>
    </div>
    <hr>
    <form>
      <div class="time-scdle-fm">
        <div class="row mb15">
          <div  class="col-md-12 text-center" style="height: 20px;"> <span id="err_msg_booking" style="display:none;color: red;"></span> <span id="succ_msg_booking" style="display:none;color: green;"></span> </div>
          <div class="form-group col-md-6">
            <label for="inputAddress">Date</label>
            <input type="text" class="form-control" id="inputDate" readonly placeholder="YYYY-MM-DD" title="Click here to Select Date" style="background: #fff;">
            <span id="err_msg" style="color: red; display: none;"></span> </div>
          <div class="form-group col-md-6">
            <label for="inputState">Time</label>
            <select id="inputMins" class="form-control" onchange="getTimeMins(this.value)">
              
                            @foreach($getMassageTherapyPrices as $getMassageTherapyPrice)                            
                            
              <option value="{{ minutes($getMassageTherapyPrice->massage_timing) }}">{{ minutes($getMassageTherapyPrice->massage_timing) }} Minute</option>
               
                            @endforeach
                        
            </select>
          </div>
        </div>
        <div class="row" id="time_data">
          <div id="old_data"> @foreach(getTimeFrame30Min() as $key=> $time30min)
            <div class="col-md-3 col-sm-4 col-xs-6 time-box" title="{{ date("g:i A", strtotime($time30min)) }}"><span style="cursor: pointer;" id="book_{{ $key+1 }}" onclick="checkBooking(this.id)" >{{ $time30min }}</span>
            <p class="thf">{{ date("g:i A", strtotime($time30min)) }}</p>
            </div>
            @endforeach </div>
        </div>
        <div class="clearfix"></div>
        <div class="row avl" style="margin-top:30px;">
          <div class="col-md-12"> <span class="available"></span> <span>&nbsp;Available</span> <span class="not-available noavl-c"></span><span>&nbsp;Not Available</span> <span class="text-red"><strong>Note : You must create an account and be logged in to book online.</strong></span>
            <div class="clearfix"></div>
            @if(session()->get('user_id') == 1)
            <div class="col-md-12" style="margin-top:10px;">
              <div class="form-group row">
                <label for="email" class="col-sm-3 col-form-label">Email Address* :</label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="booking_email" placeholder="Email Address">
                </div>
              </div>
              <div class="form-group row">
                <label for="note" class="col-sm-3 col-form-label">Note :</label>
                <div class="col-sm-9">
                  <textarea type="text" class="form-control" id="booking_note" placeholder="Note"></textarea>
                </div>
              </div>
            </div>
            @endif
            <div class="text-left">
              <button type="button" id="book_btn" class="btn btn-primary  mt10" onclick="return bookingMassageTherapy()">Book Now</button>
            </div>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
      <input type="hidden" value="" id="click_book_time_get"/>
      <input type="hidden" value="" id="time_arr"/>
    </form>
  </div>
</div>
<div id="ajax_loader" class="loader"> <span style="position:relative; top:50%;">
  <div class="spinner"></div>
  </span> </div>
@endsection

@push('script') 
<script src="{{ asset('public/datepicker/datepicker.min.js') }}"></script>
<script src="{{ asset('public/datepicker/datepicker.en.js') }}"></script>
<script>
var current = new Date();
var min_date = new Date(current.setDate(current.getDate() + 1)); //1 Day
var max_date = new Date(current.setMonth(current.getMonth()+1)); // 1 Month

$('#inputDate').datepicker({
    language: 'en',
    //minDate: new Date(),
    minDate: min_date,
    maxDate:max_date,
    autoClose: true,
    onSelect: function(formattedDate) {
        checkAvailableTime(formattedDate);
    }
})
</script>
<script>
    function pad(str, max){
	  str = str.toString();
	  return str.length < max ? pad("0" + str, max) : str;
	}
	
    function getTimeMins(mins){
        //alert(mins);
        $("#click_book_time_get").val("");
        $("#time_arr").val("");
        $('.row .time-box span').removeClass('psychic_reading');
    }

    function checkBooking(id) {
        //var ID = id;
        $("#click_book_time_get").val("");
        $("#time_arr").val("");
        $("#click_book_time_get").val(id);
        var x = validateBook(id);
        if (x == true) {
            var bookTime = $("#" + id).html();
            $('.row .time-box span').removeClass('psychic_reading');
            $("#" + id).toggleClass("psychic_reading");
            // Current Time Check
            var today = new Date();
            var time = today.getHours() + ":" + today.getMinutes();
            //console.log(time);
            //var time = "11:00";
            var bookDate = $("#inputDate").val();
			var date = today.getFullYear()+'-'+(pad(today.getMonth()+1,2))+'-'+pad(today.getDate(),2);
			var time = pad(today.getHours(),2) + ":" + pad(today.getMinutes(),2);
			
            var current_dateTime = date+' '+time;
            var book_dateTime = bookDate+' '+bookTime;
			
			var safari_current_dateTime = date+'T'+time;
			var safari_book_dateTime = bookDate+'T'+bookTime;
			  //console.log(safari_current_dateTime);
			 
            cDate = parseInt(new Date(safari_current_dateTime).getTime()/1000); 
			fDate = parseInt(new Date(safari_book_dateTime).getTime()/1000);
			var timeDiff = parseFloat((fDate - cDate))/3600;
            
            if(timeDiff > 0){
                var bookTimeMins = $("#inputMins").val();              
                var count = bookTimeMins / 30;
                var endTime = addMinutes(bookTime, bookTimeMins);
                var timeArray = new Array();                
                var idArray = new Array();                
                var URL = "{{ url('/ajax-available-time-massage') }}";
                if (endTime <= "17:00") {
                    for (var i = 0; i <= count - 1; i++) {
                        var x = addMinutes(bookTime, 30 * i);                        
                        timeArray.push(x); 
                        var idYouAreSearchingFor = $("span:contains('"+x+"')").attr('id');
                        //alert(idYouAreSearchingFor);
                        idArray.push("#"+idYouAreSearchingFor);
                    }                   
                    
                    var book_slot = idArray.toString();                    
                    $(""+book_slot+"").addClass("psychic_reading");
                    if (timeArray != "") {
                        $("#ajax_loader").show();
                        $.ajax({
                            type: 'POST',
                            url: URL,
                            data: {'bookDate': bookDate, 'timeArray': timeArray,'bookTimeMins':bookTimeMins},
                            success: function (response) {
                                $("#ajax_loader").hide();
                                if(response.status == 'available'){                                    
                                    $("#succ_msg_booking").delay(500).fadeOut().html("Selected booking time is available for "+ response.bookTimeMins +" Mins.").show();
                                    $("#time_arr").val(timeArray);
                                }else{  
                                    $(""+book_slot+"").removeClass("psychic_reading");
                                    $("#err_msg_booking").delay(500).fadeOut().html("Selected booking time is not available for "+ response.bookTimeMins +" Mins.").show();
                                }
                            }
                        });
                    }
                } else {
                    
                    $("#" + id).removeClass("psychic_reading");
                    $("#err_msg_booking").delay(1000).fadeOut().html("Service time exceed.").show();
                }
            } else {
                //console.log(id);
                //$(""+book_slot+"").removeClass("psychic_reading");
                $("#" + id).removeClass("psychic_reading");              
                $("#err_msg_booking").delay(1000).fadeOut().html("Please select greater than current time.").show();
            }
        }
    }
    function addMinutes(time, minsToAdd) {
        function D(J) {
            return (J < 10 ? '0' : '') + J};
        var piece = time.split(':');
        var mins = piece[0] * 60 + +piece[1] + +minsToAdd;
        return D(mins % (24 * 60) / 60 | 0) + ':' + D(mins % 60);
    }

    $(function () {
        var today = new Date().toISOString().split('T')[0];
        $("#inputDate")[0].setAttribute('min', today);
        $("#click_book_time_get").val("");
        $("#time_arr").val("");       
        $("#inputDate").val("");
        //checkBooking();

    });

    function validateBook() {           
        var inputDate = $("#inputDate").val();
        var bookTime = $("#click_book_time_get").val();
       
       //console.log(bookTime);
        if (inputDate == "") {
            $("#err_msg").delay(2000).fadeOut().html("Please enter date.").show();
            return false;
        } else if(bookTime == "") {
            $("#err_msg_booking").delay(1000).fadeOut().html("Please enter booking time.").show();
            return false;
        }else{
            return true;
        }

    }
     

    function bookingMassageTherapy() {
        var x = validateBook();
        //console.log(x);
        var userId = "{{ session()->get('user_id') }}";
        if (userId == "") {
            window.location.href = "user-login";
        }else if(x == true){
			if(userId == 1){
				var booking_email = $('#booking_email').val();
				var booking_note = $('#booking_note').val();
				if(booking_email == ''){
					alert("Please enter booking Email address");
					$('#booking_email').focus();
					return false;
				}
			}
			
			/*else{
				var booking_email = 'Null';
				var booking_note = 'Null';
			}*/
			
			
            var bookTimeId = $("#click_book_time_get").val();
            var startTime = $("#"+bookTimeId).html();
            var booking_time_slot = $("#time_arr").val();
            var bookTimeMins = $("#inputMins").val();
            var bookDate = $("#inputDate").val();
            var URL = "{{ url('/massage-therapy-booking') }}";
            if(booking_time_slot != ""){
             $("#ajax_loader").show();
             $.ajax({
                 type:"POST",
                 url:URL,
                 data:{'user_id':userId,'booking_time':booking_time_slot,'booking_mins':bookTimeMins,'booking_date':bookDate,'startTime':startTime,'booking_email':booking_email,'booking_note':booking_note},
                 success:function(response){
                     $("#ajax_loader").hide();
                     if(response.status == 'success'){
                          $("#succ_msg_booking").delay(1000).fadeOut().html(response.msg).show();
                            window.setTimeout(function() {
                                window.location.href = 'massage-therapy-payment';
                            }, 3000);
                     }else if(response.status == 'admin'){
						 $("#succ_msg_booking").delay(2000).fadeOut().html(response.msg).show();
                            window.setTimeout(function() {
                                window.location.href = 'my-account';
                            }, 3000);
					 }else{
                        $("#err_msg_booking").delay(2000).fadeOut().html(response.msg).show(); 
                     }
                 }
             });
         }else{
             $("#err_msg_booking").delay(1000).fadeOut().html("Please select available time slot.").show(); 
         }
            
        }

    }

    function checkAvailableTime(inputDate) {

        if (inputDate) {
            $('.row .time-box span').removeClass('psychic_reading');
            $("#click_book_time_get").val("");
            $("#time_arr").val("");
            var data = {1: "11:00", 2: "11:30", 3: "12:00", 4: "12:30", 5: "13:00", 6: "13:30", 7: "14:00", 8: "14:30", 9: "15:00", 10: "15:30", 11: "16:00", 12: "16:30"};
            $("#ajax_loader").show();
            var url = "{{ url('/check-msg-available-time') }}";
            $.ajax({
                type: "POST",
                cache: false,
                url: url,
                data: {'date': inputDate},
                success: function (response) {
                    $("#ajax_loader").hide();
                    if (response.status == 'success') {
                        $("#time_data").empty();
                        $.each(data, function (index, value) {
							var twelve_hr_time = twelveHourTimeConvert(value);
							
                            $("#time_data").append('<div class="col-md-3 col-sm-4 col-xs-6 time-box"><span class="test"  onclick="checkBooking(this.id)" data-book=' + value + '  style="cursor: pointer;" id="book_' + index + '">' + value + '</span> <p class="thf">'+ twelve_hr_time + '</p></div>');
							
                            if ($.inArray(value, response.bookedData) >= 0) {
                                $("#book_" + index).prop("onclick", null).off("click");
                                //$("#book_" + index).css({"background-color": "lightgray", 'cursor': "auto"});
                                $("#book_" + index).addClass('bookedTime');
                            }
                        });
                    }
                }
            });
        }
    }


function twelveHourTimeConvert (time) {
  time = time.toString ().match (/^([01]\d|2[0-3])(:)([0-5]\d)(:[0-5]\d)?$/) || [time];
  if (time.length > 1) { // If time format correct
    time = time.slice (1);  // Remove full string match value
    time[5] = +time[0] < 12 ? ' AM' : ' PM'; // Set AM/PM
    time[0] = +time[0] % 12 || 12; // Adjust hours
  }
  return time.join (''); // return adjusted time or original string
}
</script> 
@endpush