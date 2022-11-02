// Only Number check
function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode;
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}

function addToCart(prod_id) {
	if($('#stock_opt_chk').val() == 1){
		if ($('input[name=prd_stock_id]:checked').length == '0'){
			$('.error').html('Click on color to choose your size & color.');
			return false;
		}
		$('#stock_id').val($('input[name=prd_stock_id]:checked').val());
	}
    var quantity = $("#input-quantity").val();
    //alert(quantity);
    if (quantity) {
        $("#quantity").val(quantity);
    } else {
        $("#quantity").val("1");
    }
    $("#product_id").val(prod_id);
    $("form").submit();

}

function increment_quantity(cart_id, price) {
    var inputQuantityElement = $("#input-quantity-" + cart_id);
    var newQuantity = parseInt($(inputQuantityElement).val()) + 1;
    $(inputQuantityElement).val(newQuantity);
    updateCartItem(cart_id, newQuantity, price);
}

function decrement_quantity(cart_id, price) {
    var inputQuantityElement = $("#input-quantity-" + cart_id);
    if ($(inputQuantityElement).val() > 1) {
        var newQuantity = parseInt($(inputQuantityElement).val()) - 1;
        $(inputQuantityElement).val(newQuantity);
        updateCartItem(cart_id, newQuantity, price);
    }
}

// Increment and Decreament cart quantity

function updateCartItem(cartid, qty, unitprice) {
	var hostname = $(location).attr('origin')+"/pixiedust";
    var url = hostname + "/update-cart-item";
    $("#ajax_loader").show();
    $.ajax({
        type: "POST",
        cache: false,
        url: url, // success.php
        data: {'update_cart_id': cartid, 'update_qty': qty, 'update_unit_price': unitprice},
        success: function (data) {
			/*console.log($("#stock_mesg_"+cartid));
			return false;*/
			
            $("#ajax_loader").hide();
			
			if(data.status == "error"){
				$("#stock_mesg_"+cartid).html(data.message);
				$("#input-quantity-"+cartid).val(data.db_qty);
			}
			
            if (data.status == "success") {
                $('#disp_st').html('$' + data.cartDetails.total_price);
                $('#cart-total').html(data.cartDetails.total_quantity);
				
				
				var shipping_price = 0;
				if(data.cartDetails.total_price > 0 && data.cartDetails.total_price <= 49.99){
				 	shipping_price = parseFloat(data.cartDetails.total_shipping_price).toFixed(2);
				}else if(data.cartDetails.total_price >= 50 && data.cartDetails.total_price <= 99.99){
					shipping_price = parseFloat(7).toFixed(2);
				}else{
					shipping_price = parseFloat(0).toFixed(2);
				}
			    $("#disp_ship").html(shipping_price);
				
			   
               /* (data.cartDetails.total_price >= 50) ? $("#disp_ship").html("0.00") : $("#disp_ship").html(data.cartDetails.total_shipping_price);*/
				
				//alert(data.getDiscountCal);
				
                if (data.getDiscountCal) {
                    $('#disp_gt').html(data.getDiscountCal.totalPayble);
                    $("#discount").show();
                    $("#dicount_percentage").html(data.getDiscountCal.discount_percentage + '%');
                    $("#disp_ship_dsicount").html(data.getDiscountCal.discountAmount);
                } else {
					var grand_total = 0;
					if(data.cartDetails.total_price > 0 && data.cartDetails.total_price <= 49.99){
						grand_total = (parseFloat(data.cartDetails.total_price)+ parseFloat(data.cartDetails.total_shipping_price)).toFixed(2);
					}else if(data.cartDetails.total_price >= 50 && data.cartDetails.total_price <= 99.99){
						grand_total = (parseFloat(data.cartDetails.total_price)+parseFloat(7)).toFixed(2);
					}else{
						grand_total = (parseFloat(data.cartDetails.total_price)+parseFloat(0)).toFixed(2);
					}
					$("#disp_gt").html(grand_total);
					
					
                   <!-- (data.cartDetails.total_price >= 50) ? $("#disp_gt").html(data.cartDetails.total_price) : $("#disp_gt").html((parseFloat(data.cartDetails.total_price) + parseFloat(data.cartDetails.total_shipping_price)).toFixed(2));-->
					
					
                }
            }
        }
    });
}
//  Delete Cart Item  //////////////

