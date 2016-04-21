<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
		<h1>All Slider</h1>
		<table class="table table-responsive table-bordered datatable">
			<thead>
				<tr>
					<td>Image</td>
					<td>Title</td>
					<td>Description</td>
					<td>Actions</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="slider" items="${sliders}">
					<tr>
					<td><img src="${slider.getUrl()}" width="200" height="200"/></td>
					<td>${slider.title }</td>
					<td>${slider.description }</td>
					<td><a href="${context}/eshop/admin/editSlider/${slider.sliderId}"><i class="fa fa-pencil"></i></a>
						<a href="${context }/eshop/admin/deleteSlider/${slider.sliderId}"><i class="fa fa-trash"></i></a>
					</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>