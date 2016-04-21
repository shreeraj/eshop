<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="false"%>
<html>
<head>
<title>Admin Home</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<spring:url value="/resources/css/custom.css" var="customCss" />
<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss" />
<spring:url value="/resources/css/animate.min.css" var="animateCss" />
<spring:url value="/resources/fonts/css/font-awesome.min.css"
	var="fontAwesomeCss" />
<spring:url value="/resources/css/maps/jquery-jvectormap-2.0.3.css"
	var="jvectorCss" />
<spring:url value="/resources/css/icheck/flat/green.css" var="greenCss" />
<spring:url value="/resources/css/floatexamples.css" var="floatExample" />

<spring:url value="/resources/js/jquery.min.js" var="jQuery" />
<spring:url value="/resources/js/nprogress.js" var="nprogress" />

<link rel="text/css" href="${customCss}" />

<link
	href="<spring:url value='/resources/js/datatables/jquery.dataTables.min.css' />"
	rel="stylesheet" type="text/css" />
<link href="${bootstrapCss}" rel="stylesheet">

<link href="${fontAwesomeCss}" rel="stylesheet">
<link href="${animateCss }" rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="${customCss}" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${jvectorCss}" />
<link href="${greenCss}" rel="stylesheet" />
<link href="${floatExample }" rel="stylesheet" type="text/css" />

<script src="${jQuery }"></script>
<script src="${ nprogress}"></script>

<!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

<!-- -------------------JAVASCRIPTS----------- -->
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJS" />
<script src="${bootstrapJS}"></script>

<!-- gauge js -->
<%-- <spring:url value="/resources/js/gauge/gauge.min.js" var="gauzeJS" /> --%>
<%-- <spring:url value="/resources/js/gauge/gauge_demo.js" var="gauzeDemo" /> --%>
<%-- <script src="${gauzeJS}"></script> --%>
<%-- <script src="${gauzeDemo}"></script> --%>
<!-- bootstrap progress js -->
<spring:url
	value="/resources/js/progressbar/bootstrap-progressbar.min.js"
	var="bootstrapProgress" />
<script src="${bootstrapProgress}"></script>
<!-- icheck -->
<spring:url value="/resources/js/icheck/icheck.min.js" var="icheck" />
<script src="${icheck}"></script>
<!-- daterangepicker -->
<spring:url value="/resources/js/moment/moment.min.js" var="momentJS" />
<spring:url value="/resources/js/datepicker/daterangepicker.js"
	var="daterange" />
<script type="text/javascript" src="${momentJS}"></script>
<script type="text/javascript" src="${daterange }"></script>
<!-- Datatables-->
<script src="<spring:url value='/resources/js/datatables/jquery.dataTables.min.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/dataTables.bootstrap.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/dataTables.buttons.min.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/buttons.bootstrap.min.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/jszip.min.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/pdfmake.min.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/vfs_fonts.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/buttons.html5.min.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/buttons.print.min.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/dataTables.fixedHeader.min.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/dataTables.keyTable.min.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/dataTables.responsive.min.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/responsive.bootstrap.min.js' />"></script>
<script src="<spring:url value='/resources/js/datatables/dataTables.scroller.min.js' />"></script>
<!-- chart js -->
<spring:url value="/resources/js/chartjs/chart.min.js" var="chart" />
<script src="${chart}"></script>
<spring:url value="/resources/js/custom.js" var="customjs" />
<script src="${customjs }"></script>

<spring:url value="/resources/js/notify/pnotify.core.js" var="notJs" />
<script src="${notJs }"></script>

<spring:url value="/resources/js/shree.js" var="shreejs" />
<script src="${shreejs }"></script>

<c:set var="context" value="${pageContext.request.contextPath}" />
<c:if test="${not empty var1}">
    var1 is NOT empty or null.
</c:if>
<script type="text/javascript">
	$(document).ready(function() {
		var someText = '${message}';
		
		if (someText != "") {
			new PNotify({
				title : someText,
				text : '${message}',
				type : 'success'
			});
		}
	})
</script>
</head>

<body class="nav-md">

	<div class="container body">


		<div class="main_container">