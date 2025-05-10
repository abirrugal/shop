function add_to_cart(product_id) {
    $(document).ready(function(e) {

        
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

var url = $('.cart_route_selection_ajax').data('route');
var data = product_id;
if($('.quantity_show option:selected').val() !== null && $('.quantity_show option:selected').val() !== '' ){
var data1 = $('.quantity_show option:selected').val(); 
}
else{
    var data1 = 1; 
}
$.ajax({
    method: 'POST',
    url: url,
    data: { product_id: data, quantity_show: data1 },
    cache: false,
    async: false,
  
}).done(function(response){
       //  window.location.reload();
       if (response.status === 'success') {
            // @ts-ignore
            alertify.set('notifier', 'position', 'top-right');
            // @ts-ignore
            alertify.success("Cart Added Success").dismissOthers();
                
            $('.total_cart_items').html(response.totalProducts);        
            
            $('.test').html('This is for test');
            $('.productImage_ajax').attr("src", response.productImage);
            $('.productTotalPrice_ajax').html(numberWithCommas(response.productTotalPrice));
            $('.total_price_ajax').html(numberWithCommas(response.total));
     
        }
}).fail(function(e){
    console.log(e.message);
});

})

}

function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}