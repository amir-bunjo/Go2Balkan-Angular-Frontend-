<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-2"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>

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
<title>Go2Balkan - Homepage</title>
<!-- <meta name="google-signin-client_id"
	content="812064578292-sehpivgad91j6iv7lnufpju6k33me3l8.apps.googleusercontent.com"> -->
<link rel="shortcut icon"
	href='<c:url value="/resources/pix/favicon.ico"/>' type="image/x-icon" />
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
	src='<c:url value="resources/js/temporarily.js" />'></script>
<%@include file="includes/test.jsp"%>
<style>
.ui-autocomplete {
	max-height: 217px;
	overflow-y: auto;
	overflow-x: hidden;
}

* html .ui-autocomplete {
	height: 217px;
}
</style>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/jquery-ui.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/js/dojo-release-1.10.0/dijit/themes/claro/claro.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/flags/flags.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/bootstrap.min.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/font-awesome/css/font-awesome.min.css"/>'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/home.css"/>'>
<!-- <script type="text/javascript" src="//platform.linkedin.com/in.js">
    api_key: 86g3vbk6gy0y56
    authorize: true
</script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="37144251587-hautsiklk26uu7c3ao0s263vaebhs6ek.apps.googleusercontent.com"> -->
</head>
<body class="claro">
<!--[if IE 8]><html class="ie ie8"> <![endif]-->
<!--[if IE 9]><html class="ie ie9"> <![endif]-->
	<%@include file="includes/header.jsp"%>
	<div id="__d17" class="_qq32" data-slug="_k3cw">
	<!--[if lte IE 8]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a>.</p>
	<![endif]-->
		<%@include file="includes/search-with-background.jsp"%>
		<div class="container content">
			<div class="col-md-4 content-body">
				<!--350x221 picture-->
				<div class="content-body-div"
					style="background-image: url(./resources/pix/Vrelo_Bosne.png)">
					<h1>
						<span class="text-border">Go2Bosnia</span>
					</h1>
					<div class="btn-group-vertical">
						<button type="submit"
							data-url="<%=basePath%>/search?qkw=Bosnia and Herzegovina&cat=country"
							class="btn hp-c-acc btn-country">Accommodation</button>
						<button type="button" class="btn btn-country">Restaurants</button>
						<button type="button" class="btn btn-country">Events</button>
						<button type="submit" data-url="<%=basePath%>/tasearch?ta_qkw=bih"
							class="btn hp-c-ta btn-country">Tours</button>
					</div>
				</div>
			</div>
			<div class="col-md-4 content-body">
				<div class="content-body-div"
					style="background-image: url(./resources/pix/croatia.png)">
					<h1>
						<span class="text-border">Go2Croatia</span>
					</h1>
					<div class="btn-group-vertical">
						<button type="submit"
							data-url="<%=basePath%>/search?qkw=Croatia&cat=country"
							class="btn hp-c-acc btn-country">Accommodation</button>
						<button type="button" class="btn btn-country">Restaurants</button>
						<button type="button" class="btn btn-country">Events</button>
						<button type="submit"
							data-url="<%=basePath%>/tasearch?ta_qkw=croatia"
							class="btn hp-c-ta btn-country">Tours</button>
					</div>
				</div>
			</div>
			<div class="col-md-4 content-body">
				<div class="content-body-div"
					style="background-image: url(./resources/pix/greece.png)">
					<h1>
						<span class="text-border">Go2Greece</span>
					</h1>
					<div class="btn-group-vertical">
						<button type="submit"
							data-url="<%=basePath%>/search?qkw=Greece&cat=country"
							class="btn hp-c-acc btn-country">Accommodation</button>
						<button type="button" class="btn btn-country">Restaurants</button>
						<button type="button" class="btn btn-country">Events</button>
						<button type="submit"
							data-url="<%=basePath%>/tasearch?ta_qkw=greece"
							class="btn hp-c-ta btn-country">Tours</button>
					</div>
				</div>
			</div>
			<div class="col-md-4 content-body">
				<div class="content-body-div"
					style="background-image: url(./resources/pix/serbia.png)">
					<h1>
						<span class="text-border">Go2Serbia</span>
					</h1>
					<div class="btn-group-vertical">
						<button type="submit"
							data-url="<%=basePath%>/search?qkw=Serbia&cat=country"
							class="btn hp-c-acc btn-country">Accommodation</button>
						<button type="button" class="btn btn-country">Restaurants</button>
						<button type="button" class="btn btn-country">Events</button>
						<button type="submit"
							data-url="<%=basePath%>/tasearch?ta_qkw=serbia"
							class="btn hp-c-ta btn-country">Tours</button>
					</div>
				</div>
			</div>
			<div class="col-md-4 content-body">
				<div class="content-body-div"
					style="background-image: url(./resources/pix/bulgaria.png)">
					<h1>
						<span class="text-border">Go2Bulgaria</span>
					</h1>
					<div class="btn-group-vertical">
						<button type="submit"
							data-url="<%=basePath%>/search?qkw=Bulgaria&cat=country"
							class="btn hp-c-acc btn-country">Accommodation</button>
						<button type="button" class="btn btn-country">Restaurants</button>
						<button type="button" class="btn btn-country">Events</button>
						<button type="submit"
							data-url="<%=basePath%>/tasearch?ta_qkw=bulgaria"
							class="btn hp-c-ta btn-country">Tours</button>
					</div>
				</div>
			</div>
			<div class="col-md-4 content-body">
				<div class="content-body-div"
					style="background-image: url(./resources/pix/albania.png)">
					<h1>
						<span class="text-border">Go2Albania</span>
					</h1>
					<div class="btn-group-vertical">
						<button type="submit"
							data-url="<%=basePath%>/search?qkw=Albania&cat=country"
							class="btn hp-c-acc btn-country">Accommodation</button>
						<button type="button" class="btn btn-country">Restaurants</button>
						<button type="button" class="btn btn-country">Events</button>
						<button type="submit"
							data-url="<%=basePath%>/tasearch?ta_qkw=albania"
							class="btn hp-c-ta btn-country">Tours</button>
					</div>
				</div>
			</div>
			<div class="col-md-4 content-body">
				<div class="content-body-div"
					style="background-image: url(./resources/pix/kosovo.png)">
					<h1>
						<span class="text-border">Go2Kosovo</span>
					</h1>
					<div class="btn-group-vertical">
						<button type="submit"
							data-url="<%=basePath%>/search?qkw=Kosovo&cat=country"
							class="btn hp-c-acc btn-country">Accommodation</button>
						<button type="button" class="btn btn-country">Restaurants</button>
						<button type="button" class="btn btn-country">Events</button>
						<button type="submit"
							data-url="<%=basePath%>/tasearch?ta_qkw=kosovo"
							class="btn hp-c-ta btn-country">Tours</button>
					</div>
				</div>
			</div>
			<div class="col-md-4 content-body">
				<div class="content-body-div"
					style="background-image: url(./resources/pix/macedonia.png)">
					<h1>
						<span class="text-border">Go2Macedonia</span>
					</h1>
					<div class="btn-group-vertical">
						<button type="submit"
							data-url="<%=basePath%>/search?qkw=Macedonia&cat=country"
							class="btn hp-c-acc btn-country">Accommodation</button>
						<button type="button" class="btn btn-country">Restaurants</button>
						<button type="button" class="btn btn-country">Events</button>
						<button type="submit"
							data-url="<%=basePath%>/tasearch?ta_qkw=macedonia"
							class="btn hp-c-ta btn-country">Tours</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="includes/myProfile.jsp"%>
	<%@include file="includes/login-modal.jsp"%>
	<%@include file="includes/footer.jsp"%>
	<script type='text/javascript'
		src='<c:url value="resources/js/jquery-1.12.1-min.js" />'></script>
	<script type='text/javascript'
		src='<c:url value="resources/js/jquery-ui-1.12.1.js" />'></script>
	<script type='text/javascript'
		src='<c:url value="resources/js/bootstrap.min.js" />'></script>
	<script type="text/javascript"
		src='<c:url value="resources/js/dojo-release-1.10.0/dojo/dojo.js" />'
		djConfig="parseOnLoad: true, usePlainJson: true, isDebug: false, async: false"></script>
	<script type='text/javascript'
		src='<c:url value="resources/js/homepage/homepage.js" />'></script>
	<script type='text/javascript'
		src='<c:url value="resources/js/oauth.js" />'></script>
	<script type='text/javascript'
		src='<c:url value="resources/js/main.js" />'></script>
	<!-- <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script> -->
</body>
</html>