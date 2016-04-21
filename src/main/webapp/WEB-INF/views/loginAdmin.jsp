<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>eshop</title>

<!-- Bootstrap core CSS -->

<link
	href="<spring:url value='/resources/css/bootstrap.min.css'></spring:url>"
	rel="stylesheet">

<link
	href="<spring:url value='/resources/fonts/css/font-awesome.min.css'></spring:url>"
	rel="stylesheet">
<link
	href="<spring:url value='/resources/css/animate.min.css'></spring:url>"
	rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="<spring:url value='/resources/css/custom.css'></spring:url>"
	rel="stylesheet">
<link
	href="<spring:url value='/resources/css/icheck/flat/green.css'></spring:url>"
	rel="stylesheet">


<script
	src="<spring:url value='/resources/js/jquery.min.js'></spring:url>"></script>

<!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>

<body style="background: #F7F7F7;">

	<div class="">
		<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
			id="tologin"></a>

		<div id="wrapper">
			<div id="login" class="animate form">
				<section class="login_content">
					<c:if test="${not empty error}">
						<p class="text-danger">${error}</p>
					</c:if>
					<c:if test="${not empty msg}">
						<p class="text-info">${msg}</p>
					</c:if>
					<form method="post" action="<c:url value='/j_spring_security_check' />">
						<h1>eShop Admin Login</h1>
						<div>
							<input name="username" class="form-control" type="text" />
						</div>
						<div>
							<input name="password" class="form-control"
								type="password" />
						</div>
						<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
						<div>
							<button type="submit" class="btn btn-default submit">Log
								in</button>
							<!--               <a class="reset_pass" href="#">Lost your password?</a> -->
						</div>
						<div class="clearfix"></div>
						<div class="separator">

							<div class="clearfix"></div>
							<br />
							<div>
								<h1>
									<i class="fa fa-paw" style="font-size: 26px;"></i> eShop
								</h1>

								<p>©2015 All Rights Reserved.</p>
							</div>
						</div>

					</form>

					<!-- form -->
				</section>
				<!-- content -->
			</div>

		</div>
	</div>

</body>

</html>
