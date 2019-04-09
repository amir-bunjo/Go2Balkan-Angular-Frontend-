<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-2"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
	String basePathServices = request.getScheme() + "://" + request.getServerName() + ":8082";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="shortcut icon"
	href='<c:url value="/resources/pix/favicon.ico"/>' type="image/x-icon" />
<title>Go2Balkan</title>
<script type='text/javascript'
		src='<c:url value="resources/js/temporarily.js" />'></script>
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
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/jquery-ui.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/js/dojo-release-1.10.0/dojo/resources/dojo.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/js/dojo-release-1.10.0/dijit/themes/claro/claro.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/js/dojo-release-1.10.0/dojox/grid/resources/claroGrid.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/js/dojo-release-1.10.0/dojox/grid/enhanced/resources/claro/EnhancedGrid.css"/>'>
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
	href='<c:url value="/resources/css/creditcard/creditcard.css" />'>

<script type='text/javascript'
		src='<c:url value="/resources/js/jquery-1.12.1-min.js" />'></script>
	<script type='text/javascript'
		src='<c:url value="/resources/js/jquery-ui-1.12.1.js" />'></script>

<script type="text/javascript"
	src='<c:url value="/resources/js/dojo-release-1.10.0/dojo/dojo.js" />'
	djConfig="parseOnLoad: true, usePlainJson: true, isDebug: false, async: false"></script>
<script type="text/javascript"
	src='<c:url value="/resources/js/search/x.js" />'></script>



<!-- <script type="text/javascript" src="//platform.linkedin.com/in.js">
    api_key: 86g3vbk6gy0y56
    authorize: true
</script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="37144251587-hautsiklk26uu7c3ao0s263vaebhs6ek.apps.googleusercontent.com"> -->
<%@include file="../includes/test.jsp"%>
</head>
<body class="claro">
	<%@include file="../includes/header.jsp"%>
	<input type="hidden" id="keyword" value="${keyword}" />
	<input type="hidden" id="tourType" value="${tourType}" />
	<input type="hidden" value="${checkin}" />
	<input type="hidden" value="${checkout}" />
	<div id="__d17" class="container _tsrx2 search-page-body _qq32"
		data-slug="_k3cw">

		<div id="layout" class="search-layout">
			<div id="left" class="search-left ta-sl">
				<%@include file="../includes/left-searchbar-tours.jsp"%>
			</div>
			<div id="right" class="search-right">
				<div class="right-content">
					<div class="right-content-header">
						<h3>
							<span id="s_keyword"></span>
							<span id="numOfLoop"></span>
						</h3>
					</div>
					<div class="right-content-body">
						<div id="ta_search_list">
							<i id="spinner" class="fa fa-spinner fa-spin searchspinner"></i>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>

	<%@include file="../includes/myProfile.jsp"%>
	<%@include file="../includes/login-modal.jsp"%>
	<%@include file="../includes/footer.jsp"%>
	<script type="text/javascript"
		src='<c:url value="/resources/js/bootstrap.min.js" />'></script>
	<script type='text/javascript'
		src='<c:url value="/resources/js/oauth.js" />'></script>
	<script type='text/javascript'
		src='<c:url value="/resources/js/main.js" />'></script>
	<script type='text/javascript'
		src='<c:url value="/resources/js/tourAgency/search-dojo.js" />'></script>
</body>