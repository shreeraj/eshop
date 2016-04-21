<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="right_col" role="main">

	<!-- top tiles -->
	<div class="row tile_count" style="min-height: 700px;">
		<h1>All Images</h1>
		<table class="table table-responsive table-bordered">
			
			<tbody>
				<c:forEach var="img" items="${images}">
					<tr>
						<td><img src="${img.getUrl()}" width="200" height="200"/></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</div>