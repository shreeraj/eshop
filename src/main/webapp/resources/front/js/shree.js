$(document).ready(function() {
	calculateTotal();
})

function addCart(id) {

	$.ajax({
		url : 'http://localhost:8080/eshop/addCart/' + id,
		method : 'GET',

		dataType : 'json',
		success : function(data) {
			if (data.login == 0) {
				$('#modal_message').html("Please login to add to cart");
				$('#messageModal').modal('show');
			} else {
				var count = 0;
				$.each(data.products, function(key, value) {
					// console.log(value);
					count++;
				})
				$('.aa-cart-notify').html(count);
				// console.log(data.products[0]);
			}
			$('#quick-view-modal_' + id).modal('hide');
		}
	})
}

function removeCart(id) {
	$.ajax({
		url : 'http://localhost:8080/eshop/removeCart/' + id,
		method : 'GET',

		dataType : 'json',
		success : function(data) {
			if (data.login == 0) {

			} else {
				var count = 0;
				$.each(data.products, function(key, value) {

					count++;
				})
				$('.aa-cart-notify').html(count);
				$('#productRow_' + id).remove();
				calculateTotal() ;
			}

		}
	})
}

function calculateTotal() {
	var total = 0;
	$('.subtotal').each(function(index, obj) {
		var text = $(this).text();
		var amount = text.substring(1, text.length)
		total+=parseInt(amount);
	});
	$('#finalSubtotal').html('$'+total);
	$('#finalTotal').html('$'+total);
}

function processCart(){
	$('#cartForm').submit();
}
