<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<c:if test="${empty user.userName}">
		<spring:url value="addUser" var="actionUrl" />
	</c:if>
	<c:if test="${not empty user.userName}">
		<spring:url value="/admin/editUser/${user.id }" var="actionUrl" />
	</c:if>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
	<div class="col-md-6 col-md-offset-1">
	<c:if test="${empty user.userName}">
		<h3>Add New User</h3>
	</c:if>
	<c:if test="${not empty user.userName}">
		<h3>Update User</h3>
	</c:if>
		
		<form:form method="post" modelAttribute="user" action="${actionUrl}">
		<div class="form-group">
			<label class="control-label">Enter User Name</label> 
			<form:input path="userName" type="text" /><br/>
			<label class="control-label">Enter Password</label> 
			<form:input path="password" type="text" /><br/>
			<label class="control-label">Enter First Name</label> 
			<form:input path="firstName" type="text" /><br/>
			<label class="control-label">Enter Last Name</label> 
			<form:input path="lastName" type="text" /><br/>
			<label class="control-label">Enter Email</label> 
			<form:input path="email" type="text" /><br/>
			<label class="control-label">Enter Phone No</label> 
			<form:input path="phone" type="text" /><br/>
			<label class="control-label">Enter Street</label> 
			<form:input path="street" type="text" /><br/>
			<label class="control-label">Enter Zip No</label> 
			<form:input path="zip" type="text" /><br/>
			<label class="control-label">Enter City</label> 
			<form:input path="city" type="text" /><br/>
			<label class="control-label">Enter State</label> 
			<form:input path="state" type="text" /><br/>
			<label class="control-label">Enter Country</label> 
			<form:input path="country" type="text" />
			<label class="control-label">Enter Role</label> 
			<form:select path="role">
				<form:option value="" label="...." />
				<form:options items="${roles}" />
			</form:select>

		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-md btn-primary">Submit</button>
		</div>
		</form:form>
	</div>
	</div>
</div>