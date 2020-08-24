@extends('layouts.master')


@section('content')





    <div class="bradcam_area bradcam_bg_1"  >
        <div class="container">
            <div class="row">
                <div class="col-xl-12"  >
                    <div class="bradcam_text"  >
                        <h3>تسجيل الدخول</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->
  <!-- ================ contact section start ================= -->
 @include('layouts.alerts')

       <div class="container">
   

                    <form style="direction :rtl;" class="form-horizontal" method="POST" action="{{ route('login') }}">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">

                            <div class="col-md-4">
                                <input dir="rtl" id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="ادخل بريدك الاكتروني" required autofocus>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">

                            <div class="col-md-4">
                                <input  id="password" type="password" class="form-control" name="password" placeholder="ادخل  كلمة المرور" required>

                                @if ($errors->has('password'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif


								
								
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 col-md-offset-6">
                                <div class="checkbox">
								
								<div class="text-right">
                                           <input   type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}> Remember Me

</div>
                             
                            
                            
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                           

								<div class="text-right">
       <button type="submit" class="btn btn-primary">
                                    تسجيل الدخول
                                </button>
</div>
<!--
                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    Forgot Your Password?
                                </a>
								-->
                            </div>
                        </div>
                    </form>
					<div>

         
<br><br>
@endsection

