<!doctype html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>منصة ابتكار</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <!-- <link rel="manifest" href="site.webmanifest"> -->
        <link rel="shortcut icon" type="image/x-icon" href="img/logo.png">
        <!-- Place favicon.ico in the root directory -->
    
        <!-- CSS here -->
        <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css/magnific-popup.css') }}">
        <link rel="stylesheet" href="{{ asset('css/font-awesome.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css/themify-icons.css') }}">
        <link rel="stylesheet" href="{{ asset('css/nice-select.css') }}">
        <link rel="stylesheet" href="{{ asset('css/flaticon.css') }}">
        <link rel="stylesheet" href="{{ asset('css/jquery-ui.css') }}">
        <link rel="stylesheet" href="{{ asset('css/gijgo.css') }}">
        <link rel="stylesheet" href="{{ asset('css/animate.min.css') }}">
        <link rel="stylesheet" href="{{ asset('css/slicknav.css') }}">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/switchery/0.8.2/switchery.min.css">

    <link rel="stylesheet" type="text/css" href="{{ asset('css/sweetalert.css') }}">
        <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">

        <link rel="stylesheet" href="{{ asset('css/style.css') }}">
        <!-- <link rel="stylesheet" href="{{ asset('css/responsive.css') }}"> -->
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    </head>
    
    <body>
  

        <!--[if lte IE 9]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
            <![endif]-->
    
        <!-- header-start -->
        <header style="direction: rtl;">
            <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid ">
                    <div class="header_bottom_border">
                        <div class="row align-items-center">
                            <div class="col-xl-3 col-lg-2">
                                <div class="logo">
                                    <a href="index.html">
                                        <img src="img/logo.png" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-7">
                                    <div class="main-menu  d-none d-lg-block">
                                        <nav>
                                            <ul id="navigation">
                                                <li><a href="/">الرئيسية</a></li>
                                                <li><a href="/projects">المشاريع</a></li>
                                                <li><a href="#">الصفحات<i class="ti-angle-down"></i></a>
                                                    <ul class="submenu">
                                                        <li><a href="#">المبتكرون </a></li>
                                                        <li><a href="#"> الخبراء </a></li>
                                                        <li><a href="#">الممولون</a></li>
                                                    </ul>
                                                </li>
                                                <!--
                                                <li><a href="#">المدونة <i class="ti-angle-down"></i></a>
                                                    <ul class="submenu">
                                                        <li><a href="#">المدونة</a></li>
                                                        <li><a href="#">المقالة</a></li>
                                                    </ul>
                                                </li>
                                                -->
                                                <li><a href="/contact">تواصل معنا</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                                        <div class="Appointment">
                                            
                                                <div class="d-none d-lg-block">
                                                @if(!Auth::check())
                                                        <a href="/login" style="color:white">تسجيل الدخول </a>
                                              
                                                    @else

                                     
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            {{ Auth::user()->name }}
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                  
                                                     <!--   <a href="#" style="color:white">{{ Auth::user()->name }}</a>
-->

                                                    @endif 
              </div>
                                            <div class="phone_num d-none d-xl-block">
                                                <a class="boxed-btn3" href="/projects/create">انشر مشروعك </a>
    
                                            </div> 
                                         
        
                                        </div>
                                    </div>
                            <div class="col-12" >
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
    
                </div>
            </div>
        </div>
    </header>



