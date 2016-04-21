<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!-- catg header banner section -->
<!-- <section id="aa-catg-head-banner"> -->
<!-- 	<img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img"> -->
<!-- 	<div class="aa-catg-head-banner-area"> -->
<!-- 		<div class="container"> -->
<!-- 			<div class="aa-catg-head-banner-content"> -->
<h2 class="text-center">Search Result</h2>
<!-- 				<ol class="breadcrumb"> -->
<!-- 					<li><a href="index.html">Home</a></li> -->
<!-- 					<li class="active">Women</li> -->
<!-- 				</ol> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </section> -->
<!-- / catg header banner section -->

<!-- product category -->
<section id="aa-product-category">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 ">

				<div class="aa-product-catg-content">
					<div class="aa-product-catg-head">
						<div class="aa-product-catg-head-left">
							<form action="" class="aa-sort-form">
								<label for="">Sort by</label> <select name="">
									<option value="1" selected="Default">Default</option>
									<option value="2">Name</option>
									<option value="3">Price</option>
									<option value="4">Date</option>
								</select>
							</form>
							<form action="" class="aa-show-form">
								<label for="">Show</label> <select name="">
									<option value="1" selected="12">12</option>
									<option value="2">24</option>
									<option value="3">36</option>
								</select>
							</form>
						</div>
						<div class="aa-product-catg-head-right">
							<a id="grid-catg" href="#"><span class="fa fa-th"></span></a> <a
								id="list-catg" href="#"><span class="fa fa-list"></span></a>
						</div>
					</div>
					<div class="aa-product-catg-body">
						<ul class="aa-product-catg">
							<!-- start single product item -->
							<c:forEach items="${products }" var="product">
								<li>
									<figure>
										<a class="aa-product-img" href="#"><img
											src="${product.getImage().getUrl()}" alt="polo shirt img"></a>
										<a class="aa-add-card-btn" href="javascript:void(0)" onclick="addCart(${product.productId})"><span
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

							<!-- start single product item -->

						</ul>
						<!-- quick view modal -->
						<c:forEach items="${products }" var="product">
							<div class="modal fade"
								id="quick-view-modal_${product.productId }" tabindex="-1"
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
																		data-lens-image="${product.getImage().getUrl()}">
																		<img src="i${product.getImage().getUrl()}"
																		class="simpleLens-big-image">
																	</a>
																</div>
															</div>

															<div class="simpleLens-thumbnails-container">
																<c:forEach items="${product.images}" var="img">

																	<a href="#" class="simpleLens-thumbnail-wrapper"
																		data-lens-image="${img.getUrl() }"
																		data-big-image="${img.getUrl() }"> <img
																		src="${img.getUrl() }">
																	</a>
																</c:forEach>

														
															</div>
														</div>
													</div>
												</div>
												<!-- Modal view content -->
												<div class="col-md-6 col-sm-6 col-xs-12">
													<div class="aa-product-view-content">
														<h3>${product.name }</h3>
														<div class="aa-price-block">
															<span class="aa-product-view-price">$
																${product.price }</span>

														</div>
														<p>${product.description}</p>

														<div class="aa-prod-quantity">
															<form action="" id="productForm_${product.productId}">
																<select name="prodcutSelect_${product.productId}" id="">
																<option value="1" selected="1">1</option>
																	<%
// 																	int count = product.currQty;
																	int count = 4;
																		for (int i = 2; i <  count; i += 1) {
																	%>
																	<option value="<%=i %>"><%=i %></option>
																	<%
																		}
																	%>
																	
																	
																	
																</select>
															</form>
															<p class="aa-prod-category">
																Category: <a href="#">${currentCat.name }</a>
															</p>
														</div>
														<div class="aa-prod-view-bottom">
															<a href="javascript:void(0);" onclick="addCart(${product.productId})" class="aa-add-to-cart-btn"><span
																class="fa fa-shopping-cart"></span>Add To Cart</a> 
																
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
						</c:forEach>
						<!-- / quick view modal -->
					</div>
					<div class="aa-product-catg-pagination">
						<nav>
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>


		</div>
	</div>
</section>
<style>
.simpleLens-thumbnail-wrapper>img {
	border: 1px solid #ddd;
	height: 80px;
	width: 80px;
}
</style>