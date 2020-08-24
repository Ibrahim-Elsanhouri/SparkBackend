@extends('layouts.master')
@section('content')
    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_1">
        <div class="container">
		        @include('layouts.alerts')

            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3>تسجيل جديد</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
	<div class="whole-wrap">
		<div class="container box_1170" style="direction: rtl">
		
		
			<div class="section-top-border">
				<div class="row">
					<div class="col-lg-8 col-md-8">
                    <div class="text-center">
                    
                    						<h3 class="mb-30">سجل الان</h3>

                    
                    </div>
                    
					            <form class="form-horizontal"  method="POST" action="{{ route('register') }}">
                        {{ csrf_field() }}
							<div class="input-group-icon mt-10">
                        <div class="icon"><i class="fa fa-address-book" aria-hidden="true"></i></div>

								<input type="text" name="name" placeholder="الاسم "
									onfocus="this.placeholder = ''" onblur="this.placeholder = ' الاسم'" required
									class="single-input">
							</div>
		

<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-envelope-o" aria-hidden="true"></i></div>

								<input type="email" name="email" placeholder="البريد الالكتروني "
									onfocus="this.placeholder = ''" onblur="this.placeholder = 'البريد الالكتروني'" required
									class="single-input">
							</div>

					
							<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-mobile" aria-hidden="true"></i></div>
								<input type="text" name="mobile" placeholder="رقم الجوال" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'رقم الجوال'" required class="single-input">
							</div> 
							<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-flask" aria-hidden="true"></i></div>
								<div class="form-select" id="default-select"">
											<select name="categories_id">

												<option value="1">التخصص</option>
												                            @foreach (\App\Category::all() as $cat )
                <option value="{{ $cat->id }}">{{ $cat->name }}</option>

      @endforeach
							
									</select>
									
								</div>
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-user" aria-hidden="true"></i></div>
								<div class="form-select" id="default-select"">
											<select name="roles_id">
												<option value=" 1">نوع الحساب</option>
                                                 @foreach (\App\Role::all() as $role )
                <option value="{{ $role->id }}">{{ $role->name }}</option>

      @endforeach
  
								
									</select>
								</div>
							</div>



<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-key" aria-hidden="true"></i></div>

								<input type="password" name="password" placeholder=" كلمة المرور "
									onfocus="this.placeholder = ''" onblur="this.placeholder = ' كلمة المرور'" required
									class="single-input">
							</div>
<div class="input-group-icon mt-10">
								<div class="icon"><i class="fa fa-lock" aria-hidden="true"></i></div>

								<input id="password-confirm" type="password" name="password_confirmation" placeholder="تاكيد كلمة المرور"
									onfocus="this.placeholder = ''" onblur="this.placeholder = '  تاكيد كلمة المرور'" required
									class="single-input">
							</div>


<br>
                            <div class="mt-10" >
                            <div class="text-center">
                            	<button type="submit"  class="genric-btn info-border">سجل الان</button>
                            
                            </div>
								
							</div>

			
						</form>
					</div>
				
					</div>
				</div>
			</div>
		</div>
	</div>

@endsection