function deleteCartItem(cartid) {
	var hostname = $(location).attr('origin')+"/pixiedust";
    $("#ajax_loader").show();
    $.ajax({
        type: "POST",
        cache: false,
        url:hostname + "/delete-item-from-cart",
        data: {"cart_id": cartid},
        success: function (data) {
            $("#ajax_loader").hide();
            if (data.status == "success") {
                $("#cart_row_" + cartid).remove();
			    
				
				/*$('#disp_st').html('$' + data.cartDetails.total_price);
                (data.cartDetails.total_quantity == null) ? $('#cart-total').html("0") : $('#cart-total').html(data.cartDetails.total_quantity);
                
				(data.cartDetails.total_price >= 50) ? $("#disp_ship").html("0.00") : $("#disp_ship").html(data.cartDetails.total_shipping_price);
                if (data.getDiscountCal) {
                    $('#disp_gt').html(data.getDiscountCal.totalPayble);
                    $("#discount").show();
                    $("#dicount_percentage").html(data.getDiscountCal.discount_percentage + '%');
                    $("#disp_ship_dsicount").html(data.getDiscountCal.discountAmount);
                } else {
                    $('#disp_gt').html(data.cartDetails.total_price);
                }*/
				
				
				$('#disp_st').html('$' + data.cartDetails.total_price);
                $('#cart-total').html(data.cartDetails.total_quantity);
				
				
				var shipping_price = 0;
				if(data.cartDetails.total_price > 0 && data.cartDetails.total_price <= 49.99){
				 	shipping_price = parseFloat(data.cartDetails.total_shipping_price).toFixed(2);
				}else if(data.cartDetails.total_price >= 50 && data.cartDetails.total_price <= 99.99){
					shipping_price = parseFloat(7).toFixed(2);
				}else{
					shipping_price = parseFloat(0).toFixed(2);
				}
			    $("#disp_ship").html(shipping_price);
				
				if (data.getDiscountCal) {
                    $('#disp_gt').html(data.getDiscountCal.totalPayble);
                    $("#discount").show();
                    $("#dicount_percentage").html(data.getDiscountCal.discount_percentage + '%');
                    $("#disp_ship_dsicount").html(data.getDiscountCal.discountAmount);
                } else {
					var grand_total = 0;
					if(data.cartDetails.total_price > 0 && data.cartDetails.total_price <= 49.99){
						grand_total = (parseFloat(data.cartDetails.total_price)+ parseFloat(data.cartDetails.total_shipping_price)).toFixed(2);
					}else if(data.cartDetails.total_price >= 50 && data.cartDetails.total_price <= 99.99){
						grand_total = (parseFloat(data.cartDetails.total_price)+parseFloat(7)).toFixed(2);
					}else{
						grand_total = (parseFloat(data.cartDetails.total_price)+parseFloat(0)).toFixed(2);
					}
					$("#disp_gt").html(grand_total);
                }
				
				
                if (data.cartDetails.total_quantity == null) {
                    $("#cart_emp_sec").show();
                    $("#cart_details").hide();
                }
            }
        }
    });
}

/// Applying Coupon Code ////////////

function setCouponcode() {
	var hostname = $(location).attr('origin')+"/pixiedust";
    var couponVal = $("#coupon_code").val();
    if (couponVal != "") {
        $("#ajax_loader").show();
        $.ajax({
            type: "POST",
            cache: false,
            url: hostname + "/coupon-code", // success.php
            data: {"couponcode": couponVal},
            success: function (data) {
                $("#ajax_loader").hide();
                if (data.status == "success") {
                    $('#disp_gt').html(data.totalPayble);
                    $("#discount").show();
                    $("#dicount_percentage").html(data.discount_percentage + '%');
                    $("#disp_ship_dsicount").html(data.discountAmount);
                    $("#success_message").delay(2000).fadeOut().html("Couponcode applied successfully.").show();
                } else if (data.status == "not_exist") {
                    $("#discount").hide();
                    $('#disp_gt').html(data.totalPayble);
                    $("#error_message").delay(2000).fadeOut().html("Invalid coupon code.").show();
                }
            }
        });

    } else {
        $("#error_message").delay(2000).fadeOut().html("Please enter coupon code.").show();
    }

}

