

    <!-- Start Header Area -->
    <header class="header navbar-area">
        <!-- Start Topbar -->
        <div class="topbar">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 col-md-4 col-12">
                        <div class="top-left">
                            <ul class="menu-top-link text-white">
                              
                                <li>

                                    @guest
                                    <div class="user">
                                        <i class="lni lni-user"></i>
                                        Hello, Please Login
                                    </div>
                                    @endguest
@auth
<div class="user">
    <i class="lni lni-user"></i>
    Hello, {{auth()->user()->name}}
</div>
@endauth
                               

                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-12">
                        <div class="top-middle">

                            <div class="useful-links">
                                

                                
                                    <nav class="navbar navbar-expand-lg">
                                        <button class="navbar-toggler mobile-menu-btn text-white" type="button" data-bs-toggle="collapse"
                                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                            aria-expanded="false" aria-label="Toggle navigation">
                                            <span class="toggler-icon"></span>
                                            <span class="toggler-icon"></span>
                                            <span class="toggler-icon"></span>
                                        </button>
                                        <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                                            <ul id="nav" class="navbar-nav ms-auto">
                                                <li class="nav-item ms-3">
                                                    <a href="{{route('frontend.product.home')}}" class="active text-white" aria-label="Toggle navigation">Home</a>
                                                </li>
                                                <li class="nav-item ms-3 ">
                                                    <a class="dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse"
                                                        data-bs-target="#submenu-1-2" aria-controls="navbarSupportedContent"
                                                        aria-expanded="false" aria-label="Toggle navigation">Pages</a>
                                                    <ul class="sub-menu collapse" id="submenu-1-2">
                                                        <li class="nav-item"><a class="text-dark" href="{{route('frontend.about_us')}}">About Us</a></li>
                                                        <li class="nav-item"><a class="text-dark" href="faq.html">Faq</a></li>
                                                        <li class="nav-item"><a class="text-dark" href="faq.html">Our Services</a></li>
                                                    </ul>
                                                </li>
                                                <li class="nav-item ms-3">
                                                    <a class="dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse"
                                                        data-bs-target="#submenu-1-3" aria-controls="navbarSupportedContent"
                                                        aria-expanded="false" aria-label="Toggle navigation">Shop</a>
                                                    <ul class="sub-menu collapse" id="submenu-1-3">
                                                        <li class="nav-item"><a class="text-dark" href="{{route('cart.index')}}">Your cart items</a></li>
                                                        <li class="nav-item"><a class="text-dark" href="{{route('frontend.product.featured')}}">Discounted Products</a></li>
                                                        <li class="nav-item"><a class="text-dark" href="{{route('frontend.product.best_seller')}}">Top selling items</a></li>
                                                        <li class="nav-item"><a class="text-dark" href="{{route('frontend.product.recent')}}">Recently arrived products</a></li>
                                                        <li class="nav-item"><a class="text-dark" href="{{route('checkout')}}">Checkout</a></li>
                                                    </ul>
                                                </li>
                                                {{-- <li class="nav-item">
                                                    <a class="dd-menu collapsed" href="javascript:void(0)" data-bs-toggle="collapse"
                                                        data-bs-target="#submenu-1-4" aria-controls="navbarSupportedContent"
                                                        aria-expanded="false" aria-label="Toggle navigation">Blog</a>
                                                    <ul class="sub-menu collapse" id="submenu-1-4">
                                                        <li class="nav-item"><a href="blog-grid-sidebar.html">Blog Grid Sidebar</a>
                                                        </li>
                                                        <li class="nav-item"><a href="blog-single.html">Blog Single</a></li>
                                                        <li class="nav-item"><a href="blog-single-sidebar.html">Blog Single
                                                                Sibebar</a></li>
                                                    </ul>
                                                </li> --}}
                                                <li class="nav-item ms-3">
                                                    <a href="{{route('frontend.contact_us')}}" aria-label="Toggle navigation">Contact Us</a>
                                                </li>
                                            </ul>
                                        </div> <!-- navbar collapse -->
                                    </nav>
                                    
                               
                                </div>

                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-12">
                        <div class="top-end">
                            

                            @guest

                        

                            <ul class="user-login">
                                <li>

                             
                                
                                <a href="{{route('login')}}">Login</a>
                                                                       
                                </li>

                                <li>
                                    <a href="{{route('register')}}">Register</a>
                                </li>
                              

                                </li>
                         </ul>
                         @endguest

                         @auth

                    

                         <ul class="user-login">
                                <li>

                             
                                
                                <a href="{{route('frontend.user.profile',auth()->user()->name)}}">Profile</a>
                                                                       
                                </li>

                                <li>
                                    <a href="{{route('logout')}}">Logout</a>
                                </li>
                              

                                </li>
                         </ul>
                         @endauth

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Topbar -->

         <!-- Start Header Middle -->
         <div class="header-middle">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-md-3 col-7">
                        <div class"d-flex justify-content-center align-items-center flex-column>
                        <!-- Start Header Logo -->
                        <a class="" href="{{route('frontend.product.home')}}">
                     
                            <span class="logo-text ms-1 mb-2">Electro <span class="text-dark"> zone </span></span>
                        </a>
                       
                        <!-- End Header Logo -->
                    </div>
                    </div>
                    <div class="col-lg-5 col-md-7 d-xs-none">
                        <!-- Start Main Menu Search -->
                        <div class="main-menu-search">
                            <!-- navbar search start -->
                            <div class="navbar-search search-style-5">
                                <div class="search-select">
                                    <div class="select-position">
                                        <select id="select1">
                                            <option selected>All</option>
                                            <option value="1">option 01</option>
                                            <option value="2">option 02</option>
                                            <option value="3">option 03</option>
                                            <option value="4">option 04</option>
                                            <option value="5">option 05</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="search-input">
                                    <input type="text" placeholder="Search">
                                </div>
                                <div class="search-btn">
                                    <button><i class="lni lni-search-alt"></i></button>
                                </div>
                            </div>
                            <!-- navbar search Ends -->
                        </div>
                        <!-- End Main Menu Search -->
                    </div>
                    <div class="col-lg-4 col-md-2 col-5">
                        <div class="middle-right-area">
                            <div class="nav-hotline">
                                <i class="lni lni-phone"></i>
                                <h3>Hotline:
                                    <span>(+88) 01760 711 791</span>
                                </h3>
                            </div>
                            <div class="navbar-cart">
                                {{-- <div class="wishlist">
                                    <a href="javascript:void(0)">
                                        <i class="lni lni-heart"></i>
                                        <span class="total-items">0</span>
                                    </a>
                                </div> --}}
                                <div class="cart-items">
                                    <a href="{{route('cart.index')}}" class="main-btn">
                                        <i class="lni lni-cart"></i>
                                        @php    
                                        $data=[];
                                           $data['cart'] = session('cart')? session('cart'):[];
                                           $totalCartProducts = array_sum(array_column($data['cart'],'quantity'));
                                             @endphp   
                                        <span class="total-items total_cart_items">{{$totalCartProducts}}</span>
                                    </a>
                                    <!-- Shopping Item -->
                                    {{-- <div class="shopping-item">
                                        <div class="dropdown-cart-header">
                                            <span class="total-items total_cart_items">{{$totalCartProducts}}</span>
                                            <a href="{{route('cart.index')}}">View Cart</a>
                                        </div>


                                        <ul class="shopping-list">
                                            
                                        
                                  @if(session('cart'))
                                                                        
                                  @include('frontend.partials.cart_items')                                  
                                @endif              
                                       
                                        </ul>


                                        <div class="bottom">
                                            <div class="total">
                                                <span>Total</span>
                                                @php
                                                        $data=[];
                                                        $data= session('cart')? session('cart'):[];
                                                        $totalPrice = array_sum(array_column($data,'total_price'));
                                                @endphp
                                                <span class="total-amount total_price_ajax">৳ {{number_format($totalPrice)}}</span>
                                            </div>
                                            <div class="button">
                                                <a href="{{route('checkout')}}" class="btn animate">Checkout</a>
                                            </div>
                                        </div>
                                    </div> --}}
                                    <!--/ End Shopping Item -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Header Middle -->


          <!-- Start Header Bottom -->
          <div class="container">
            <div class="row align-items-center">

                <div class="col-lg-8 col-md-6 col-12 ">
                    <div class="nav-inner py-3">
                        
                        <!-- Start Mega Category Menu -->

                        @include('frontend.partials.sidemenu')        

                        <!-- Start Navbar -->
                        


                        <!-- End Navbar -->
                    </div>
                </div>


                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Start Nav Social -->
                    <div class="nav-social">
                        <h5 class="title">Follow Us:</h5>
                        <ul>
                            <li>
                                <a href="javascript:void(0)"><i class="lni lni-facebook-filled"></i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"><i class="lni lni-twitter-original"></i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"><i class="lni lni-instagram"></i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"><i class="lni lni-skype"></i></a>
                            </li>
                        </ul>
                    </div>
                    <!-- End Nav Social -->
                </div>
            </div>
        </div>
        <!-- End Header Bottom -->
    </header>


    <!-- End Header Area -->
