<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<c:if test="${empty category.name}">
	<spring:url value="addCategory" var="actionUrl" />
</c:if>
<c:if test="${not empty category.name}">
	<spring:url value="/admin/editCategory/${category.categoryId }"
		var="actionUrl" />
</c:if>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
		<div class="col-md-6 col-md-offset-1">
			<c:if test="${empty category.name}">
				<h3>Add New Category</h3>
			</c:if>
			<c:if test="${not empty category.name}">
				<h3>Update Category</h3>
			</c:if>

			<form:form method="post" modelAttribute="category"
				action="${actionUrl}">
				<div class="form-group">
					<label class="control-label">Enter Category Name</label>
					<form:input path="name" class="form-control" type="text" />
					<form:errors cssStyle="color:red;" path="name" />
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-md btn-primary">Submit</button>
				</div>
			</form:form>
		</div>
	</div>
</div>