<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<!-- Start slider -->
<section id="aa-slider">
	<div class="aa-slider-area">
		<div id="sequence" class="seq">
			<div class="seq-screen">
				<ul class="seq-canvas">

					<c:forEach var="slider" items="${sliders}">
						<li>
							<div class="seq-model">
								<img data-seq src="${slider.getUrl()}" width="200" height="200"
									alt="${slider.title }" />
							</div>
							<div class="seq-title">
								<span data-seq>${slider.description }</span>
								<h2 data-seq>${slider.title }</h2>
							</div>
						</li>
					</c:forEach>

				</ul>
			</div>
			<!-- slider navigation btn -->
			<fieldset class="seq-nav" aria-controls="sequence"
				aria-label="Slider buttons">
				<a type="button" class="seq-prev" aria-label="Previous"><span
					class="fa fa-angle-left"></span></a> <a type="button" class="seq-next"
					aria-label="Next"><span class="fa fa-angle-right"></span></a>
			</fieldset>
		</div>
	</div>
</section>
<!-- / slider -->


<!-- Products section -->
<section id="aa-product">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="aa-product-area">
						<div class="aa-product-inner">
							<!-- start prduct navigation -->
							<!-- 							<ul class="nav nav-tabs aa-products-tab"> -->
							<!-- 								<li class="active"><a href="#men" data-toggle="tab">Men</a></li> -->
							<!-- 								<li><a href="#women" data-toggle="tab">Women</a></li> -->
							<!-- 								<li><a href="#sports" data-toggle="tab">Sports</a></li> -->
							<!-- 								<li><a href="#electronics" data-toggle="tab">Electronics</a></li> -->
							<!-- 							</ul> -->
							<h3 class="text-center">Our Latest Products</h3>
							<!-- Tab panes -->
							<div class="tab-content">
								<!-- Start men product category -->
								<div class="tab-pane fade in active" id="men">
									<ul class="aa-product-catg">
										<c:forEach items="${products }" var="product">
											<li>
												<figure>
													<a class="aa-product-img" href="#"><img
														src="${product.getImage().getUrl()}" alt="polo shirt img"></a>
													<a class="aa-add-card-btn" href="javascript:void(0)"
														onclick="addCart(${product.productId})"><span
														class="fa fa-shopping-cart"></span>Add To Cart</a>
													<figcaption>
														<h4 class="aa-product-title">
															<a href="#">${product.name }</a>
														</h4>
														<span class="aa-product-price">${product.price}</span>
														<!-- 										<span class="aa-product-price"><del>$65.50</del></span> -->
														<p class="aa-product-descrip">${product.description }</p>
													</figcaption>
												</figure>
												<div class="aa-product-hvr-content">
													<a href="#" data-toggle="tooltip" data-placement="top"
														title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>

													<a href="#" data-toggle2="tooltip" data-placement="top"
														title="Quick View" data-toggle="modal"
														data-target="#quick-view-modal_${product.productId}"><span
														class="fa fa-search"></span></a>
												</div> <!-- product badge --> <!-- 									<span class="aa-badge aa-sale" href="#">SALE!</span> -->
											</li>

										</c:forEach>
									</ul>

								</div>

							</div>
							<!-- quick view modal -->
							<div class="modal fade" id="quick-view-modal" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-body">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<div class="row">
												<!-- Modal view slider -->
												<div class="col-md-6 col-sm-6 col-xs-12">
													<div class="aa-product-view-slider">
														<div class="simpleLens-gallery-container" id="demo-1">
															<div class="simpleLens-container">
																<div class="simpleLens-big-image-container">
																	<a class="simpleLens-lens-image"
																		data-lens-image="img/view-slider/large/polo-shirt-1.png">
																		<img src="img/view-slider/medium/polo-shirt-1.png"
																		class="simpleLens-big-image">
																	</a>
																</div>
															</div>
															<div class="simpleLens-thumbnails-container">
																<a href="#" class="simpleLens-thumbnail-wrapper"
																	data-lens-image="img/view-slider/large/polo-shirt-1.png"
																	data-big-image="img/view-slider/medium/polo-shirt-1.png">
																	<img src="img/view-slider/thumbnail/polo-shirt-1.png">
																</a> <a href="#" class="simpleLens-thumbnail-wrapper"
																	data-lens-image="img/view-slider/large/polo-shirt-3.png"
																	data-big-image="img/view-slider/medium/polo-shirt-3.png">
																	<img src="img/view-slider/thumbnail/polo-shirt-3.png">
																</a> <a href="#" class="simpleLens-thumbnail-wrapper"
																	data-lens-image="img/view-slider/large/polo-shirt-4.png"
																	data-big-image="img/view-slider/medium/polo-shirt-4.png">
																	<img src="img/view-slider/thumbnail/polo-shirt-4.png">
																</a>
															</div>
														</div>
													</div>
												</div>
												<!-- Modal view content -->
												<div class="col-md-6 col-sm-6 col-xs-12">
													<div class="aa-product-view-content">
														<h3>T-Shirt</h3>
														<div class="aa-price-block">
															<span class="aa-product-view-price">$34.99</span>
															<p class="aa-product-avilability">
																Avilability: <span>In stock</span>
															</p>
														</div>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit. Officiis animi, veritatis quae repudiandae quod
															nulla porro quidem, itaque quis quaerat!</p>
														<h4>Size</h4>
														<div class="aa-prod-view-size">
															<a href="#">S</a> <a href="#">M</a> <a href="#">L</a> <a
																href="#">XL</a>
														</div>
														<div class="aa-prod-quantity">
															<form action="">
																<select name="" id="">
																	<option value="0" selected="1">1</option>
																	<option value="1">2</option>
																	<option value="2">3</option>
																	<option value="3">4</option>
																	<option value="4">5</option>
																	<option value="5">6</option>
																</select>
															</form>
															<p class="aa-prod-category">
																Category: <a href="#">Polo T-Shirt</a>
															</p>
														</div>
														<div class="aa-prod-view-bottom">
															<a href="#" class="aa-add-to-cart-btn"><span
																class="fa fa-shopping-cart"></span>Add To Cart</a> <a
																href="#" class="aa-add-to-cart-btn">View Details</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- / quick view modal -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Products section -->

