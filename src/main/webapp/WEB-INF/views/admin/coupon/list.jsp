<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
		<h1>All Coupons</h1>
		<table id="datatable" class="table table-responsive table-bordered datatable">
			<thead>
				<tr>
					<td>Id</td>
					<td>Amount</td>
					<td>Remarks</td>
					<td>Flag</td>
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="coupon" items="${coupons}">
					<tr>
					<td>${coupon.couponId }</td>
					<td>${coupon.amount }</td>
					<td>${coupon.remarks }</td>
					<td>${coupon.flag }</td>
					<td><a href="${context}/eshop/admin/editCoupon/${coupon.couponId}"><i class="fa fa-pencil"></i></a>
						<a href="${context }/eshop/admin/deleteCoupon/${coupon.couponId}"><i class="fa fa-trash"></i></a>
					</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>