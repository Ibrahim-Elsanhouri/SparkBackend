@extends('layouts.master')
@section('content')
    <!-- header-end -->

    <!-- bradcam_area  -->
    <div class="bradcam_area bradcam_bg_1">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text">
                        <h3>المشاريع المتاحة</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->


    <!-- job_listing_area_start  -->
    <div class="job_listing_area plus_padding" style="direction: rtl;">
        <div class="container">
        @include('layouts.alerts')
            <div class="row">
                <div class="col-lg-3">
                    <div class="job_filter white-bg">
                        <div class="form_inner white-bg">
                            <h3>بحث</h3>
                            <form action="#">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <input type="text" placeholder="اسم المشروع">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                            
                                                <option data-display="Location">المنطقة</option>
                                                <option value="1">الرياض</option>
                                                <option value="2">جدة</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="Category">الفئة</option>
                                                
                                                <option value="1">كيمياء</option>
                                                <option value="2">فيزياء</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="Experience">الخبرة</option>
                                                <option value="1">مبتدئ</option>
                                                <option value="2">خبير</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="Job type">نوع الوظيفة</option>
                                                <option value="1">دوام كامل</option>
                                                <option value="2">دوام جزئي</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="Qualification">المؤهلات</option>
                                                <option value="1">دبلوم</option>
                                                <option value="2">بكالوريوس</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="single_field">
                                            <select class="wide">
                                                <option data-display="Gender">النوع</option>
                                                <option value="1">النوع</option>
                                                <option value="2">النوع</option>
                                            </select>
                                        </div>
                                    </div>

                                   
                                </div>
                            </form>
                        </div>
                       
                        <div class="reset_btn">
                            <button  class="boxed-btn3 w-100" type="submit">اعادة</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="recent_joblist_wrap">
                        <div class="recent_joblist white-bg ">
                            <div class="row align-items-center">
                                <div class="col-md-12 text-center">
                                    <h4>قائمة المشاريع</h4>
                                </div>
                                <!--

   <div class="col-md-6">
                                    <div class="serch_cat d-flex justify-content-end">
                                        <select>
                                            <option data-display="Most Recent">Most Recent</option>
                                            <option value="1">Marketer</option>
                                            <option value="2">Wordpress </option>
                                            <option value="4">Designer</option>
                                        </select>
                                    </div>
                                </div>



                                -->
                             
                            </div>
                        </div>
                    </div>

                    <div class="job_lists m-0">
                        <div class="row">

@foreach ($projects as $project )
    

    <div class="col-lg-12 col-md-12">
                                <div class="single_jobs white-bg d-flex justify-content-between">
                                    <div class="jobs_left d-flex align-items-center">
                                        <div class="thumb">
                                            <img src="/uploads/{{ $project->image }}" alt="">
                                        </div>
                                        <div class="jobs_conetent">
                                            <a href="{{ route('projects.show' , $project->id ) }}"><h4>{{ $project->name }}</h4></a>
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
                                            <a class="heart_mark" href="#"> <i class="fa fa-heart"></i> </a>
                                            <a href="job_details.html" class="boxed-btn3">قدم الأن</a>
                                        </div>
                                        <div class="date">
                                            <p>وقت الاضافة: {{ $project->created_at->diffForHumans() }}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>




@endforeach
                        


                 
                         
                        </div>

                                <div class="row">
                            <div class="col-lg-12">
                                <div class="pagination_wrap">
                                    <ul>
                                        <li><a href="#"> <i class="ti-angle-left"></i> </a></li>
                                        <li><a href="#"><span>01</span></a></li>
                                        <li><a href="#"><span>02</span></a></li>
                                        <li><a href="#"> <i class="ti-angle-right"></i> </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

      



                    </div>
                </div>
            </div>
        </div>
    </div>


@endsection