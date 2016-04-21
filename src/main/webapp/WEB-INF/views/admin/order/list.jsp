<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
		<h1>All Orders</h1>
		<table id="datatable" class="table table-responsive table-bordered datatable">
			<thead>
				<tr>
					<td>Order ID</td>
					<td>Order Date</td>
					<td>Total Qty</td>
					<td>Total Amount</td>
					<td>Discount</td>
					<td>Nett Amount</td>
					<td>User</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="order" items="${orders}">
					<tr>
					<td>${order.orderId }</td>
					<td>${order.orderDate }</td>
					<td><a href="${context}/eshop/admin/viewOrder/${order.orderId}">${order.totalQty } (View)</a></td>
					<td>${order.totalAmount }</td>
					<td>${order.discount }</td>
					<td>${order.nettAmount }</td>
					<td>${order.user.userName }</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>