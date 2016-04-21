<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!-- Cart view section -->
<section id="cart-view">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="cart-view-area">
					<div class="cart-view-table">
						<form action="processCart?${_csrf.parameterName}=${_csrf.token}" id="cartForm" method="POST">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th></th>
											<th></th>
											<th>Product</th>
											<th>Price</th>
											<th>Quantity</th>
											<th>Total</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="product" items="${products }">
											<tr class="cartRow" id="productRow_${product.productId }">
												<td><a class="remove" onclick="removeCart(${product.productId})" href="javascript:void(0);"><fa
															class="fa fa-close"></fa></a></td>
												<td><a href="#"><img src="${product.getImage().getUrl()}"
														alt="img"></a></td>
												<td><a class="aa-cart-title" href="#">${product.name }</a></td>
												<td>$${product.price }</td>
												<td><input name="quantity[${product.productId }]" class="aa-cart-quantity" type="number"
													value="1" min="1" max="${product.currQty }"></td>
												<td class="subtotal">$250</td>
											</tr>
										</c:forEach>

										
									</tbody>
								</table>
							</div>
						</form>
						<!-- Cart Total view -->
						<div class="cart-view-total">
							<h4>Cart Totals</h4>
							<table class="aa-totals-table">
								<tbody>
									<tr>
										<th>Subtotal</th>
										<td id="finalSubtotal"></td>
									</tr>
									<tr>
										<th>Total</th>
										<td id="finalTotal"></td>
									</tr>
								</tbody>
							</table>
							<a href="javascript:void(0);" onclick="processCart()" class="aa-cart-view-btn">Proced to Checkout</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Cart view section -->