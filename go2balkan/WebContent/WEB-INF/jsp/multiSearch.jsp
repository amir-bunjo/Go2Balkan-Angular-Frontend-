<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-2"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":8080";
	String basePathServices = request.getScheme() + "://" + request.getServerName() + ":8082";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="shortcut icon" href="./resources/pix/favicon.ico"
	type="image/x-icon" />
<title>go2Balkan</title>
<noscript>
	<style>
body *, .header { /*hides all elements inside the body*/
	display: none;
}

h1 {
	/* even if this h1 is inside head tags it will be first hidden, so we have to display it again after all body elements are hidden*/
	display: block;
}
</style>
	<h1>JavaScript is not enabled, please check your browser settings.</h1>
</noscript>
<script type='text/javascript'
		src='<c:url value="/resources/js/temporarily.js" />'></script>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/flags/flags.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/bootstrap.min.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/font-awesome/css/font-awesome.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/home.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/customSearch.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/riba/riba.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/alican/alican.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/jquery-ui.css" />'>
<%@include file="includes/test.jsp"%>
<script type='text/javascript'
	src='<c:url value="/resources/js/jquery-1.12.1-min.js" />'></script>
<script type='text/javascript'
	src='<c:url value="/resources/js/jquery-ui-1.12.1.js" />'></script>

<script type="text/javascript"
	src='<c:url value="/resources/js/dojo-release-1.10.0/dojo/dojo.js" />'
	djConfig="parseOnLoad: true, usePlainJson: true, isDebug: false, async: false"></script>



<!-- <script type="text/javascript" src="//platform.linkedin.com/in.js">
    api_key: 86g3vbk6gy0y56
    authorize: true
</script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="37144251587-hautsiklk26uu7c3ao0s263vaebhs6ek.apps.googleusercontent.com"> -->
</head>
<body>
	<%@include file="includes/header.jsp"%>
	<div id="loading">
		<div class="loader"></div>
	</div>
	<div id="__d17" class="_qq32 hide" data-slug="_k3cw">
		<input id="keyword" name="keyword" type="hidden" value="${keyword}" />
		<input id="checkin" name="checkin" type="hidden" value="${checkin}" />
		<input id="checkout" name="checkout" type="hidden" value="${checkout}" />

		<div id="constraint" class="container">
			<div id="constraint_container">
				<div class="list-multi-search list-multi-search-width-container">
					<div class="list-multi-search__wrapper">
						<div id="pw">
							<div class="search-title"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="includes/myProfile.jsp"%>
	<%@include file="includes/login-modal.jsp"%>
	<%@include file="includes/footer.jsp"%>
	<script type="text/javascript"
		src='<c:url value="/resources/js/bootstrap.min.js" />'></script>
	<script type='text/javascript'
		src='<c:url value="/resources/js/oauth.js" />'></script>
	<script type='text/javascript'
		src='<c:url value="/resources/js/main.js" />'></script>
</body>