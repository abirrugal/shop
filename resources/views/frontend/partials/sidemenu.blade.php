<!-- Start Mega Category Menu -->
                        
<div class="mega-category-menu d-none d-md-block">
                            <span class="cat-button"><i class="lni lni-menu"></i>All Categories</span>

                            <ul class="sub-category">

                                @foreach($categories as $category)


                                <li>
                                    
                                    <!-- <a href="product-grids.html">Electronics <i class="lni lni-chevron-right"></i></a> -->

                                    @if($category->child_category->count()>0)    
                                    <button class="btn rounded "  aria-expanded="false">
                                      {{$category->name}} <i class="lni lni-chevron-right"></i>
                                    </button>     
                                    @else
                                    <button class="btn  rounded ">
                                      {{$category->name}}
                                    </button>
                                    @endif


                                    <ul class="inner-sub-category">
                                        @foreach($category->child_category as $subcategory)
                                        <li><a href="{{route('frontend.product.products_list',$subcategory->slug)}}" class="link-dark rounded">{{$subcategory->name}}</a></li>          
                                        @endforeach
                                    </ul>

                                   @endforeach 
                                </li>


                            </ul>
                        </div>
                        <!-- End Mega Category Menu -->
<div class="d-md-none">
                        <button class="navbar-toggler mobile-menu-btn text-white" id="menu-btn" onclick="openNav()" type="button">
                        <span class="toggler-icon"></span>
                        <span class="toggler-icon"></span>
                        <span class="toggler-icon"></span>
                      </button>
</div>
