<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-2"%>
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
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/jquery-ui.css" />'>
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
<%@include file="includes/test.jsp"%>
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

<script type='text/javascript'
	src='<c:url value="/resources/js/jquery-1.12.1-min.js" />'></script>
<script type='text/javascript'
	src='<c:url value="/resources/js/jquery-ui-1.12.1.js" />'></script>

<script type="text/javascript"
	src='<c:url value="/resources/js/dojo-release-1.10.0/dojo/dojo.js" />'
	djConfig="parseOnLoad: true, usePlainJson: true, isDebug: false, async: false"></script>

<script type="text/javascript"
	src='<c:url value="/resources/js/search/x.js" />'></script>
<script type="text/javascript"
	src='<c:url value="/resources/js/search/search-dojo.js" />'></script>
<!-- <script type="text/javascript" src="//platform.linkedin.com/in.js">
    api_key: 86g3vbk6gy0y56
    authorize: true
</script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="37144251587-hautsiklk26uu7c3ao0s263vaebhs6ek.apps.googleusercontent.com">
 -->
</head>
<body class="claro">
	<%@include file="includes/header.jsp"%>
	<input id="keyword" name="keyword" type="hidden" value="${keyword}" />
	<input id="category" name="category" type="hidden" value="${category}" />
	<div id="__d17" class="container _rf31 search-page-body _qq32"
		data-slug="_k3cw">
		<div id="layout" class="search-layout">
			<div id="left" class="search-left">
				<%@include file="includes/left-searchbar.jsp"%>
				<%@include file="includes/left-filterbar-acc.jsp"%>
			</div>
			<div id="right" class="search-right">
				<div class="right-content">
					<div class="right-content-header">
						<h3>
							<span id="keyword">${keyword}</span>
							:
							<span id="numOfLoop"></span>
						</h3>
						<h6>
							Looking for something else? See
							<a href="#">Restaurants</a>
							,
							<a href="#">Events</a>
							or
							<a href="#">Tours</a>
							regarding your search: ${keyword }
						</h6>
						<!--Links will be selected according to search part.
                    if user searches for restaurants, it'll show accommodations,events,tours-->
						<div class="search-sorting">
							<table class="sorting-bar">
								<tbody>
									<tr>
										<td class="sorting-label">Sort by:</td>
										<td class="sorting-item recommended selected">Recommended</td>
										<td class="sorting-item sortby-star">
											<div class="btn-group dropdown">
												<button class="btn dropdown-toggle" type="button"
													id="dd-sortby-star" data-toggle="dropdown"
													aria-haspopup="true" aria-expanded="true">
													Stars
													<span class="caret"></span>
												</button>
												<ul style="left: 400px; margin-top: 2px;"
													class="dropdown-menu party discoStar"
													aria-labelledby="dd-sortby-price">
													<li style="text-align: center;">
														<a class="sortby-star-cchanger" href="#">Stars (5..1)</a>
													</li>
													<li role="separator" class="divider"></li>
													<li style="text-align: center;">
														<a class="sortby-star-cchanger" href="#">Stars (1..5)</a>
													</li>
												</ul>
											</div>
										</td>
											<td class="sorting-item sortby-price">
											<div class="btn-group dropdown">
												<button class="btn dropdown-toggle" type="button"
													id="dd-sortby-price" data-toggle="dropdown"
													aria-haspopup="true" aria-expanded="true">
													Price
													<span class="caret"></span>
												</button>
												<ul style="margin-left: 600px; margin-top: 2px;"
													class="dropdown-menu party disco"
													aria-labelledby="dd-sortby-price">
													<li>
														<a class="sortby-price-cchanger" href="#">Price, high
															to low</a>
													</li>
													<li role="separator" class="divider"></li>
													<li>
														<a class="sortby-price-cchanger" href="#">Price, low
															to high</a>
													</li>
												</ul>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div id="search_list">
						<i id="spinner" class="fa fa-spinner fa-spin searchspinner"></i>
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
</html>