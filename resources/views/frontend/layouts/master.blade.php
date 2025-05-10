<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>DreamUltra Ecommerce</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset("assets/images/favicon.svg")}}" />

    <!-- ========================= Google font here ========================= -->
                              
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Exo+2&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    
    <!-- ========================= CSS here ========================= -->
    
    <link rel="stylesheet" href="{{asset("css/bootstrap5.css?v=").time()}}">
    <link rel="stylesheet" href="{{asset("assets/css/LineIcons.3.0.css?v=").time()}}">
    <link rel="stylesheet" href="{{asset("assets/css/tiny-slider.css?v=").time()}}">
    <link rel="stylesheet" href="{{asset("assets/css/glightbox.min.css?v=").time()}}">
    <link rel="stylesheet" href="{{asset("assets/css/main.css?v=").time()}}">
    <link rel="stylesheet" href="{{asset("css/custom.css?v=").time()}}">
    <link rel="stylesheet" href="{{asset("css/alertify.css?v=").time()}}">
    <link rel="stylesheet" href="{{asset("css/semantic.css?v=").time()}}">
    <link rel="stylesheet" href="{{asset("css/side_menu.css?v=").time()}}">


</head>

<body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve
        your experience and security.
      </p>
    <![endif]-->

    <!-- Preloader -->
    <div class="preloader">
        <div class="preloader-inner">
            <div class="preloader-icon">
                <span></span>
                <span></span>
            </div>
        </div>
    </div>
    <!-- /End Preloader -->




@include('frontend.partials.header')
@include('frontend.partials.side_menu')



@yield('main')

       
      
    <!-- Start Call Action Area -->
    <!-- <section class="call-action section">
        <div class="container">
            <div class="row ">
                <div class="col-lg-8 offset-lg-2 col-12">
                    <div class="inner">
                        <div class="content">
                            <h2 class="wow fadeInUp" data-wow-delay=".4s">Currently You are using free<br>
                                Lite version of ShopGrids</h2>
                            <p class="wow fadeInUp" data-wow-delay=".6s">Please, purchase full version of the template
                                to get all pages,<br> features and commercial license.</p>
                            <div class="button wow fadeInUp" data-wow-delay=".8s">
                                <a href="javascript:void(0)" class="btn">Purchase Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!-- End Call Action Area -->

   


    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="{{asset("assets/js/tiny-slider.js")}}"></script>
    <script src="{{asset("assets/js/glightbox.min.js")}}"></script>
    
    <script src="{{asset("assets/js/main.js")}}"></script>
    <script src="{{asset("js/alertify.min.js")}}"></script>
    <script src="{{asset("js/cart.js")}}"></script>
    <script src="{{asset("js/add_to_cart.js")}}"></script>
    <script src="{{asset("js/side_menu.js")}}"></script>
    <script src="{{asset("js/bootstrap5.js")}}"></script>
    <script type="text/javascript">
        //========= Hero Slider 
        tns({
            container: '.hero-slider',
            slideBy: 'page',
            autoplay: true,
            autoplayButtonOutput: false,
            mouseDrag: true,
            gutter: 0,
            items: 1,
            nav: false,
            controls: true,
            controlsText: ['<i class="lni lni-chevron-left"></i>', '<i class="lni lni-chevron-right"></i>'],
        });

        //======== Brand Slider
        tns({
            container: '.brands-logo-carousel',
            autoplay: true,
            autoplayButtonOutput: false,
            mouseDrag: true,
            gutter: 15,
            nav: false,
            controls: false,
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 3,
                },
                768: {
                    items: 5,
                },
                992: {
                    items: 6,
                }
            }
        });
    </script>

@include('frontend.partials.footer')
@yield('before_body')
</body>

</html>