/// Applying Florida Tax ////////////
function setFlTax() {
	var hostname = $(location).attr('origin')+"/pixiedust";
    var fl_tax =   $("input[name='fl_tax']:checked"). val();
	$("#ajax_loader").show();
	$.ajax({
		type: "POST",
		cache: false,
		url: hostname + "/fl-tax", // success.php
		data: {"fl_tax": fl_tax},
		success: function (data) {
			//console.log(data);
			//return false;
			$("#ajax_loader").hide();
			$('#disp_tax_per').html('('+data.tax_per+'%'+')');
			$('#disp_tax').html(data.tax_amount);
			$('#disp_gt').html(data.gt_amount);
			
		}
	});
}


////////////// Place Order Part ///////////////////////////

$(document).ready(function () {
    var x = $("#checkout-form").validate({
        rules: {
            bill_first_name: "required",
            bill_last_name: "required",
            bill_phone_number: "required",
            bill_address1: "required",
            bill_city: "required",
            bill_post_code: "required",
            bill_state: "required",
            bill_country: "required",
            accept_tc: {
                required: true
            },
            messages: {
                accept_tc: {
                    required: "Please accept term & conditions."
                }
            },
			fl_tax: {
                required: true
            },
            email: {
                required: true,
                email: true
            },
            ship_first_name: {
                required: "#same_for_billing:checked"
            },
            ship_last_name: {
                required: "#same_for_billing:checked"
            },
            ship_phone_number: {
                required: "#same_for_billing:checked"
            },
            ship_address1: {
                required: "#same_for_billing:checked"
            },
            ship_post_code: {
                required: "#same_for_billing:checked"
            },
            ship_city: {
                required: "#same_for_billing:checked"
            },
            ship_post_code: {
                required: "#same_for_billing:checked"
            },
            ship_state: {
                required: "#same_for_billing:checked"
            },
            ship_country: {
                required: "#same_for_billing:checked"
            },

        },

    });

});


function validateUser() {
    if ($('#user_email').val() == '') {
        $('#user_email').focus();
        return false;
    }
    if ($('#user_password').val() == '') {
        $('#user_password').focus();
        return false;
    }
    return true;
}
function submitForm() {
    var x = $("#checkout-form").valid();
	var hostname = $(location).attr('origin')+"/pixiedust";
	
    if (x) {
        var form_data = $('#checkout-form').serialize();
        $("#ajax_loader").show();
        $.ajax({
            url: hostname + "/place-order-process",
            type: "POST",
            data: form_data,
            success: function (response) {
                $("#ajax_loader").hide();
                if (response.status == "blank") {
                    $('#err_msg').delay(2000).fadeOut().html(response.msg).show();
                }
                if (response.status == "pass_blank") {
                    $('#err_msg').delay(2000).fadeOut().html(response.msg).show();
                }
                if (response.status == "email_exists") {
                    $('#err_msg').delay(2000).fadeOut().html(response.msg).show();
                }
                if (response.status == "ship_det_blank") {
                    $('#err_msg').delay(2000).fadeOut().html(response.msg).show();
                }
                if (response.status == "success") {
                    window.location.href = "paypal";
                }

            }
        });
    } else {
        return false;
    }
}
function submitCheckoutLoginForm() {
    var x = $("#frm_user_login").valid();
    if (x) {
        var form_data = $('#frm_user_login').serialize();
        $.ajax({
            url: "user-login-process",
            type: "POST",
            data: form_data,
            success: function (response) {
                $("#ajax_loader").hide();
                if (response.status == "ep_blank") {
                    $("#err_msg_log").delay(2000).fadeOut().html(response.msg).show();
                }
                if (response.status == "ep_invalid") {
                    $("#err_msg_log").delay(2000).fadeOut().html(response.msg).show();
                }
                if (response.status == "login_success") {
                    window.location.href = "checkout";
                }

            }
        });
    } else {
        return false;
    }
}


function submitLoginForm() {
    var x = $("#frm_user_login").valid();
    if (x) {
        var form_data = $('#frm_user_login').serialize();
        $("#ajax_loader").show();
        $.ajax({
            url: "user-login-process",
            type: "POST",
            data: form_data,
            success: function (response) {
                $("#ajax_loader").hide();
                if (response.status == "ep_blank") {
                    $("#msgl_div").delay(2000).fadeOut().html(response.msg).show();
                }
                if (response.status == "ep_invalid") {
                    $("#msgl_div").delay(2000).fadeOut().html(response.msg).show();
                }
                if (response.status == "login_success") {
                    window.location.href = "my-account";
                }
            }
        });
    } else {
        return false;
    }
}




