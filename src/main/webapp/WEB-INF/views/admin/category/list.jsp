<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
		<h1>All Categories</h1>
		<table id="datatable" class="table table-responsive table-bordered datatable">
			<thead>
				<tr>
					<td>Name</td>
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="category" items="${categories}">
					<tr>
					<td>${category.name }</td>
					<td><a href="${context}/eshop/admin/editCategory/${category.categoryId}"><i class="fa fa-pencil"></i></a>
						<a href="${context }/eshop/admin/deleteCategory/${category.categoryId}"><i class="fa fa-trash"></i></a>
					</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>