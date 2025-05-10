{{-- Sm to Md Screen  --}}

<div class="d-md-none card mt-3">
<div class="product-container">
    @if($products) @foreach ($products as $product)
<div class="col">
    <div class=" shadow-sm h-100 my-3">
        <div class="d-flex justify-content-center">
                            <a href="{{route('frontend.product.show',$product['slug'])}}">
                                
                                <!--<img class="product_img"  src=" {{asset('allfiles/products_image/'.$product['image'])}}" alt="{{$product['slug']}}">-->
                                
                                   <img class="flex-img"  src=" {{asset('allfiles/products_image/'.$product['image'])}}" alt="{{$product['slug']}}">
 </a>

        </div>

        <div class="card-body">
            <p class="card-text text-start product-title mb-2"> <a class=" text-decoration-none" href="{{route('frontend.product.show',$product['slug'])}}"> {{ Illuminate\Support\Str::limit($product['title'], 40)}}  </a> </p>

            <p class="item-price ">
                @if($product['sale_price'] !== null && $product['sale_price'] > 0)  <span> <span id="currency">৳</span>{{number_format($product['sale_price']) }} </span> <br>  <strike><span id="currency" class="text-muted">৳</span> {{number_format($product['price'])}}</strike> @else  <span> <span id="currency">৳</span>{{number_format($product['price'])}}<span>
                @endif
            </p>

            {{-- <div class="d-flex flex-column  cart_div">

                <form class="d-inline" data-route="{{route('cart.store')}}" id="add_cart" method="POST">
                    @csrf

                    <input type="hidden" name="product_id" class="product_id_show" value="{{$product['id']}}">

                    <button class="btn btn-sm  btn-outline-secondary mt-2  d-block " type="submit">Add to cart</button>
                </form>

                <form action="{{route('buy_now', $product['id'])}}" class=" d-inline" method="POST">
                  @csrf
                <button class="btn btn-sm  btn-outline-secondary mt-2 " type="submit">Buy now</button>                   
             </form>
            </div> --}}
        </div>
    </div>
</div> 


@endforeach
@endif
</div>
</div>
   
   
   
    <!-- Start Trending Product Area -->
    <section class="trending-product mt-1 d-none d-md-block">
       
<div class="p-2">
            <div class="row">
                @if($products) @foreach ($products as $product)

                <div class="col-lg-3 col-md-4 col-12">
                    <!-- Start Single Product -->
                    <div class="single-product">

                        <div class="product-image">
                            <!-- <img src="assets/images/products/product-3.jpg" alt="#"> -->
                         <img class="flex-img"  src=" {{asset('allfiles/products_image/'.$product['image'])}}" alt="{{$product['slug']}}">
    
                            <div class="button">
                                <button class="btn cart_route_selection_ajax" type="button " data-route="{{route('cart.store')}}" onclick="add_to_cart({{$product['id']}})"><i class="lni lni-cart"></i> Add to Cart</button>
                            </div>
                        </div>
                        
                        <div class="product-info">
                           
                             {{-- <a href="{{route('frontend.product.products_list_child',$recent_product->category->slug)}}"><span class="category">{{$recent_product->category->name}}</span></a> --}}

                          
                            <h4 class="title">
                                <a href="{{route('frontend.product.show',$product['slug'])}}">{{ Illuminate\Support\Str::limit($product['title'], 23)}}</a>
                            </h4>
                            <ul class="review">
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><i class="lni lni-star-filled"></i></li>
                                <li><span>5.0 Review(s)</span></li>
                            </ul>

                            @if($product['sale_price'] === null && $product['sale_price'] <  1)
                            <div class="price"> <span>৳ {{number_format($product['price'])}}</span> </div>
                            @else
                            <div class="price">
                                <span>৳ {{number_format($product['sale_price'])}}</span>
                                <span class="discount-price">৳ {{number_format($product['price'])}}</span>
                            </div>
                            @endif


                    
                        </div>
                    </div>
                    <!-- End Single Product -->
                </div>
               
                @endforeach
                @endif
            



        </div>
        
    </section>

    <!-- End Trending Product Area -->






