@extends('layouts.master')


@section('content')





    <div class="bradcam_area bradcam_bg_1"  >
        <div class="container">
            <div class="row">
                <div class="col-xl-12"  >
                    <div class="bradcam_text"  >
                        <h3>اتصل بنا</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->
  <!-- ================ contact section start ================= -->
  <br><br>
<div class="container">

@if (session('msg'))
    <div class="alert alert-info">
    <center>    {{ session('msg') }} </center>
    </div>
@endif
</div>

  <section class="contact-section section_padding" style="direction: rtl;">
    <div class="container">



<div class="d-none d-sm-block mb-5 pb-4">
      

      <div class="row">
        <div class="col-6">
          <h2 class="contact-title" class="text-center">ارسل استفسارك</h2>
        </div>
        <div class="col-lg-8">
          <form class="form-contact contact_form" action="{{ route('contact') }}" method="post"  novalidate="novalidate">
          {{ csrf_field() }}
            <div class="row">
                <!-- 
              <div class="col-12">
          
                <div class="form-group">
                  
                    <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder = 'Enter Message'></textarea>
                </div>
              </div>
              -->
              <div class="col-sm-6">
                <div class="form-group">
                  <input class="form-control" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'الاسم'" placeholder = 'الاسم'>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <input class="form-control" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'الايميل'" placeholder = 'الايميل'>
                </div>
              </div>
              <div class="col-12">
                <div class="form-group">
                  <input class="form-control" name="query" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'استفسارك'" placeholder = 'استفسارك'>
                </div>
              </div>
            </div>
            <div class="col-md-4 center-block">
                    <button type="submit" class="button button-contactForm btn_4 boxed-btn">ارسال</button>

            </div>
          
          </form>
        </div>
        <div class="col-lg-4">
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-home"></i></span>
            <div class="media-body">
              <h3 class="text-center">Buttonwood, California.</h3>
              <p class="text-center">Rosemead, CA 91770</p>
            </div>
          </div>
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-tablet"></i></span>
            <div class="media-body">
              <h3 class="text-center">00 (440) 9865 562</h3>
              <p class="text-center">Mon to Fri 9am to 6pm</p>
            </div>
          </div>
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-email"></i></span>
            <div class="media-body">
              <h3 class="text-center">support@colorlib.com</h3>
              <p class="text-center">Send us your query anytime!</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


@endsection

