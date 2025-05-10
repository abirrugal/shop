

<!-- Start Trending Product Area -->
<section class="trending-product section" style="margin-top: 12px;">
        <div class="container">
            <div class="row">


                <div class="col-12">
                    <div class="section-title">
                        <h2>Trending Product</h2>
                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have
                            suffered alteration in some form.</p>
                    </div>
                </div>
            </div>
            <a href="{{route('frontend.product.best_seller')}}" class="text-decoration-none"> <span class="card border-0 d-inline ms-3 fs-6">See more</span></a> <div class="border-btm mb-3 mt-2"></div>

            <div class="row">

			@foreach ($top_products as $key=>$top_product)
                
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Product -->
                    <div class="single-product">
                        <div class="product-image">
                            <!-- <img src="assets/images/products/product-3.jpg" alt="#"> -->
						 <img class="flex-img"   src=" {{'allfiles/products_image/'.$top_product->image}}" alt="{{$top_product->slug}}">

                            <div class="button">
                                <button class="btn cart_route_selection_ajax" data-route="{{route('cart.store')}}" type="button" onclick="add_to_cart({{$top_product->id}})"><i class="lni lni-cart"></i> Add to Cart</button>
                                    
                            </div>
                        </div>
                        <div class="product-info">
						<span class="category">
						    @if($top_product->category)
						    <a href="{{route('frontend.product.products_list_child',$top_product->category->slug)}}">{{$top_product->category->name}}
						    </a>
						    @endif
						    </span>
							
                            <h4 class="title">
                                <a href="{{route('frontend.product.show',$top_product['slug'])}}">{{ Illuminate\Support\Str::limit($top_product->title, 23)}}</a>
                            </h4>
                            <ul class="review">
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><span>5.0 Review(s)</span></li>
                            </ul>
                            <div class="price">
                                <span>@if($top_product->sale_price !== null && $top_product->sale_price > 0) ৳ {{number_format($top_product->sale_price) }}  <span id="currency" class="text-muted">৳</span> {{number_format($top_product->price)}} @else  <span> <span id="currency">৳</span>{{number_format($top_product->price)}}<span>
	@endif</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->
                </div>

				@endforeach
               
            </div>
        </div>
    </section>
    <!-- End Trending Product Area -->

	<style>
.product_img {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 270px;
    width: 200px
    
}
	</style>
