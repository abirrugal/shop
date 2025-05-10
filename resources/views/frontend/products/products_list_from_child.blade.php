@extends('frontend.layouts.master')

@section('main')
<div class="container-fluid">
    <div class="row">

        <div class="col-lg-2 d-lg-block border-end mt-3">
     
            <div class="p-3 pb-2 fw-bolder border-bottom">Department</div>

           <a href="{{route('frontend.product.products_list',$child_category->subcat->slug)}}" class="text-decoration-none text-dark fw-bold btn-sm mx-0 px-0 my-2"><i class="fas fa-chevron-left"></i> << {{$child_category->subcat->name}}</a> 


                  
            {{-- <div class="px-3"><a class="text-decoration-none text-dark  mb-1" href="{{route('frontend.product.products_list_child',$child_category->slug)}}"> {{$child_category->name}} </a></div> --}}

            
    </div>

       
            <div class="col-lg-10 mt-3">

            {{-- Products --}}
             <div class="card category_title text-center  py-3">  {{$child_category->name}}
       </div>
       
      
         @include('frontend.partials.product_list_view')
         
        
                <hr>
                    
                    
               @if($products && $products->render())  
            <div class="d-flex justify-content-center align-items-center mb-4 bg-secondary py-3">
            {!!$products->render()!!}
            </div>
            @endif
                
            </div>
        </div>
    </div>
    @endsection