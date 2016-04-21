<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!-- Cart view section -->
<section id="checkout">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="checkout-area">
					<form action="checkout?${_csrf.parameterName}=${_csrf.token}" method="POST" validate="noValidate">
						<div class="row">
							<div class="col-md-8">
								<div class="checkout-left">
									<div class="panel-group" id="accordion">
										<!-- Coupon section -->
										<div class="panel panel-default aa-checkout-coupon">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseOne"> Have a Coupon? </a>
												</h4>
											</div>
											<div id="collapseOne" class="panel-collapse collapse in">
												<div class="panel-body">
													<input type="text" placeholder="Coupon Code"
														class="aa-coupon-code">
														 <a href="javascript:void(0);" onclick="appyDiscount()" class="aa-browse-btn">Submit</a>
												</div>
											</div>
										</div>
										
										<!-- Billing Details -->
										<div class="panel panel-default aa-checkout-billaddress">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseThree"> Billing Details </a>
												</h4>
											</div>
											<div id="collapseThree" class="panel-collapse collapse">
												<div class="panel-body">
													<div class="row">
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input value="${person.firstName }" type="text" placeholder="First Name*">
															</div>
														</div>
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input type="text" value="${person.lastName }" placeholder="Last Name*">
															</div>
														</div>
													</div>
												
													<div class="row">
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input type="email" value="${person.email }" placeholder="Email Address*">
															</div>
														</div>
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input type="tel" value="${person.phone }" placeholder="Phone*">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-12">
															<div class="aa-checkout-single-bill">
																<textarea cols="8" rows="3">${person.street }</textarea>
															</div>
														</div>
													</div>
													
													<div class="row">
														
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input type="text" value="${person.city }" placeholder="City / Town*">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input type="text" value="${person.state }" placeholder="State*">
															</div>
														</div>
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input type="text" value="${person.zip }" placeholder="Postcode / ZIP*">
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- Shipping Address -->
										<div class="panel panel-default aa-checkout-billaddress">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseFour"> Shippping Address </a>
												</h4>
											</div>
											<div id="collapseFour" class="panel-collapse collapse">
												<div class="panel-body">
													<div class="row">
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input type="text" value="${person.firstName }" placeholder="First Name*">
															</div>
														</div>
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input type="text" value="${person.lastName }" placeholder="Last Name*">
															</div>
														</div>
													</div>
												
													<div class="row">
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input type="email" value="${person.email }" placeholder="Email Address*">
															</div>
														</div>
<!-- 														<div class="col-md-6"> -->
<!-- 															<div class="aa-checkout-single-bill"> -->
<!-- 																<input type="tel" placeholder="Phone*"> -->
<!-- 															</div> -->
<!-- 														</div> -->
													</div>
													<div class="row">
														<div class="col-md-12">
															<div class="aa-checkout-single-bill">
																<textarea cols="8" rows="3">${person.street }</textarea>
															</div>
														</div>
													</div>
												
													<div class="row">
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input type="text" value="${person.city }" placeholder="City">
															</div>
														</div>
<!-- 														<div class="col-md-6"> -->
<!-- 															<div class="aa-checkout-single-bill"> -->
<!-- 																<input type="text" placeholder="City / Town*"> -->
<!-- 															</div> -->
<!-- 														</div> -->
													</div>
													<div class="row">
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input type="text" value="${person.state }" placeholder="State">
															</div>
														</div>
														<div class="col-md-6">
															<div class="aa-checkout-single-bill">
																<input type="text" value="${person.zip }" placeholder="Postcode / ZIP*">
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-12">
															<div class="aa-checkout-single-bill">
																<textarea cols="8" rows="3">Special Notes</textarea>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<div class="checkout-right">
									<h4>Order Summary</h4>
									<div class="aa-order-summary-area">
										<table class="table table-responsive">
											<thead>
												<tr>
													<th>Product</th>
													<th>Total</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="product" items="${products }">
											<tr>
													<td>${product.name } </td>
													<td>$${product.price }</td>
												</tr>
											</c:forEach>
												
												
											</tbody>
											<tfoot>
												
												<tr>
													<th>Total</th>
													<td>$${total}</td>
												</tr>
											</tfoot>
										</table>
									</div>
									<h4>Payment Method</h4>
									<div class="aa-payment-method">
										<label for="cashdelivery"><input type="radio"
											id="cashdelivery" name="optionsRadios"> Cash on
											Delivery </label> <label for="paypal"><input type="radio"
											id="paypal" name="optionsRadios" checked> Via Paypal
										</label> <img
											src="https://www.paypalobjects.com/webstatic/mktg/logo/AM_mc_vs_dc_ae.jpg"
											border="0" alt="PayPal Acceptance Mark"> <input
											type="submit" value="Place Order" class="aa-browse-btn">
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Cart view section -->