<!-- / popular section -->
<!-- Support section -->
<section id="aa-support">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-support-area">
					<!-- single support -->
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="aa-support-single">
							<span class="fa fa-truck"></span>
							<h4>FREE SHIPPING</h4>
							<P>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Quam, nobis.</P>
						</div>
					</div>
					<!-- single support -->
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="aa-support-single">
							<span class="fa fa-clock-o"></span>
							<h4>30 DAYS MONEY BACK</h4>
							<P>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Quam, nobis.</P>
						</div>
					</div>
					<!-- single support -->
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="aa-support-single">
							<span class="fa fa-phone"></span>
							<h4>SUPPORT 24/7</h4>
							<P>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Quam, nobis.</P>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Support section -->
<!-- Testimonial -->
<section id="aa-testimonial">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-testimonial-area">
					<ul class="aa-testimonial-slider">
						<!-- single slide -->
						<li>
							<div class="aa-testimonial-single">
								<img class="aa-testimonial-img" src="<spring:url value='/resources/front/img/testimonial-img-2.jpg'></spring:url>"
									alt="testimonial img"> <span
									class="fa fa-quote-left aa-testimonial-quote"></span>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Sunt distinctio omnis possimus, facere, quidem qui!consectetur
									adipisicing elit. Sunt distinctio omnis possimus, facere,
									quidem qui.</p>
								<div class="aa-testimonial-info">
									<p>Allison</p>
									<span>Designer</span> <a href="#">Dribble.com</a>
								</div>
							</div>
						</li>
						<!-- single slide -->
						<li>
							<div class="aa-testimonial-single">
								<img class="aa-testimonial-img" src="<spring:url value='/resources/front/img/testimonial-img-1.jpg'></spring:url>"
									alt="testimonial img"> <span
									class="fa fa-quote-left aa-testimonial-quote"></span>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Sunt distinctio omnis possimus, facere, quidem qui!consectetur
									adipisicing elit. Sunt distinctio omnis possimus, facere,
									quidem qui.</p>
								<div class="aa-testimonial-info">
									<p>KEVIN MEYER</p>
									<span>CEO</span> <a href="#">Alphabet</a>
								</div>
							</div>
						</li>
						<!-- single slide -->
						<li>
							<div class="aa-testimonial-single">
								<img class="aa-testimonial-img" src="<spring:url value='/resources/front/img/testimonial-img-3.jpg'></spring:url>"
									alt="testimonial img"> <span
									class="fa fa-quote-left aa-testimonial-quote"></span>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Sunt distinctio omnis possimus, facere, quidem qui!consectetur
									adipisicing elit. Sunt distinctio omnis possimus, facere,
									quidem qui.</p>
								<div class="aa-testimonial-info">
									<p>Luner</p>
									<span>COO</span> <a href="#">Kinatic Solution</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- / Testimonial -->