@yield('content')


















    <footer class="footer" style="direction: rtl;">
            <div class="footer_top">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-md-6 col-lg-3">
                            <div class="footer_widget wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                                <div class="footer_logo">
                                    <a href="#">
                                        <img src="img/logo.png" alt="">
                                    </a>
                                </div>
                                <p>
                                    support@support.com <br>
                                    +10 873 672 6782 <br>
                                   شارع الضباب - حي المربع - الرياض
                                </p>
                                <div class="socail_links">
                                    <ul>
                                        <li>
                                            <a href="#">
                                                <i class="ti-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-google-plus"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-instagram"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
    
                            </div>
                        </div>
                        <div class="col-xl-2 col-md-6 col-lg-2">
                            <div class="footer_widget wow fadeInUp" data-wow-duration="1.1s" data-wow-delay=".4s">
                                <h3 class="footer_title">
                                    Company
                                </h3>
                                <ul>
                                    <li><a href="#">عن المنصة </a></li>
                                    <li><a href="#"> الاشتراكات</a></li>
                                    <li><a href="#">المشاريع</a></li>
                                    <li><a href="#">الاسئلة و الاستفسارات</a></li>
                                </ul>
    
                            </div>
                        </div>
                        <div class="col-xl-3 col-md-6 col-lg-3">
                            <div class="footer_widget wow fadeInUp" data-wow-duration="1.2s" data-wow-delay=".5s">
                                <h3 class="footer_title">
                                    ابرز الفئات
                                </h3>
                                <ul>
                                    <li><a href="#">التعليم و التدريس</a></li>
                                    <li><a href="#">الهندسة</a></li>
                                    <li><a href="#">التسويق</a></li>
                                    <li><a href="#">المالية و المحاسبة</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-6 col-lg-4" style="direction: rtl;">
                            <div class="footer_widget wow fadeInUp" data-wow-duration="1.3s" data-wow-delay=".6s" >
                                <h3 class="footer_title">
                                الاشتراك
                                </h3>
                                <form action="#" class="newsletter_form" >
                                    <input type="text">
                                    <button type="submit">اشترك</button>
                                </form>
                                <p class="newsletter_text">
                                    نشرة بريدية اسبوعية لاخر الاخبار و العروض
    
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copy-right_text wow fadeInUp" data-wow-duration="1.4s" data-wow-delay=".3s">
                <div class="container">
                    <div class="footer_border"></div>
                    <div class="row">
                        <div class="col-xl-12">
                            <p class="copy_right text-center">
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> تم تطوير المنصة  <i class="fa fa-heart-o" aria-hidden="true"></i> عن طريق <a href="http://www.smt.sa/" target="_blank">سمت التقنية - colorlib theme</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    <!--/ footer end  -->

 <script src="https://cdnjs.cloudflare.com/ajax/libs/switchery/0.8.2/switchery.min.js"></script>
 <script>let elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

 elems.forEach(function(html) {
     let switchery = new Switchery(html,  { size: 'small' });
 });
</script>

  	<script>
        $( function() {
            $( "#slider-range" ).slider({
                range: true,
                min: 0,
                max: 24600,
                values: [ 750, 24600 ],
                slide: function( event, ui ) {
                    $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] +"/ Year" );
                }
            });
            $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
                " - $" + $( "#slider-range" ).slider( "values", 1 ) + "/ Year");
        } );
        </script>


  <!-- JS here -->
  <script src="{{ asset('js/vendor/modernizr-3.5.0.min.js') }}"></script>
  <script src="{{ asset('js/vendor/jquery-1.12.4.min.js') }}"></script>
 <script src="{{ asset('js/popper.min.js') }}"></script>
 <script src="{{ asset('js/bootstrap.min.js') }}"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  <script src="{{ asset('js/owl.carousel.min.js') }}"></script>
  <script src="{{ asset('js/isotope.pkgd.min.js') }}"></script>
  <script src="{{ asset('js/ajax-form.js') }}"></script>
  <script src="{{ asset('js/waypoints.min.js') }}"></script>
      <script src="{{ asset('js/jquery.counterup.min.js') }}"></script>

  <script src="{{ asset('js/imagesloaded.pkgd.min.js') }}"></script>
  <script src="{{ asset('js/scrollIt.js') }}"></script>
  <script src="{{ asset('js/jquery.scrollUp.min.js') }}"></script>
  <script src="{{ asset('js/wow.min.js') }}"></script>
  <script src="{{ asset('js/nice-select.min.js') }}"></script>
  <script src="{{ asset('js/jquery.slicknav.min.js') }}"></script>
  <script src="{{ asset('js/jquery.magnific-popup.min.js') }}"></script>
  <script src="{{ asset('js/plugins.js') }}"></script>
  <script src="{{ asset('js/gijgo.min.js') }}"></script>

  <!--contact js-->
  <script src="{{ asset('js/contact.js') }}"></script>
  <script src="{{ asset('js/jquery.ajaxchimp.min.js') }}"></script>
  <script src="{{ asset('js/jquery.form.js') }}"></script>
  <script src="{{ asset('js/jquery.validate.min.js') }}"></script>
  <script src="{{ asset('js/mail-script.js') }}"></script>
  <script src="{{ asset('js/sweetalert.js') }}"></script>
  <script src="{{ asset('js/main.js') }}"></script>
  <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>

</body>

</html>














