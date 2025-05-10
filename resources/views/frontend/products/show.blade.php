@extends('frontend.layouts.master')

@section('main')


    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6 col-12">
                    <div class="breadcrumbs-content">
                        <h1 class="page-title">Single Product</h1>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-12">
                    <ul class="breadcrumb-nav">
                        <li><a href="index.html"><i class="lni lni-home"></i> Home</a></li>
                        <li><a href="index.html">Shop</a></li>
                        <li>Single Product</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- Start Item Details -->
    <section class="item-details  pt-60 pb-60 pl-60 pr-60">
        <div class="container">
            <div class="top-area">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="product-images">
                            <main id="gallery">
                                <div class="main-img">
                                <img src="{{asset('allfiles/products_image').'/'.$product->image}}" alt="{{$product->slug}}">
                                </div>
                                <!-- <div class="images">
                                    <img src="assets/images/product-details/01.jpg" class="img" alt="#">
                                    <img src="assets/images/product-details/02.jpg" class="img" alt="#">
                                    <img src="assets/images/product-details/03.jpg" class="img" alt="#">
                                    <img src="assets/images/product-details/04.jpg" class="img" alt="#">
                                    <img src="assets/images/product-details/05.jpg" class="img" alt="#">
                                </div> -->
                            </main>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-12">
                        <div class="product-info">

                            <h2 class="title">{!!$product->title!!}</h2>

                            <p class="category"><i class="lni lni-tag"></i>  <a href="{{route("frontend.product.products_list_child", $product->category->slug)}}">{{$product->category->name}}</a></p>
                            @if($product->in_stock===1)

                            <div class="h5 mt-3 text-success mb-3">In Stock</div>
                            @else
                            <div class="h5 mt-3 text-danger mb-3">Out Of Stock</div>

                            @endif

                            
                            <h6 class="price">
                            @if($product->sale_price === null && $product->sale_price < 1)
                           
                            BDT {!! number_format($product->price)!!}
                            
                            @else
                            
                            ৳ {{number_format($product->sale_price)}}
                            
                                <span>৳ {{number_format($product->price)}}</span>
                            
                            @endif
                            </h6>

                            <p class="info-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                tempor incididunt
                                ut labore et dolore magna aliqua.</p>
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-12">
                                    <div class="form-group color-option">
                                        <label class="title-label" for="size">Choose color</label>
                                        <div class="single-checkbox checkbox-style-1">
                                            <input type="checkbox" id="checkbox-1" checked>
                                            <label for="checkbox-1"><span></span></label>
                                        </div>
                                        <div class="single-checkbox checkbox-style-2">
                                            <input type="checkbox" id="checkbox-2">
                                            <label for="checkbox-2"><span></span></label>
                                        </div>
                                        <div class="single-checkbox checkbox-style-3">
                                            <input type="checkbox" id="checkbox-3">
                                            <label for="checkbox-3"><span></span></label>
                                        </div>
                                        <div class="single-checkbox checkbox-style-4">
                                            <input type="checkbox" id="checkbox-4">
                                            <label for="checkbox-4"><span></span></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-12">
                                    <div class="form-group">
                                        <label for="color">Battery capacity</label>
                                        <select class="form-control" id="color">
                                            <option>5100 mAh</option>
                                            <option>6200 mAh</option>
                                            <option>8000 mAh</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-12">
                                    <div class="form-group quantity">
                                        <label for="color">Quantity</label>
                                        <select class="form-control quantity_show" name="quantity_show">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>


                                    </div>
         

                                </div>




                            </div>


                            <div class="bottom-content">
                                <div class="row align-items-end">

                                    {{-- <div class="col-lg-4 col-md-4 col-12">
                                        <div class="button cart-button">
                                            <button class="btn" style="width: 100%;">Add to Cart</button>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-12">
                                        <div class="wish-button">
                                            <button class="btn btn-lg buy_now text-white"><i class="lni lni-reload"></i> Buy now</button>
                                        </div>
                                    </div> --}}

                             
                                    <!-- <div class="col-lg-4 col-md-4 col-12">
                                        <div class="wish-button">
                                            <button class="btn"><i class="lni lni-heart"></i> To Wishlist</button>
                                        </div>
                                    </div> -->

                                    <div class="col-lg-4 col-md-4 col-12  cart_div">
                                        <form data-route="{{route('cart.store')}}" class="d-inline" method="POST">
                                            @csrf
                                            <input type="hidden" name="product_id" class="product_id_show" value="{{$product->id}}">
                                            
                                            <div class="button cart-button">
                                                <button class="btn cart_route_selection_ajax" data-route="{{route('cart.store')}}" type="button" onclick="add_to_cart({{$product->id}})" style="width: 100%;">Add to cart</button>
                                            </div>
                                            
                                        </form>
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-12">
                                        <form class="d-inline mt-3" action="{{route('buy_now', $product->id)}}" method="POST">
                                            @csrf
                                            
                                            <div class="wish-button">
                                                <button class="btn btn-lg buy_now text-white"><i class="lni lni-reload"></i>Buy now</button>
                                            </div>
                                           
                                        </form>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-details-info">
                <div class="single-block">
                    <div class="row">
                        <div class="col-lg-6 col-12">
                            <div class="info-body custom-responsive-margin">
                                <h4>Details</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
                                    irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat.</p>
                                <h4>Features</h4>
                                <ul class="features">
                                    <li>Capture 4K30 Video and 12MP Photos</li>
                                    <li>Game-Style Controller with Touchscreen</li>
                                    <li>View Live Camera Feed</li>
                                    <li>Full Control of HERO6 Black</li>
                                    <li>Use App for Dedicated Camera Operation</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="info-body">
                                <h4>Specifications</h4>
                                <ul class="normal-list">
                                    <li><span>Weight:</span> 35.5oz (1006g)</li>
                                    <li><span>Maximum Speed:</span> 35 mph (15 m/s)</li>
                                    <li><span>Maximum Distance:</span> Up to 9,840ft (3,000m)</li>
                                    <li><span>Operating Frequency:</span> 2.4GHz</li>
                                    <li><span>Manufacturer:</span> GoPro, USA</li>
                                </ul>
                                <h4>Shipping Options:</h4>
                                <ul class="normal-list">
                                    <li><span>Courier:</span> 2 - 4 days, $22.50</li>
                                    <li><span>Local Shipping:</span> up to one week, $10.00</li>
                                    <li><span>UPS Ground Shipping:</span> 4 - 6 days, $18.00</li>
                                    <li><span>Unishop Global Export:</span> 3 - 4 days, $25.00</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Item Details -->

    <!-- Review Modal -->
    <div class="modal fade review-modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Leave a Review</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="review-name">Your Name</label>
                                <input class="form-control" type="text" id="review-name" required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="review-email">Your Email</label>
                                <input class="form-control" type="email" id="review-email" required>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="review-subject">Subject</label>
                                <input class="form-control" type="text" id="review-subject" required>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="review-rating">Rating</label>
                                <select class="form-control" id="review-rating">
                                    <option>5 Stars</option>
                                    <option>4 Stars</option>
                                    <option>3 Stars</option>
                                    <option>2 Stars</option>
                                    <option>1 Star</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="review-message">Review</label>
                        <textarea class="form-control" id="review-message" rows="8" required></textarea>
                    </div>
                </div>
                <div class="modal-footer button">
                    <button type="button" class="btn">Submit Review</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Review Modal -->

@endsection @section('before_body') 
   
    {{-- <script>
function add_to_cart(product_id) {
    $(document).ready(function(e) {

        
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

var data = product_id;
var data1 = $('.quantity_show option:selected').val();

$.ajax({
    method: 'POST',
    url: "{{route('cart.store')}}",
    data: { product_id: data, quantity_show: data1 },
    cache: false,
    success: function(response) {
     window.location.reload();
        if (response.status === 'success') {
     
            alertify.set('notifier', 'position', 'top-right');
          
            alertify.success("Cart Added Success");
            $('.total_cart_items').html(response.data);

            $('.all_cart_items').html(

            );

        }

    },
    async: false,
    error: function(error) {

    }
})
})

}
</script> --}}
@endsection
