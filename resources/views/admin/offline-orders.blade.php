@extends('admin.layouts.master')
@section('title','Offline Order')
@section('content')
@php 
$color_data = colorList();
$size_data = sizeList();
@endphp

<script type="text/javascript" src="{{ asset('public/admin/ckeditor/ckeditor.js') }}"></script>
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Add Offline Order</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
            <li class="breadcrumb-item active">Add Offline Order</li>
          </ol>
        </div>
      </div>
    </div>
    <!-- /.container-fluid --> 
  </section>
  
  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row"> 
        <!-- left column -->
        <div class="col-md-12"> 
          <!-- general form elements -->
          <div class="card card-primary"> @include('admin.includes.msg')
            <div class="card-header">
              <h3 class="card-title">Add Add Offline Order</h3>
            </div>
            {{ Form::open(['route' => 'products.store','data-toggle'=>"validator", 'role' => 'form', 'class' =>'validate', 'name' => 'add-product', 'id' => 'add-category','files'=>true, 'autocomplete' => 'off']) }}
            <div class="card-body">
              
              
              <div class="form-group">
                <label for="name">Name</label>
                {!! Form::text('name',old('name'), ['id' => 'name','required', 'class'=>'form-control']) !!}
                @if ($errors->has('name')) <span class="help-block"> <strong>{{ $errors->first('name') }}</strong> </span> @endif
                <div class="help-block with-errors"></div>
              </div>
              
              <div class="form-group">
                <label for="name">Discount (In %)</label>
                {!! Form::text('discount',old('discount'), ['id' => 'discount', 'class'=>'form-control','onkeypress'=>"return isNumberKey(event)"]) !!} </div>

              <div class="form-group">
                <label for="discount_price">Discount Price</label>
                {!! Form::text('discount_price',old('discount_price'), ['id' => 'discount_price', 'class'=>'form-control','onkeypress'=>"return isNumberKey(event)"]) !!} </div>

                <div class="form-group">
                    <label for="discount_price">Select Product</label>
                    <select class="form-control" id="color_id" name="color_id">
                      <option  value="">--Select Color--</option>
                      @foreach($color_data as $colors_key => $color_val)
                      <option  value="{{ $colors_key }}">{{ $color_val }}</option>
                      @endforeach
                    </select>
                </div>
              
              <div class="form-group col-md-8">
                <label style="margin-left:-10px;"><strong>Set Product Stock</strong></label>
                <div style="width:80px; float:right; text-align:right;" id="disp_pm">
                  <img src="{{ asset('public/images/plus.gif') }}" width="16" height="16"  onClick="addProductStock();" style="cursor:pointer;"/>&nbsp; 
                  
                  <img src="{{ asset('public/images/minus.gif') }}" width="16" height="16" onClick="delProductStock();" style="cursor:pointer;"/> 
                </div>
                
                <div class="prod-specif-row">
                  <div class="_row clearfix" id="row_to_clone1">
                    <div class="row" style="margin-bottom:5px;">
                      <input type="hidden" name="prd_stock_row_count" id="prd_stock_row_count" value="1">
                      <div class="col-md-4">
                        <label>Color <span style="color:#F00;"></span></label>
                        <select class="form-control" id="color_id1" name="color_id1" required>
                          <option  value="">--Select Color--</option>
                          @foreach($color_data as $color_key => $color_val)
                          <option  value="{{ $color_key }}">{{ $color_val }}</option>
                          @endforeach
                        </select>
                      </div>
                      
                      <div class="col-md-4">
                        <label>Size <span style="color:#F00;"></span></label>
                        <select class="form-control" id="size_id1" name="size_id1" required>
                          <option  value="">--Select Size--</option>
                          @foreach($size_data as $size_key => $size_val)
                          <option  value="{{ $size_key }}">{{ $size_val }}</option>
                          @endforeach
                        </select>
                      </div>
                      
                      <div class="col-md-4">
                        <label>Stock <span style="color:#F00;">*</span></label>
                        {!! Form::text('stock1','',array('id' => 'stock1','required','class'=>'form-control','placeholder'=>'Stock', 'onKeyUp' => 'validatePrice(this)', 'maxlength'=>'10')) !!} 
                        </div>
                    </div>
                  </div>
                  @php for($s=2;$s<=10;$s++){ @endphp
                  <div class="_row clearfix" id="row_to_clone{{$s}}" style="display:none;margin-bottom:5px;">
                    <div class="row">
                      <div class="col-md-4">
                        <select class="form-control" id="color_id{{ $s }}" name="color_id{{ $s }}">
                          <option  value="">--Select Color--</option>
                          @foreach($color_data as $colors_key => $color_val)
                          <option  value="{{ $colors_key }}">{{ $color_val }}</option>
                          @endforeach
                        </select>
                      </div>
                      
                      <div class="col-md-4">
                        <select class="form-control" id="size_id{{ $s }}" name="size_id{{ $s }}">
                          <option  value="">--Select Size--</option>
                          @foreach($size_data as $sizes_key => $size_val)
                          <option  value="{{ $sizes_key }}">{{ $size_val }}</option>
                          @endforeach
                        </select>
                      </div>
                      
                      
                      <div class="col-md-4">
                        <input type="text" class="form-control" name="stock{{ $s }}" id="stock{{ $s }}" value="" onKeyUp="validatePrice(this);">
                      </div>
                    </div>
                  </div>
                  @php } @endphp </div>
              </div>
              
              
              
            </div>
            <!-- /.card-body -->
            
            <div class="card-footer"> {{ Form::submit('Submit', ['class' => 'btn btn-success']) }} <a href="{{ url('admin/products') }}" class="btn btn-warning">Back</a> </div>
            {!! Form::close() !!} </div>
        </div>
      </div>
      <!-- /.row --> 
    </div>
    <!-- /.container-fluid --> 
  </section>
  <!-- /.content --> 
