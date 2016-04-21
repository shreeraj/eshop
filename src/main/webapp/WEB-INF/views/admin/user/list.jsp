<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
		<h1>All User</h1>
		<table class="table table-responsive table-bordered">
			<thead>
				<tr>
					<td>Name</td>
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${users}">
					<tr>
					<td>${user.userName }</td>
					<td><a href="${context}/eshop/admin/editUser/${user.id}"><i class="fa fa-pencil"></i></a>
						<a href="${context }/eshop/admin/deleteUser/${user.id}"><i class="fa fa-trash"></i></a>
					</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>