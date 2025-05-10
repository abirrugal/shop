
    <!-- Start Trending Product Area -->
    <section class="trending-product section" style="margin-top: 12px;">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2>Recently Arrived Products</h2>
                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                            suffered alteration in some form.</p>
                    </div>
                </div>
            </div>
            <a href="{{route('frontend.product.recent')}}" class="text-decoration-none"> <span class="card border-0 d-inline ms-3 fs-6">See more</span></a> <div class="border-btm mb-3 mt-2"></div>


            <div class="row">
                @foreach ($recent_products as $recent_product)

                <div class="col-lg-3 col-md-4 col-12">
                    <!-- Start Single Product -->
                    <div class="single-product">

                        <div class="product-image">
                            <!-- <img src="assets/images/products/product-3.jpg" alt="#"> -->
                         <img class="flex-img"  src=" {{'allfiles/products_image/'.$recent_product->image}}" alt="{{$recent_product->slug}}">
    
                         
                            <div class="button">
                                <button class="btn cart_route_selection_ajax" type="button " data-route="{{route('cart.store')}}" onclick="add_to_cart({{$recent_product->id}})"><i class="lni lni-cart"></i> Add to Cart</button>
                            
                        </div>
                        </div>

                        
                        <div class="product-info">
                           	@if($recent_product->category)	
                             <a href="{{route('frontend.product.products_list_child',$recent_product->category->slug)}}"><span class="category">{{$recent_product->category->name}}</span></a>
                            @endif
                          
                            <h4 class="title">
                                <a href="{{route('frontend.product.show',$recent_product['slug'])}}">{{ Illuminate\Support\Str::limit($recent_product->title, 23)}}</a>
                            </h4>
                            <ul class="review">
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><span>5.0 Review(s)</span></li>
                            </ul>

                            @if($recent_product->sale_price === null && $recent_product->sale_price <  1)
                            <div class="price"> <span>৳ {{number_format($recent_product->price)}}</span> </div>
                            @else
                            <div class="price">
                                <span>৳ {{number_format($recent_product->sale_price)}}</span>
                                <span class="discount-price">৳ {{number_format($recent_product->price)}}</span>
                            </div>
                            @endif


                    
                        </div>
                    </div>
                    <!-- End Single Product -->
                </div>
               
                @endforeach
            </div>



        </div>
    </section>

    <!-- End Trending Product Area -->




    
