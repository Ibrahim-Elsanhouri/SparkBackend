@extends('layouts.master')


@section('content')


    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_1" style="direction: rtl;">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3>اضافة مشروع </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->

    <div class="job_details_area" style="direction: rtl;">
        <div class="container">
            <div class="row">
                    @include('layouts.alerts')

                <div class="col-lg-12">
                 
              
                    <div class="apply_job_form white-bg">
                        <h4 class="text-right">اضافة المشروع</h4>

                        <form method="POST" enctype="multipart/form-data" action="{{ route('projects.store') }}" >
                        {{ csrf_field() }}
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input_field">
                                        <input type="text" name="name" placeholder="اسم المشروع" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input_field">
                                        <input type="number" name="cost" placeholder="القيمة النقريبة للمشروع بالريال" required >
                                    </div>
                                </div>
                     
                                <div class="col-md-12">
                                    <div class="input_field">
                                        <input type="text" name="summary" placeholder="ملخص المشروع">
                                    </div>
                                </div>


                            <div class="col-md-6">
                                    <div class="input_field">
                                       <select name="categories_id">
                                       @foreach (\App\Category::all() as $cat )
                                              <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                                       @endforeach
                                    

                                       </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input_field">
                                             <select name="types_id">
                                       @foreach (\App\Type::all() as $type )
                                              <option value="{{ $type->id }}">{{ $type->name }}</option>
                                       @endforeach
                                    

                                       </select>
                                    </div>
                                </div>























                                <div class="col-md-6">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                          <button type="button" id="inputGroupFileAddon03"><i class="fa fa-cloud-upload" aria-hidden="true"></i>
                                          </button>
                                        </div>
                                        <div class="custom-file">
                                          <input type="file" name="file" class="custom-file-input" id="file" aria-describedby="inputGroupFileAddon03" required>
                                          <label class="custom-file-label" for="inputGroupFile03">ملف المشروع</label>
                                        </div>
                                      </div>
                                </div>
                          
                               <div class="col-md-6">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                          <button type="button" id="inputGroupFileAddon03"><i class="fa fa-cloud-upload" aria-hidden="true"></i>
                                          </button>
                                        </div>
                                        <div class="custom-file">
                                          <input type="file" name="image" class="custom-file-input" id="image" aria-describedby="inputGroupFileAddon03" required>
                                          <label class="custom-file-label" for="inputGroupFile03">ايقونة المشروع</label>
                                        </div>
                                      </div>
                                </div>

   
                                    <div class="col-md-6">
                                            <div class="switch-wrap d-flex justify-content-between">
                                                    <p>هل يوجد دراسة جدوى ؟</p>
                                                    <div class="confirm-switch">

                                           <input type="checkbox"  name="study" class="js-switch">

                                                            <label for="confirm-switch"></label>
                                                    </div>
                                                </div>
                                           
                                        </div>
<div class="col-md-6"></div>



                                <div class="col-md-6">
                                        <div class="switch-wrap d-flex justify-content-between">

<p>هل يوجد خطة تشغيل ؟</p>

                                            <div class="confirm-switch">
                                                        <input type="checkbox"  name="operation" class="js-switch">
                                                        <label for="confirm-switch"></label>
                                                </div>
                                            </div>
                                       
                                    </div>
                                    <div class="col-md-6"></div>

                                


                                                         <div class="col-md-6">
                                        <div class="switch-wrap d-flex justify-content-between">

<p>هل يوجد نموذج اولي ؟</p>

                                            <div class="confirm-switch">
                                                        <input type="checkbox"  name="prototype" class="js-switch">
                                                        <label for="confirm-switch"></label>
                                                </div>
                                            </div>
                                       
                                    </div>
                                    <div class="col-md-6"></div>




                         <div class="col-md-6">
                                        <div class="switch-wrap d-flex justify-content-between">

<p>هل يوجد مبيعات ؟</p>

                                            <div class="confirm-switch">
                                                        <input type="checkbox"   name="sales" class="js-switch">
                                                        <label for="confirm-switch"></label>
                                                </div>
                                            </div>
                                       
                                    </div>
                                    <div class="col-md-6"></div>




                         <div class="col-md-6">
                                        <div class="switch-wrap d-flex justify-content-between">

<p>هل يوجد خطة تسويق ؟</p>

                                            <div class="confirm-switch">
                                                        <input type="checkbox"  name="marketing" class="js-switch">
                                                        <label for="confirm-switch"></label>
                                                </div>
                                            </div>
                                       
                                    </div>
                                    <div class="col-md-6"></div>




                         <div class="col-md-6">
                                        <div class="switch-wrap d-flex justify-content-between">

<p>هل يوجد تصماميم  ؟</p>

                                            <div class="confirm-switch">
                                                        <input type="checkbox"  name="design" class="js-switch">
                                                        <label for="confirm-switch"></label>
                                                </div>
                                            </div>
                                       
                                    </div>
                                    <div class="col-md-6"></div>

           <div class="col-md-6">
                                        <div class="switch-wrap d-flex justify-content-between">

<p>هل يوجد نموذج العمل التجاري ؟</p>

                                            <div class="confirm-switch">
                                                        <input type="checkbox"  name="commerce" class="js-switch">
                                                        <label for="confirm-switch"></label>
                                                </div>
                                            </div>
                                       
                                    </div>
                                    <div class="col-md-6"></div>



         <div class="col-md-6">
                                        <div class="switch-wrap d-flex justify-content-between">

<p>هل يوجد دراسات فنية و تراخيص  ؟</p>

                                            <div class="confirm-switch"> 
                                                        <input type="checkbox" name="licenses" class="js-switch">
                                                        <label for="confirm-switch"></label>
                                                </div>
                                            </div>
                                       
                                    </div>
                                    <div class="col-md-6"></div>




                                <div class="col-md-12">
                                    <div class="input_field">
                                        <textarea name="details" id="" cols="30" rows="10" placeholder="تفاصيل المشروع"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="submit_btn">
                                        <button class="boxed-btn3 w-100" type="submit">قدم الأن </button>
                                         </div>
                            </div>
                            </form>
                    </div>
                </div>
     
            </div>
        </div>
    </div>
@endsection