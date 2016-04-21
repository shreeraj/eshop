<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="${pageContext.request.contextPath}" />
<c:if test="${empty coupon.remarks}">
	<spring:url value="addCoupon" var="actionUrl" />
</c:if>
<c:if test="${not empty coupon.remarks}">
	<spring:url value="/admin/editCoupon/${coupon.couponId }"
		var="actionUrl" />
</c:if>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
		<div class="col-md-6 col-md-offset-1">
			<c:if test="${empty coupon.remarks}">
				<h3>Add New Coupon</h3>
			</c:if>
			<c:if test="${not empty coupon.remarks}">
				<h3>Update Coupon</h3>
			</c:if>

			<form:form method="post" modelAttribute="coupon"
				action="${actionUrl}">
				<div class="form-group">
					<label class="control-label">Enter Amount</label>
					<form:input path="amount" type="text" class="form-control"/><br/>
					<label class="control-label">Remarks</label>
					<form:input path="remarks" type="text" class="form-control"/><br/>
					<label class="control-label">Voucher Used</label>
					<input  type="checkbox" name="flag"  />
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-md btn-primary">Submit</button>
				</div>
			</form:form>
		</div>
	</div>
</div>