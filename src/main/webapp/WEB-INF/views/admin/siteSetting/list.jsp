<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
		<h1>Site Setting</h1>
		<table class="table table-responsive table-bordered">
			<thead>
				<tr>
					<td>Site Status</td>
					<td>Phone</td>
					<td>Email</td>
					<td>Address</td>
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ss" items="${siteSettings}">
					<tr>
					<td>${ss.siteStatus }</td>
					<td>${ss.phoneNo }</td>
					<td>${ss.email }</td>
					<td>${ss.address }</td>
					<td><a href="${context}/eshop/admin/editSiteSetting/${ss.siteId}"><i class="fa fa-pencil"></i></a>
						<a href="${context }/eshop/admin/deleteSiteSetting/${ss.siteId}"><i class="fa fa-trash"></i></a>
					</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>