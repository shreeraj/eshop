<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath}" />

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var max_fields = 10; //maximum input boxes allowed
						var wrapper = $(".input_fields_wrap"); //Fields wrapper
						var add_button = $(".add_field_button"); //Add button ID

						var x = 1; //initlal text box count
						$(add_button)
								.click(
										function(e) { //on add input button click
											e.preventDefault();
											if (x < max_fields) { //max input box allowed
												x++; //text box increment
												$(wrapper)
														.append(
																'<div><input type="file" name="file" class="form-control" accept="image/*" /><a href="#" class="remove_field btn btn-danger">Remove</a></div>'); //add input box
											}
										});

						$(wrapper).on("click", ".remove_field", function(e) { //user click on remove text
							e.preventDefault();
							$(this).parent('div').remove();
							x--;
						})
					});
</script>

<c:if test="${empty product.name}">
	<spring:url value="addProduct" var="actionUrl" />
</c:if>
<c:if test="${not empty product.name}">
	<spring:url value="/admin/editProduct/${product.productId }"
		var="actionUrl" />
</c:if>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
		<div class="col-md-6 col-md-offset-1">
			<c:if test="${empty product.name}">
				<h3>Add New Product</h3>
			</c:if>
			<c:if test="${not empty product.name}">
				<h3>Update Product</h3>
			</c:if>

			<form:form method="post" modelAttribute="product"
				enctype="multipart/form-data" action="${actionUrl}?${_csrf.parameterName}=${_csrf.token}">
				<div class="form-group">
					<label class="control-label">Category</label> <select name="cat" class="form-control col-md-12">
						<c:if test="${empty product.name}">
							<option value="" />
						</c:if>
						<c:set var="currentCat" value="${currentCat.categoryId }" />
						<c:forEach var="item" items="${categories}">
							<c:choose>
								<c:when test="${item.categoryId == currentCat}">
									<option value="${item.categoryId}" selected>${item.name}</option>
								</c:when>
								<c:otherwise>
									<option value="${item.categoryId}">${item.name}</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label class="control-label">Name</label>
					<form:input path="name" class="form-control" type="text" />
				</div>
				<div class="form-group">
					<label class="control-label">Description</label>
					<form:textarea path="description" class="form-control" rows="5" cols="30" />
				</div>
				<!-- 				<div class="form-group"> -->
				<!-- 					<label class="control-label">Image</label> -->
				<!-- 					<input type="file" name="file[]" id="file"></input> -->
				<!-- 				</div> -->
				<div class="form-group">
					<label class="control-label">Image</label>
					<div class="input_fields_wrap">
						<input type="file" class="form-control" name="file" accept="image/*" />
					</div>
				</div>
				<div>
					<button class="add_field_button">Add More Images</button>
				</div>

				<div class="form-group">
					<label class="control-label">Unit Price</label>
					<form:input class="form-control" path="price" type="text" />
				</div>
				<div class="form-group">
					<label class="control-label">Quantity</label>
					<form:input class="form-control" path="currQty" type="text" />
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-md btn-primary">Submit</button>
				</div>
			</form:form>
		</div>
	</div>
</div>