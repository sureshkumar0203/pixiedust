@extends('admin.layouts.master')
@section('title','Add Psychic Off Days')
@section('content')


<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Add Psychic Off Days</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item active">Add Psychic Off Days</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="card card-primary">
                    	 @include('admin.includes.msg')                     
                        <div class="card-header">
                            <h3 class="card-title">Add Psychic Off Days</h3>
                        </div>               
                        {{ Form::open(['route' => 'psychic-offdays.store','data-toggle'=>"validator", 'role' => 'form', 'class' =>'validate', 'name' => 'add-psychic-offdays', 'id' => 'add-psychic-offdays','files'=>true, 'autocomplete' => 'off']) }}

                        <div class="card-body">
                          <div class="form-group">                                    
                            <label for="banner">Choose Date</label>                                    
                            {!! Form::text('booking_date',old('booking_date'), ['readonly','id' => 'booking_date','required', 'class'=>'form-control booking_date']) !!} 
                            @if ($errors->has('booking_date'))
                              <span class="help-block">
                              	<strong>{{ $errors->first('booking_date') }}</strong>
                              </span>
                            @endif
                            <div class="help-block with-errors"></div>
                          </div>
                         
                        
                         
                         <strong>Select All</strong> {{ Form::checkbox('chk_all',1,null, array('id'=>'chk_all','class'=>'')) }}
                         <div id="time_data" style="display:none;"></div>
                         
                          
                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            {{ Form::submit('Save', ['class' => 'btn btn-success']) }}
                            <a href="{{ url('admin/psychic-offdays') }}" class="btn btn-warning">Back</a> 
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
@push('script')   
<script src="{{ asset('public/admin/plugins/datepicker/jquery-ui.js') }}"></script>
<script type="text/javascript">
$(function () {
	$(".booking_date").datepicker({
		dateFormat: 'yy-mm-dd',
		changeMonth: true,
		changeYear: true,
		numberOfMonths: 1,
		minDate: new Date(),
		
		onSelect: function(booking_date) {
			$('#time_data').show();
			checkBookedTime(booking_date);
    	}
		
		/*showWeek: true,
		onClose: function (selectedDate) {
			$(".end_date").datepicker("option", "minDate", selectedDate);
		}*/
	});
	
	$('#chk_all').click(function() {
		if($(this).prop("checked") == true){
			$('.chk_ot').each(function(){
				$('.chk_ot').prop('checked',true);
			});
        }else{
			$('.chk_ot').each(function(){
				$('.chk_ot').prop('checked',false);
			});
		}
    });
	
});

function checkBookedTime(inputDate) {
	if (inputDate) {
		$("#ajax_loader").show();
		//var url = "{{ url('/check-psy-booked-time') }}";
		$.ajax({
			type: "POST",
			cache: false,
			url: '{{ url("/check-psy-booked-time") }}',
			data: {'selected_date': inputDate},
			success: function (response) {
				//console.log(response.result);
				//return false;
				$("#ajax_loader").hide();
				if (response.status == 'success') {
				//if (response) {
					$("#time_data").empty();
					
					$.each(response.result, function () {
						//var twelve_hr_time = twelveHourTimeConvert(value);
						$("#time_data").html(response.result);
              
                           /* if ($.inArray(value, response.bookedData) >= 0) {
                                $("#book_" + index).prop("onclick", null).off("click");
                                $("#book_" + index).addClass('bookedTime');
                            }*/
							
							
                        });
                    }
                }
            });
        }
    }
</script>
@endpush
@stop