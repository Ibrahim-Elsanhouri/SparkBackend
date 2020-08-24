@extends('layouts.master')
@section('content')

    <div class="bradcam_area bradcam_bg_1" style="direction: rtl;">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3>{{ $project->name }}</h3>
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

                <div class="col-lg-8">
                    <div class="job_details_header">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="thumb">
                                    <img src="img/svg_icon/1.svg" alt="">
                                </div>
                                <div class="jobs_conetent">
                                    <a href="#"><h4>{{ $project->name }}</h4></a>
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="location">
                                                    <p> <i class="fa fa-flask"></i> {{ $project->category->name }}</p>
                                        </div>
                                        <div class="location">
                                                    <p> <i class="fa fa-money"></i> {{ $project->cost }} ريال سعودي</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="heart_mark" href="#"> <i class="ti-heart"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="descript_wrap white-bg" style="direction: rtl;">
                        <div class="single_wrap" style="direction: rtl;">
                            <h4 class="text-right"> ملخص المشروع </h4>
                            <p class="text-right">
                                
                                {{ $project->summary }}
                                </p>
                        </div>
                           <div class="single_wrap">
                            <h4 class="text-right">تفاصيل المشروع</h4>
                            <p class="text-right">
               
               {{ $project->details }}
               
               </p>
                        </div>
                  
                            <div class="single_wrap">
                            <h4 class="text-right">ملف المشروع</h4>
                            <p class="text-right">

 @if (Auth::user()->id  == $project->users_id)
 <a href="uploads/{{ $project->file }}" download><i class="fa fa-file-pdf-o" aria-hidden="true"></i></a>


@endif

               
yfudu
               </p>



                        </div>
                     
                    </div>
                  
                </div>
                <div class="col-lg-4">
                    <div class="job_sumary">
                        <div class="summery_header">
                            <h3 class="text-right">معايير المشروع</h3>
                        </div>
                        <div class="job_content">
                            <ul>
                          <li class="text-right">  تاريخ الاضافة:  <span>{{ $project->created_at->diffForHumans() }}</span> </li>
                          
                                <li class="text-right">دراسة الجدوى: <span>
                                @if($project->study = 'on')
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                @else
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                                @endif
                                </span></li>

                                <li class="text-right">خطة تشغيل: <span>

                                     @if($project->operation ==  'on')
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                @else
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                                @endif
                                </span></li>

                                <li class="text-right">نموذج اولي: <span>
                                     @if($project->prototype ==  'on')
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                @else
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                                @endif
                                </span>
                                </li>

                                <li class="text-right">مبيعات : <span> 
                                              @if($project->sales == 'on')
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                @else
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                                @endif
                                </span></li>


                                <li class="text-right">خطة تسويق : <span> 
                                              @if($project->marketing ==  'on')
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                @else
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                                @endif
                                
                                
                                </span>
                                </li>


                                <li class="text-right">تصماميم : <span> 
                                
                                                  @if($project->design ==  'on')
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                @else
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                                @endif
                                
                                </span></li>


                            <li class="text-right">نموذج العمل التجاري : <span>
                                              @if($project->lisense ==  'on')
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                @else
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                                @endif
                            
                            
                            </span></li>

                             <li class="text-right"> دراسات فنية و تراخيص  : <span> 
                                           @if($project->commerce ==  'on')
                                <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                @else
                                <i class="fa fa-thumbs-o-down" aria-hidden="true"></i>
                                @endif

</span></li>



                            </ul>
                        </div>
                    </div>
                    <div class="share_wrap d-flex">
                        <span>المشاركة عبر :</span>
                        <ul>
                            <li><a href="#"> <i class="fa fa-facebook"></i></a> </li>
                            <li><a href="#"> <i class="fa fa-google-plus"></i></a> </li>
                            <li><a href="#"> <i class="fa fa-twitter"></i></a> </li>
                            <li><a href="#"> <i class="fa fa-envelope"></i></a> </li>
                        </ul>
                    </div>
                    <div class="job_location_wrap">
                        <div class="job_lok_inner">
                            <div id="map" style="height: 200px;"></div>
                           
                            
                          </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



@endsection