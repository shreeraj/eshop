<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<c:if test="${empty siteSetting.email}">
		<spring:url value="addSiteSetting" var="actionUrl" />
	</c:if>
	<c:if test="${not empty siteSetting.email}">
		<spring:url value="/admin/editSiteSetting/${siteSetting.siteId }" var="actionUrl" />
	</c:if>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
	<div class="col-md-6 col-md-offset-1">
	<c:if test="${empty siteSetting.email}">
		<h3>Add New Site Setting</h3>
	</c:if>
	<c:if test="${not empty siteSetting.email}">
		<h3>Update Site Setting</h3>
	</c:if>
		
		<form:form method="post" modelAttribute="siteSetting" action="${actionUrl}">
		<div class="form-group">
			<label class="control-label">Enter Phone No</label> 
			<form:input path="phoneNo" type="text" class="form-control"/><br/>
			<label class="control-label">Enter Email</label> 
			<form:input path="email" type="text" class="form-control"/><br/>
			<label class="control-label">Enter Address</label> 
			<form:input path="address" type="text" class="form-control"/><br/>
			<label class="control-label">Enter Facebook</label> 
			<form:input path="facebook" type="text" class="form-control"/><br/>
			<label class="control-label">Enter Twitter</label> 
			<form:input path="twitter" type="text" class="form-control" /><br/>
			<label class="control-label">Enter Google +</label> 
			<form:input path="gPlus" type="text" class="form-control"/><br/>
			<label class="control-label">Enter Youtube</label> 
			<form:input path="youtube" type="text" class="form-control"/><br/>
			<label class="control-label">Enter Status</label> 
			<form:select path="siteStatus">
				<form:option value="" label="...." />
				<form:options items="${statuss}" />
			</form:select>

		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-md btn-primary">Submit</button>
		</div>
		</form:form>
	</div>
	</div>
</div>