</div>
@stop
@push('script') 
<script>
    function getSubCategory(cat_id) {
        if (cat_id) {
            $.ajax({
                type: "POST",
                url: "{{ url('/get-sub-category') }}",
                data: {'cat_id': cat_id},
                success: function (response) {
                    if (response) {
                        $("#sub_category_id").empty();
                        $("#sub_category_id").append('<option value="">Select Subcategory</option>');
                        $.each(response, function (key, value) {
                            $("#sub_category_id").append('<option value="' + key + '">' + value + '</option>');
                        });
                    } else {
                        $("#sub_category_id").empty();
                        $("#sub_category_id").append('<option value="">Select Subcategory</option>');

                    }
                }
            })
        }
    }

    $(function () {
        var $price = $("input[name='price']"),
                $percentage = $("input[name='discount']").on("input", calculatePrice);

        function calculatePrice() {
            var percentage = $(this).val();
            if (percentage) {
                var price = $price.val();
                var calcPrice = (price - (price * percentage / 100)).toFixed(2);
                if (calcPrice) {
                    $("#discount_price").val(calcPrice);
                } else {
                    $("#discount_price").val();
                }
            } else {
                $("#discount_price").val("");
            }
        }

    });


    $(document).ready(function () {
        if (window.File && window.FileList && window.FileReader) {
            $("#prod_image").on("change", function (e) {
                var files = e.target.files,
                        filesLength = files.length;
                for (var i = 0; i < filesLength; i++) {
                    var f = files[i]
                    var fileReader = new FileReader();
                    fileReader.onload = (function (e) {
                        var file = e.target;
                        $("<span class=\"pip\">" +
                                "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
                                "<br/><span class=\"remove\"><i class='fa fa-trash'></i></span>" +
                                "</span>").insertAfter("#prod_image");
                        $(".remove").click(function () {
                            $(this).parent(".pip").remove();
                        });
                    });
                    fileReader.readAsDataURL(f);
                }
            });
        } else {
            alert("Your browser doesn't support to File API")
        }
    });



function addProductStock(){
    var row = $('#prd_stock_row_count').val();
    var prd_cs_opt = $('#prd_cs_opt').val();
    
    if(row==10){
        alert("You can't add more than 10 records");
    }else{
        if(prd_cs_opt==1){
          if($('#color_id'+row).val() == ''){
              $('#color_id'+row).focus();
              return false;
          }
          if($('#size_id'+row).val() == ''){
              $('#size_id'+row).focus();
              return false;
          }
        }
        
        if($('#stock'+row).val() == ''){
            $('#stock'+row).focus();
            return false;
        }
        
        if ($('#stock' + row).val() != '') {
            var nextrow = parseInt(row)+1;
            $("#row_to_clone"+nextrow).show();
            $('#prd_stock_row_count').val(nextrow);
        }
        
    }
}       
                    
function delProductStock(){
    var row = $('#prd_stock_row_count').val();
    if(row==1){
        alert("You can't delete default row");
    }else{
      $.ajax({
          type: "POST",
          cache: false,
          url: "{{ url('/delete-psd-record') }}",
          data : {'psd_id':$('#db_record'+row).val()},
          success: function (data) {
              $('#db_record'+row).remove();
          }
      });
      //console.log(data);
      
      var nextrow = parseInt(row)-1;
      $("#row_to_clone"+row).hide();
      
      $('#color_id'+row).val('');
      $('#size_id'+row).val('');
      $('#stock'+row).val('');
      
      $('#prd_stock_row_count').val(nextrow);
    }   
}



function validatePrice(e) {
    var val = e.value;
    var re = /^([0-9]+[\.]?[0-9]?[0-9]?|[0-9]+)$/g;
    var re1 = /^([0-9]+[\.]?[0-9]?[0-9]?|[0-9]+)/g;
    
    val = re1.exec(val);
    if (val) {
        e.value = val[0];
    } else {
        e.value = "";
    }
}




function dispSizeColor(sc){
    if(sc==0){
        $('#color_id1').attr('disabled', true);
        $('#size_id1').attr('disabled', true);
        
        $('#color_id1').prop('selectedIndex',0);
        $('#size_id1').prop('selectedIndex',0);
        
        $('#color_id1').attr('required',false);
        $('#size_id1').attr('required',false);
        
        $('#prd_cs_opt').val(0);
        $('#disp_pm').hide();
    }
    if(sc==1){
        $('#color_id1').attr('disabled', false);
        $('#size_id1').attr('disabled', false);
        
        $('#color_id1').attr('required',true);
        $('#size_id1').attr('required',true);
        
        
        $('#prd_cs_opt').val(1);
        $('#disp_pm').show();
    }
}

</script> 
@endpush