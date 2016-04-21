<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="col-md-3 left_col">
	<div class="left_col scroll-view">

		<div class="navbar nav_title" style="border: 0;">
			<a href="index.html" class="site_title"><i class="fa fa-paw"></i>
				<span>ESHOP</span></a>
		</div>
		<div class="clearfix"></div>

		<!-- menu prile quick info -->
		<div class="profile">
			<div class="profile_pic">
				<img src="${context}/eshop/resources/images/img.jpg" alt="..."
					class="img-circle profile_img">
			</div>
			<div class="profile_info">
				<span>Welcome,</span>
				<h2>John Doe</h2>
			</div>
		</div>
		<!-- /menu prile quick info -->

		<br />

		<!-- sidebar menu -->
		<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

			<div class="menu_section">
				<h3>General</h3>
				<ul class="nav side-menu">
					<li><a href="/eshop/admin"><i class="fa fa-home"></i> Home
					</a></li>
					<li><a><i class="fa fa-leaf"></i>Categories <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="${context}/eshop/admin/category">All
									Categories</a></li>
							<li><a href="${context }/eshop/admin/addCategory">Add
									Category</a></li>

						</ul></li>

					<li><a><i class="fa fa-book"></i>Product <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="${context}/eshop/admin/product">All
									Products</a></li>
							<li><a href="${context }/eshop/admin/addProduct">Add
									Product</a></li>

						</ul></li>
					<li><a><i class="fa fa-book"></i>Slider <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="${context}/eshop/admin/slider">All Sliders</a></li>
							<li><a href="${context }/eshop/admin/addSlider">Add
									Slider</a></li>

						</ul></li>
					<!-- 					<li><a><i class="fa fa-book"></i>Inject Order Data <span -->
					<!-- 							class="fa fa-chevron-down"></span></a> -->
					<!-- 						<ul class="nav child_menu" style="display: none"> -->
					<%-- 							<li><a href="${context}/eshop/admin/order">All Orders</a></li> --%>
					<%-- 							<li><a href="${context}/eshop/admin/injectData">Inject --%>
					<!-- 									Order Data</a></li> -->
					<!-- 						</ul></li> -->
					<li><a><i class="fa fa-book"></i>Coupon <span
							class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="${context}/eshop/admin/coupon">All Coupons</a></li>
							<li><a href="${context }/eshop/admin/addCoupon">Add
									Coupon</a></li>

						</ul></li>
					<li><a href="${context}/eshop/admin/order"><i
							class="fa fa-shopping-cart"></i> Orders </a></li>
					<li><a href="${context}/eshop/admin/siteSetting"><i
							class="fa fa-cogs"></i> Site Setting </a></li>
				</ul>
			</div>


		</div>
		<!-- /sidebar menu -->


		<!-- /menu footer buttons -->
	</div>
</div>

<!-- top navigation -->
<div class="top_nav">

	<div class="nav_menu">
		<nav class="" role="navigation">
			<div class="nav toggle">
				<a id="menu_toggle"><i class="fa fa-bars"></i></a>
			</div>

			<ul class="nav navbar-nav navbar-right">
				<li class=""><a href="javascript:;"
					class="user-profile dropdown-toggle" data-toggle="dropdown"
					aria-expanded="false"> <img
						src="${context}/eshop/resources/images/img.jpg" alt="">John
						Doe <span class=" fa fa-angle-down"></span>
				</a>
					<ul
						class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
						<!-- 									<li><a href="javascript:;"> Profile</a></li> -->
						<!-- 									<li><a href="javascript:;"> <span -->
						<!-- 											class="badge bg-red pull-right">50%</span> <span>Settings</span> -->
						<!-- 									</a></li> -->
						<!-- 									<li><a href="javascript:;">Help</a></li> -->
						<li><a href="javascript:void(0);" onclick="logout()"><i
								class="fa fa-sign-out pull-right"></i> Log Out</a></li>
					</ul></li>
				<%@ taglib prefix="form"
					uri="http://www.springframework.org/tags/form"%>
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
				<form action="${logoutUrl}" method="post" id="logoutForm">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
				<script>
					function logout() {
						// 						alert("click");
						document.getElementById("logoutForm").submit();
					}
				</script>

				<!-- 							<li role="presentation" class="dropdown"><a -->
				<!-- 								href="javascript:;" class="dropdown-toggle info-number" -->
				<!-- 								data-toggle="dropdown" aria-expanded="false"> <i -->
				<!-- 									class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span> -->
				<!-- 							</a> -->
				<!-- 								<ul id="menu1" -->
				<!-- 									class="dropdown-menu list-unstyled msg_list animated fadeInDown" -->
				<!-- 									role="menu"> -->
				<!-- 									<li><a> <span class="image"> <img -->
				<%-- 									src="${context}/eshop/resources/images/img.jpg" --%>
				<!-- 									alt="Profile Image" /> -->
				<!-- 							</span> <span> <span>John Smith</span> <span class="time">3 -->
				<!-- 													mins ago</span> -->
				<!-- 										</span> <span class="message"> Film festivals used to be -->
				<!-- 												do-or-die moments for movie makers. They were where... </span> -->
				<!-- 									</a></li> -->
				<!-- 									<li><a> <span class="image"> <img -->
				<%-- 												src="${context}/eshop/resources/images/img.jpg" alt="Profile Image" /> --%>
				<!-- 										</span> <span> <span>John Smith</span> <span class="time">3 -->
				<!-- 													mins ago</span> -->
				<!-- 										</span> <span class="message"> Film festivals used to be -->
				<!-- 												do-or-die moments for movie makers. They were where... </span> -->
				<!-- 									</a></li> -->
				<!-- 									<li><a> <span class="image"> <img -->
				<%-- 												src="${context}/eshop/resources/images/img.jpg" alt="Profile Image" /> --%>
				<!-- 										</span> <span> <span>John Smith</span> <span class="time">3 -->
				<!-- 													mins ago</span> -->
				<!-- 										</span> <span class="message"> Film festivals used to be -->
				<!-- 												do-or-die moments for movie makers. They were where... </span> -->
				<!-- 									</a></li> -->
				<!-- 									<li><a> <span class="image"> <img -->
				<%-- 												src="${context}/eshop/resources/images/img.jpg" alt="Profile Image" /> --%>
				<!-- 										</span> <span> <span>John Smith</span> <span class="time">3 -->
				<!-- 													mins ago</span> -->
				<!-- 										</span> <span class="message"> Film festivals used to be -->
				<!-- 												do-or-die moments for movie makers. They were where... </span> -->
				<!-- 									</a></li> -->
				<!-- 									<li> -->
				<!-- 										<div class="text-center"> -->
				<!-- 											<a href="inbox.html"> <strong>See All Alerts</strong> <i -->
				<!-- 												class="fa fa-angle-right"></i> -->
				<!-- 											</a> -->
				<!-- 										</div> -->
				<!-- 									</li> -->
				<!-- 								</ul></li> -->

			</ul>
		</nav>
	</div>

</div>
<!-- /top navigation -->