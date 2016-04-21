<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<c:set var="baseURL" value="${pageContext.servletContext.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Eshop Shop | Home</title>

<!-- Font awesome -->
<link
	href="<spring:url value='/resources/front/css/font-awesome.css'></spring:url>"
	rel="stylesheet">
<!-- Bootstrap -->
<link
	href="<spring:url value='/resources/front/css/bootstrap.css'></spring:url>"
	rel="stylesheet">
<!-- SmartMenus jQuery Bootstrap Addon CSS -->
<link
	href="<spring:url value='/resources/front/css/jquery.smartmenus.bootstrap.css'></spring:url>"
	rel="stylesheet">
<!-- Product view slider -->
<link rel="stylesheet" type="text/css"
	href="<spring:url value='/resources/front/css/jquery.simpleLens.css'></spring:url>">
<!-- slick slider -->
<link rel="stylesheet" type="text/css"
	href="<spring:url value='/resources/front/css/slick.css'></spring:url>">
<!-- price picker slider -->
<link rel="stylesheet" type="text/css"
	href="<spring:url value='/resources/front/css/nouislider.css'></spring:url>">
<!-- Theme color -->
<link id="switcher"
	href="<spring:url value='/resources/front/css/theme-color/default-theme.css'></spring:url>"
	rel="stylesheet">
<!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
<!-- Top Slider CSS -->
<link
	href="<spring:url value='/resources/front/css/sequence-theme.modern-slide-in.css'></spring:url>"
	rel="stylesheet" media="all">

<!-- Main style sheet -->
<link
	href="<spring:url value='/resources/front/css/style.css'></spring:url>"
	rel="stylesheet">

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>
	<!-- wpf loader Two -->
	<!-- 	<div id="wpf-loader-two"> -->
	<!-- 		<div class="wpf-loader-two-inner"> -->
	<!-- 			<span>Loading</span> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
	<!-- / wpf loader Two -->
	<!-- SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
	<!-- END SCROLL TOP BUTTON -->


	<!-- Start header section -->
	<header id="aa-header">

		<!-- 		<h1>I am siteeeeeeeeeeeeeeeeeeeeeeeeeeeeee</h1> -->
		<tiles:insertAttribute name="header" />
	</header>
	<!-- Body Page -->
	<div id="tileBody">
		<tiles:insertAttribute name="body" />
	</div>
	<!-- Footer Page -->
	<div id="tileFooter">
		<tiles:insertAttribute name="footer" />
	</div>
	<!-- / footer -->
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<!-- Login Modal -->
	<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4>Login or Register</h4>
					<form:form action="${baseURL}/login" modelAttribute="user"
						class="aa-login-form">
						<label for="">Username<span>*</span></label>
						<form:input path="userName" />
						<label for="">Password<span>*</span></label>
						<form:input path="password" />
						<button class="aa-browse-btn" type="submit">Login</button>
						<label for="rememberme" class="rememberme"><input
							type="checkbox" id="rememberme"> Remember me </label>
						<p class="aa-lost-password">
							<a href="#">Lost your password?</a>
						</p>
						<div class="aa-register-now">
							Don't have an account?<a href="register">Register now!</a>
						</div>
					</form:form>

				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<div class="modal fade" id="messageModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 id="modal_message">${message }</h4>


				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

	<!-- jQuery library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="<spring:url value='/resources/front/js/bootstrap.js'></spring:url>"></script>
	<!-- SmartMenus jQuery plugin -->
	<script type="text/javascript"
		src="<spring:url value='/resources/front/js/jquery.smartmenus.js'></spring:url>"></script>
	<!-- SmartMenus jQuery Bootstrap Addon -->
	<script type="text/javascript"
		src="<spring:url value='/resources/front/js/jquery.smartmenus.bootstrap.js'></spring:url>"></script>
	<!-- To Slider JS -->
	<script
		src="<spring:url value='/resources/front/js/sequence.js'></spring:url>"></script>
	<script
		src="<spring:url value='/resources/front/js/sequence-theme.modern-slide-in.js'></spring:url>"></script>
	<!-- Product view slider -->
	<script type="text/javascript"
		src="<spring:url value='/resources/front/js/jquery.simpleGallery.js'></spring:url>"></script>
	<script type="text/javascript"
		src="<spring:url value='/resources/front/js/jquery.simpleLens.js'></spring:url>"></script>
	<!-- slick slider -->
	<script type="text/javascript"
		src="<spring:url value='/resources/front/js/slick.js'></spring:url>"></script>
	<!-- Price picker slider -->
	<script type="text/javascript"
		src="<spring:url value='/resources/front/js/nouislider.js'></spring:url>"></script>
	<!-- Custom js -->

	<script type="text/javascript"
		src="<spring:url value='/resources/front/js/custom.js'></spring:url>"></script>
	<script type="text/javascript"
		src="<spring:url value='/resources/front/js/shree.js'></spring:url>"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var someText = '${message}';
			
			if (someText != "") {
				$('#messageModal').modal('show');
			}
		})
	</script>


</body>
</html>