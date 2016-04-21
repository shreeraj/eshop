<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
		<h1>Order List</h1>
		<table id="datatable" class="table table-responsive table-bordered datatable">
			<thead>
				<tr>
					<td>Order ID</td>
					<td>Order Line ID</td>
					<td>Product ID</td>
					<td>Product Image</td>
					<td>Product Name</td>
					<td>Qty</td>
					<td>Price</td>
					<td>Sub Total</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="orderLine" items="${orderLists}">
					<tr>
					<td>${orderLine.order.orderId }</td>
					<td>${orderLine.id }</td>
					<td>${orderLine.product.productId }</td>
					<td><img src="${image[orderLine.product].getUrl()}" width="50" height="50" /></td>
					<td>${orderLine.product.name }</td>
					<td>${orderLine.quantity }</td>
					<td>${orderLine.price }</td>
					<td>${orderLine.subTotal }</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>