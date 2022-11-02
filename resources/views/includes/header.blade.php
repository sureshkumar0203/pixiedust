<!-- Header
============================================= -->
<div id="header">
    <header class="header-row">
        <div class="container">
            <div class="table-container">
                <!-- Top Bar
                  ============================================= -->
                <nav class="htop col-md-9 pull-right flip inner" id="top"> 
                    <div id="top-links" class="nav pull-right flip">
                        @if(session()->get('user_id') == "")
                        <ul>
                            <li><a href="{{ url('/user-login') }}"><i class="fa fa-sign-in" style="color:#fff;"></i> Login</a></li>
                            <li><a href="{{ url('/register') }}"><i class="fa fa-user-plus"></i> Register</a></li>
                        </ul>     
                        @else
                        <div class="header-menu">
                            <ul>
                                <li>
                                    <a href="javascript:void(0)" style="font-weight:bold;">
                                        <i class="fa fa-user my-ac" style="font-size:16px;"></i> My Account <i class="fa fa-angle-down" style="font-weight:bold;"></i>                                  </a> 
                                    <ul>
                                        <li><a href="{{ url('/my-account') }}">My account</a></li>
                                        <li><a href="{{ url('/my-bookings') }}">My Bookings</a></li>
                                        <li><a href="{{ url('/change-password') }}">Change Password</a></li>                                       
                                        <li><a href="{{ url('/user-logout') }}">Logout</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        @endif
                    </div>
                </nav><!-- Top Bar End -->
                <!-- Logo============================================= -->
                <div class="col-table-cel col-md-3 col-sm-4 col-xs-12 inner">
                    <div id="logo"><a href="{{ url('/') }}"><img src="{{ asset('public/images/logo.png') }}" title="Pixie Dust" alt="Pixie Dust" /></a></div>
                </div><!-- Logo End -->

                <!-- Phone and Email
                ============================================= -->
                <div class="col-md-4 col-md-push-5 col-sm-8 col-xs-12 inner">
                    <div class="links_contact pull-right flip">
                        <ul>
                            <li class="mobile"><i class="fa fa-phone"></i>{{ getAdminDetails()->contact_no }}</li>
                            <li class="email"><a href="mailto:{{ getAdminDetails()->alt_email }}"><i class="fa fa-envelope"></i>{{ getAdminDetails()->alt_email }}</a></li>
                        </ul>
                    </div>
                </div><!-- Phone and Email End-->
                <div class="clearfix visible-sm-block visible-xs-block"></div>
                <div class="col-sm-3 srch-sec">
                   {{ Form::open(array('url' => 'search-result', 'role' => 'form', 'class' =>'', 'name' => 'frm_sea', 'id' => 'frm_sea','files'=>false, 'autocomplete' => 'off','method' => 'GET')) }}
                  
                  <div class="search-mtp "> {!! Form::text('search_all',old('search_all'), array('id' => 'search_all','placeholder'=>'Enter keyword for searching...','autocomplete' => 'off')) !!}
                  </div>
                  <button class="srch-all-ico"  aria-hidden="true" type="submit" id="src_submit" ><i class="fa fa-search" aria-hidden="true"></i></button>
                  
                  {{ Form::close() }}
                </div>
                <!-- Mini Cart
                ============================================= -->
                <div class="pull-right inner cartt" style="width:100px;">
                    <div id="cart">
                        <a href="{{ url('/cart') }}" data-loading-text="Loading..." class="heading dropdown-toggle">
                            <span class="cart-icon pull-left flip"></span>
                            <span><span id="cart-total">{{ cartDetails()->total_quantity ? cartDetails()->total_quantity : 0 }}</span> item(s)</span> </a>
                    </div>
                </div><!-- Mini Cart End-->
            </div>
        </div>
    </header>

    <!-- Main Menu
    ============================================= -->
    <nav id="menu" class="navbar wide">
        <div class="container">
            <div class="navbar-header"> <span class="visible-xs visible-sm"> Menu <i class="fa fa-align-justify pull-right flip"></i></span></div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a class="{{ Request::is('/') ? 'menu-active' : "" }}" href="{{ url('/') }}">Home</a></li>
                    <li><a class="{{ Request::is('about-us') ? 'menu-active' : "" }}" href="{{ url('about-us') }}">About Us</a></li>                    
                    <li class="dropdown {{ Request::is('products') ? 'menu-active' : "" }}"><a href="{{ url('/products') }}">Products</a>
                        <div class="dropdown-menu">
                            <ul>
                                @php
                                $getCategories = getAllCategories();                               
                                @endphp
                                @foreach($getCategories as $getCategory)
                                                                
                                <li class="dropdown"><a href="{{ url('/category/'.$getCategory->slug) }}">{{ $getCategory->name }}  @if(getAllSubCategories($getCategory->id)->count() > 0)<i class="fa fa-angle-right"></i> @endif</a>
                                    @if(getSubCategories($getCategory->id))
                                    <div class="dropdown-menu">
                                        <ul>
                                            @foreach(getAllSubCategories($getCategory->id) as $getAllSubCategory)                                          
                                            <li><a href="{{ url('/category/'.$getCategory->slug.'/'.$getAllSubCategory->slug) }}">{{ $getAllSubCategory->name }}</a></li>
                                            @endforeach                                          
                                        </ul>
                                    </div>
                                    @endif
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </li>
                    <li class="{{ Request::is('events') ? 'menu-active' : "" }}"><a href="{{ url('/events') }}">Events</a></li>
                    <li class="{{ Request::is('psychic-reading') ? 'menu-active' : "" }}"><a href="{{ url('/psychic-reading') }}">Book Psychic Online</a>
                        <div class="dropdown-menu">
                            <ul>
                                <li class="dropdown"><a href="{{ url('/psychic-readers') }}">About our psychic readers</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="{{ Request::is('massage-therapy') ? 'menu-active' : "" }}"><a href="{{ url('/massage-therapy') }}">Book Massage Online</a>
                        <div class="dropdown-menu">
                            <ul>
                                <li class="dropdown"><a href="{{ url('/massage-therapists') }}">About our massage therapy</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="{{ Request::is('downtown-parking') ? 'menu-active' : "" }}"><a href="{{ url('/downtown-parking') }}">Downtown Parking</a></li>
                    
                    <li><a class="{{ Request::is('blogs') ? 'menu-active' : "" }}" href="{{ url('blogs') }}">Blog</a></li>
                    
                    <li class="{{ Request::is('about-symbols') ? 'menu-active' : "" }}"><a href="#">Miscellaneous</a>
                        <div class="dropdown-menu">
                            <ul>
                               <li class="dropdown"><a href="{{ url('about-symbols') }}">About Symbols</a></li>
                                <li class="dropdown"><a href="{{ url('crystal-information') }}">Crystal Information</a></li>
                            </ul>
                        </div>
                    </li>
                    
                    <li><a class="{{ Request::is('contact-us') ? 'menu-active' : "" }}" href="{{ url('contact-us') }}">Contact Us</a></li>
                </ul>
            </div>  
        </div>
    </nav><!-- Header End-->
</div>