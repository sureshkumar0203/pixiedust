<!-- Footer
 ============================================= -->
<footer id="footer">

    <!-- Footer Part 1
    ============================================= -->
    <div class="fpart-first">
        <div class="container">
            <div class="row">

                <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                    <h5>Information</h5>
                    <ul>
                        <li><a href="{{ url('about-us') }}">About Us</a></li>
                        <li><a href="{{ url('crystal-information') }}">Crystal Information</a></li>
                        <li><a href="{{ url('about-symbols') }}">About Symbols</a></li>
                        <li><a href="{{ url('term-and-conditions') }}">Terms &amp; Conditions</a></li>
                    </ul>
                </div>
                <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                    <h5>Products</h5>
                    <ul>
                        @foreach(getAllCategories() as $category)
                        <li><a href="{{ url('/category/'.$category->slug) }}">{{ $category->name }}</a></li> 
                        @if($loop->iteration == 4) @break @endif
                        @endforeach
                    </ul>
                </div>

                <div class="column col-lg-2 col-md-2 col-sm-3 col-xs-12">
                    <h5>Extras</h5>
                    <ul>
                        <li><a href="{{ url('/downtown-parking') }}">Downtown Parking</a></li>
                        <li><a href="{{ url('events') }}">Events</a></li>
                        <li><a href="{{ url('contact-us') }}">Contact Us</a></li>
                        <li><a href="{{ url('blogs') }}">Blog</a></li>
                    </ul>
                </div>

                <div class="contact col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <h5>Contact Details</h5>
                    <ul>
                        <li class="address"><i class="fa fa-map-marker"></i>{!! getAdminDetails()->address !!}</li>
                        <li class="mobile"><i class="fa fa-phone"></i>{{ getAdminDetails()->contact_no }}</li>
                        <li class="email"><i class="fa fa-envelope"></i><a href="mailto:{{ getAdminDetails()->alt_email }}">{{ getAdminDetails()->alt_email }}</a>
                    </ul>
                </div>

                <div class="column col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <h5>Subscribe To Newsletter</h5>                    
                    {{ Form::open(array('url' => 'newsletterr','data-toggle'=>"validator", 'role' => 'form', 'class' =>'', 'name' => 'frm_nl', 'id' => 'frm_nl','files'=>true, 'autocomplete' => 'off')) }}
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                        {!! Form::email('nl_email',old('nl_email'), array('id' => 'nl_email','required','class'=>'form-control','placeholder'=>'Enter your email address','autocomplete' => 'off')) !!}   
                    </div>
                    <div style="height:15px">
                        <span id="err_msg" style="color: #fd7e0d;"></span>
                        <span id="succ_msg" style="color:rgb(52, 187, 54)"></span>
                    </div>
                    {{ Form::button('Subscribe', array('class' => 'btn btn-large btn-subscribe','onclick'=>'newsLetterSubmitForm()')) }}
                    {{ Form::close() }}

                </div>
            </div>
        </div>
    </div><!--Footer Part 1 End-->

    <!-- Footer Part 2
    ============================================= -->
    <div class="fpart-second">
        <div class="container">
            <div id="powered">
                <div class="row">

                    <!-- Payments Types
                    ============================================= -->
                    <div class="col-md-3">
                        <div class="payments_types"> 
                            <img data-toggle="tooltip" src="{{ asset('public/images/payment_paypal.png') }}" alt="paypal" title="PayPal">
                            <img data-toggle="tooltip" src="{{ asset('public/images/payment_maestro.png') }}" alt="maestro" title="Maestro"> 
                            <img data-toggle="tooltip" src="{{ asset('public/images/payment_discover.png') }}" alt="discover" title="Discover">
                        </div>              
                    </div><!--Payments Types End-->

                    <!-- Payments Types
                    ============================================= -->
                    <div class="powered_text pull-left flip col-md-7">
                        
                        <div class="col-md-6">
                        <a style="color:#fff; margin-top:7px;">Pixie Dust © {{ date('Y') }} | All rights reserved.  </a>
                        </div>
                        
                        
                        <div class="col-md-6">
                    Designed & Developed By <a target="_blank" href="https://www.bletindia.com/">BLE Technologies-E</a> 
                    </div>
                    
                    
                    </div>

                    <!-- Social Icon
                    ============================================= -->
                    <div class="col-md-2">
                        <div class="social pull-right flip">
                            
                          
                            
                            <a href="{{ getAdminDetails()->facebook_url }}" target="_blank"> <img data-toggle="tooltip" src="{{ asset('public/images/facebook.png') }}" alt="                                                            Facebook" title="Facebook"></a>
                            <a href="{{ getAdminDetails()->twitter_url }}" target="_blank"> <img data-toggle="tooltip" src="{{ asset('public/images/twitter.png') }}" alt="Twitter" title="Twitter"> </a>
                            <a href="{{ getAdminDetails()->instagram_url }}" target="_blank"> <img data-toggle="tooltip" src="{{ asset('public/images/instagram.png') }}" alt="Instagram" title="Instagram"> </a> 
                        </div>
                    </div><!--Payments Types End-->
                </div>
            </div>


        </div>
    </div><!--Footer Part 2 End-->

    <!-- Back to Top
    ============================================= -->
    <div id="back-top"><a data-toggle="tooltip" title="Back to Top" href="javascript:void(0)" class="backtotop"><i class="fa fa-chevron-up"></i></a></div>

</footer><!--Footer End-->

@push('script')

<script>
    function newsLetterSubmitForm() {
        var email = $("#nl_email").val();
        if (email == "") {
            $("#nl_email").focus();
            $("#err_msg").delay(5000).slideUp(100).html("Pease enter your email.");
        } else {
            var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (regex.test(email) == false) {
                $("#nl_email").focus();
                $("#err_msg").delay(5000).slideUp(100).html("Pease enter valid email.");
            } else {
                $.ajax({
                    url: "save-nl-data",
                    type: "POST",
                    data: {'email': email},
                    success: function (response) {
                        //console.log(response);
                        if (response.status == 'success') {
                            //$("#succ_msg").html("Email subscribed.");
                            $("#succ_msg").delay(5000).slideUp(100).html("Email subscribed.");
                            $("#frm_nl")[0].reset();
                        } else {
                            $("#err_msg").delay(5000).slideUp(100).html("Email already subscribed");
                            //$("#err_msg").html("Email already subscribed");
                            $("#frm_nl")[0].reset();
                        }

                    }

                })
            }
        }

    }
</script>

@endpush
