<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<c:if test="${empty slider.description}">
	<spring:url value="addSlider" var="actionUrl" />
</c:if>
<c:if test="${not empty slider.description}">
	<spring:url value="/admin/editSlider/${slider.sliderId }"
		var="actionUrl" />
</c:if>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
		<div class="col-md-6 col-md-offset-1">
			<c:if test="${empty slider.description}">
				<h3>Add New Slider</h3>
			</c:if>
			<c:if test="${not empty slider.description}">
				<h3>Update Slider</h3>
			</c:if>

			<form:form method="post" modelAttribute="slider" enctype="multipart/form-data" 
				action="${actionUrl}?${_csrf.parameterName}=${_csrf.token}">
				<div class="form-group">
					<label class="control-label">Enter Title</label>
					<form:input path="title" type="text" class="form-control" /><br/>
					<label class="control-label">Enter Slider Description</label>
					<form:input path="description" type="text"  class="form-control"/>
				</div>
				<div class="form-group">
					<label class="control-label">Image</label>
					<div class="input_fields_wrap">
						<input type="file" name="file" accept="image/*" class="form-control" />
					</div>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-md btn-primary">Submit</button>
				</div>
				
			</form:form>
		</div>
	</div>
</div>