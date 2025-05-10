@foreach(session('cart') as $key => $product)
                                    
<div class="session_cart" data-all="{{$product['title']}}"></div>

      <li class="all_cart_items">
          <a href="{{route('cart.destroy', $key)}}" class="remove" title="Remove this item"><i
                  class="lni lni-close"></i></a>

                  
          <div class="cart-img-head">
              <a class="cart-img" href="{{route('cart.show',$key)}}">
                  <img class="productImage_ajax"
                      src="{{$product['image']}}" alt="#">
                  
                  </a>
          </div>

          <div class="content">
              
              <h4><a href="{{route('cart.show',$key)}}">
          
                 <span class="productTitle_ajax">{{ Illuminate\Support\Str::limit($product['title'],16)}}</span>  </a></h4>
              <p class="quantity">{{$product['quantity']}} - <span class="amount productTotalPrice_ajax">৳ {{number_format($product['total_price'])}}</span></p>
          </div>
      </li>
 @endforeach   