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
<title>Go2Balkan - Tour</title>
<script type='text/javascript'
	src='<c:url value="/resources/js/temporarily.js" />'></script>
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
	href='<c:url value="/resources/css/flags/flags.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/bootstrap.min.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/font-awesome/css/font-awesome.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/home.css" />'>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/responsive.css" />'>
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


<script type="text/javascript"
	src='<c:url value="/resources/js/jssor.slider-25.0.7.min.js" />'></script>
<!-- <script type="text/javascript" src="//platform.linkedin.com/in.js">
    api_key: 86g3vbk6gy0y56
    authorize: true
</script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="37144251587-hautsiklk26uu7c3ao0s263vaebhs6ek.apps.googleusercontent.com">
 -->
<%@include file="../includes/test.jsp"%>
</head>
<body class="claro">
	<%@include file="../includes/header.jsp"%>
	<input type="hidden" id="tpp">
	<input type="hidden" id="tmc">
	<div id="loading">
		<div class="loader"></div>
	</div>
	<div id="__d17" class="_qq32 hide" data-slug="_k3cw">
		<div id="ta_wrapper">
			<div class="ta--main-contents">
				<div class="container ta-container">
					<div class="row ta-row">
						<div id="_tbsale17" class="col-md-8">
							<div class="tour-plans">
								<div class="ta-img">
									<img class="img-responsive" />
									<div class="ta-offer-box offer-box">
										<div class="ta-offer-box__header">
											<span class="ta-ft-temp right">19&deg;c</span>
											<span class="ta-featured-city text-upper"></span>
											<h2 class="ta-featured-country text-upper"></h2>
										</div>
										<div class="ta-offer-box__content">
											<span class="ta-ft-startfrom">Starting From</span>
											<span class="ta-ft-price"></span>
										</div>
									</div>
								</div>
								<!-- <div class="ta-featured-bottom box-shadow">
									<div class="riba-hotel ft-riba"></div>
									<a class="ft-hotel text-uppper"></a>
									<div class="riba-airport ft-riba"></div>
									<a class="ft-plane text-uppper">lorem ipsum riba</a>
									<div class="riba-coffee-cup ft-riba"></div>
									<a class="ft-breakfast text-uppper"></a>
								</div>
								 -->
								<div class="ta-tour-information">
									<h2 class="text-uppper">tour information</h2>
									<p></p>
								</div>
							</div>
							<div class="ta-information">
								<ul class="nav nav-tabs text-uppper">
									<li class="active">
										<a href="#tourPlan" data-toggle="tab">Tour Plan</a>
									</li>
									<li>
										<a href="#accommodationInfo" data-toggle="tab">Accommodation</a>
									</li>
									<li>
										<a href="#optionalServices" data-toggle="tab">Optional
											Services</a>
									</li>
									<li style="display: none;" id="travelLi">
										<a href="#travel" data-toggle="tab">Travel</a>
									</li>
									<li>
										<a href="#additionalInfo" data-toggle="tab">Additional
											Information</a>
									</li>
								</ul>
								<div
									class="tab-content ta-tab-content--background-color clearfix ta-tab-content">
									<div class="tab-pane active" id="tourPlan">
										<ul class="plans-list list-unstyled">
											<li class="ikili">
												<img class="img-responsive" src="https://goo.gl/vVudfs" />
												<div class="plan-info">
													<h4 class="text-uppper">Day 1</h4>
													<p>Amet turpis tristique, nec in aliquet dis amet,
														proin egestas in tempor, cras et dapibus.</p>
												</div>
											</li>
											<li class="ikili">
												<img class="img-responsive" src="https://goo.gl/vVudfs" />
												<div class="plan-info">
													<h4 class="text-uppper">Day 2</h4>
													<p>Amet turpis tristique, nec in aliquet dis amet,
														proin egestas in tempor, cras et dapibus.</p>
												</div>
											</li>
										</ul>
									</div>
									<div class="tab-pane" id="accommodationInfo">
										<div class="tab-pane_spinner accommodationLS">
											<i id="spinner" class="fa fa-spinner fa-spin searchspinner"></i>
										</div>
									</div>
									<div class="tab-pane" id="travel">
										<table id="travel_table" class="table">
											<thead>
												<tr>
													<th>by</th>
													<th>destination</th>
													<th>date</th>
													<th>departs</th>
													<th>arrives</th>
												</tr>
											</thead>
										</table>
									</div>
									<div class="tab-pane" id="optionalServices">
										<div class="inside-pane"></div>
									</div>
									<div class="tab-pane" id="additionalInfo">
										<div class="inside-pane">
											<p>Amet turpis tristique, nec in aliquet dis amet, proin
												egestas in tempor, cras et dapibus, lectus pellentesque enim
												odio elementum eu tincidunt diam a et. Dapibus sed cum,
												aliquam cras egestas enim elit in mattis? Scelerisque,
												ultrices mid! Lorem. Scelerisque? Pid cras, mattis vel,
												porta, quis! Porttitor turpis cras, odio ultricies
												parturient pulvinar tempor.</p>
											<p>eu turpis enim dapibus diam tristique cursus egestas
												quis phasellus montes! Parturient porta purus quis
												scelerisque? Vel proin, ac odio cras penatibus magnis non?
												Aliquam elementum, dis? Elementum ac.</p>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="col-md-4">
							<form id="form_tour" name="tourReservation" action="reservation"
								method="POST">
								<aside class="touraside">
									<div id="_tbsa92" class="tourPriceCalculationBox">
										<h3 class="inner-title">Booking</h3>
										<!-- <div class="row">
									<div class="col-md-6 col-sm-6">
										<div class="form-group">
											<label for="tour_select_date">
												<i class="fa fa-calendar" aria-hidden="true"></i>
												Select a date
											</label>
											<input class="date-pick form-control fc"
												id="tour_select_date" data-date-format="M d, D" type="text"
												placeholder="Jul 10, Mon">
										</div>
									</div>
									<div class="col-md-6 col-sm-6">
										<div class="form-group">
											<label for="tour_select_date">
												<i class="fa fa-clock-o" aria-hidden="true"></i>
												Select a time
											</label>
											<input class="date-pick form-control fc"
												id="tour_select_time" data-date-format="hh:mm" type="text"
												placeholder="12:00 AM">
										</div>
									</div>
								</div> -->
										<div class="row mb">
											<div class="col-md-6 col-sm-6">
												<div class="form-group">
													<label for="tour_adults"> Adults </label>
													<div class="numbers-row">
														<input type="number" min="1" max="20"
															class="qty2 form-control"
															name="tour_reservation_quantity" value="1" id="tour_qty1">
														<div data-qt="1" data-op="inc"
															class="inc button_inc btndes">
															<!-- <svg data-qt="1" data-op="inc" class="button_inc svgPlusPosition" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid meet" viewBox="0 0 8 8" width="8" height="8"><defs><path d="M5.08 0L5.08 0L5.09 0L5.09 0L5.1 0L5.1 0.01L5.11 0.01L5.11 0.01L5.12 0.01L5.12 0.01L5.13 0.01L5.13 0.02L5.14 0.02L5.14 0.02L5.15 0.03L5.15 0.03L5.15 0.03L5.16 0.04L5.16 0.04L5.16 0.04L5.17 0.05L5.17 0.05L5.17 0.05L5.18 0.06L5.18 0.06L5.18 0.07L5.19 0.07L5.19 0.08L5.19 0.08L5.19 0.09L5.19 0.09L5.19 0.1L5.2 0.1L5.2 0.11L5.2 0.11L5.2 0.12L5.2 0.12L5.2 0.13L5.2 0.13L5.2 2.8L7.87 2.8L7.87 2.8L7.88 2.8L7.88 2.8L7.89 2.8L7.89 2.8L7.9 2.8L7.9 2.81L7.91 2.81L7.91 2.81L7.92 2.81L7.92 2.81L7.93 2.81L7.93 2.82L7.94 2.82L7.94 2.82L7.95 2.83L7.95 2.83L7.95 2.83L7.96 2.84L7.96 2.84L7.96 2.84L7.97 2.85L7.97 2.85L7.97 2.85L7.98 2.86L7.98 2.86L7.98 2.87L7.99 2.87L7.99 2.88L7.99 2.88L7.99 2.89L7.99 2.89L7.99 2.9L8 2.9L8 2.91L8 2.91L8 2.92L8 2.92L8 2.93L8 2.93L8 5.07L8 5.07L8 5.08L8 5.08L8 5.09L8 5.09L8 5.1L7.99 5.1L7.99 5.11L7.99 5.11L7.99 5.12L7.99 5.12L7.99 5.13L7.98 5.13L7.98 5.14L7.98 5.14L7.97 5.15L7.97 5.15L7.97 5.15L7.96 5.16L7.96 5.16L7.96 5.16L7.95 5.17L7.95 5.17L7.95 5.17L7.94 5.18L7.94 5.18L7.93 5.18L7.93 5.19L7.92 5.19L7.92 5.19L7.91 5.19L7.91 5.19L7.9 5.19L7.9 5.2L7.89 5.2L7.89 5.2L7.88 5.2L7.88 5.2L7.87 5.2L7.87 5.2L5.2 5.2L5.2 7.87L5.2 7.87L5.2 7.88L5.2 7.88L5.2 7.89L5.2 7.89L5.2 7.9L5.19 7.9L5.19 7.91L5.19 7.91L5.19 7.92L5.19 7.92L5.19 7.93L5.18 7.93L5.18 7.94L5.18 7.94L5.17 7.95L5.17 7.95L5.17 7.95L5.16 7.96L5.16 7.96L5.16 7.96L5.15 7.97L5.15 7.97L5.15 7.97L5.14 7.98L5.14 7.98L5.13 7.98L5.13 7.99L5.12 7.99L5.12 7.99L5.11 7.99L5.11 7.99L5.1 7.99L5.1 8L5.09 8L5.09 8L5.08 8L5.08 8L5.07 8L5.07 8L2.93 8L2.93 8L2.92 8L2.92 8L2.91 8L2.91 8L2.9 8L2.9 7.99L2.89 7.99L2.89 7.99L2.88 7.99L2.88 7.99L2.87 7.99L2.87 7.98L2.86 7.98L2.86 7.98L2.85 7.97L2.85 7.97L2.85 7.97L2.84 7.96L2.84 7.96L2.84 7.96L2.83 7.95L2.83 7.95L2.83 7.95L2.82 7.94L2.82 7.94L2.82 7.93L2.81 7.93L2.81 7.92L2.81 7.92L2.81 7.91L2.81 7.91L2.81 7.9L2.8 7.9L2.8 7.89L2.8 7.89L2.8 7.88L2.8 7.88L2.8 7.87L2.8 7.87L2.8 5.2L0.13 5.2L0.13 5.2L0.12 5.2L0.12 5.2L0.11 5.2L0.11 5.2L0.1 5.2L0.1 5.19L0.09 5.19L0.09 5.19L0.08 5.19L0.08 5.19L0.07 5.19L0.07 5.18L0.06 5.18L0.06 5.18L0.05 5.17L0.05 5.17L0.05 5.17L0.04 5.16L0.04 5.16L0.04 5.16L0.03 5.15L0.03 5.15L0.03 5.15L0.02 5.14L0.02 5.14L0.02 5.13L0.01 5.13L0.01 5.12L0.01 5.12L0.01 5.11L0.01 5.11L0.01 5.1L0 5.1L0 5.09L0 5.09L0 5.08L0 5.08L0 5.07L0 5.07L0 2.93L0 2.93L0 2.92L0 2.92L0 2.91L0 2.91L0 2.9L0.01 2.9L0.01 2.89L0.01 2.89L0.01 2.88L0.01 2.88L0.01 2.87L0.02 2.87L0.02 2.86L0.02 2.86L0.03 2.85L0.03 2.85L0.03 2.85L0.04 2.84L0.04 2.84L0.04 2.84L0.05 2.83L0.05 2.83L0.05 2.83L0.06 2.82L0.06 2.82L0.07 2.82L0.07 2.81L0.08 2.81L0.08 2.81L0.09 2.81L0.09 2.81L0.1 2.81L0.1 2.8L0.11 2.8L0.11 2.8L0.12 2.8L0.12 2.8L0.13 2.8L0.13 2.8L2.8 2.8L2.8 0.13L2.8 0.13L2.8 0.12L2.8 0.12L2.8 0.11L2.8 0.11L2.8 0.1L2.81 0.1L2.81 0.09L2.81 0.09L2.81 0.08L2.81 0.08L2.81 0.07L2.82 0.07L2.82 0.06L2.82 0.06L2.83 0.05L2.83 0.05L2.83 0.05L2.84 0.04L2.84 0.04L2.84 0.04L2.85 0.03L2.85 0.03L2.85 0.03L2.86 0.02L2.86 0.02L2.87 0.02L2.87 0.01L2.88 0.01L2.88 0.01L2.89 0.01L2.89 0.01L2.9 0.01L2.9 0L2.91 0L2.91 0L2.92 0L2.92 0L2.93 0L2.93 0L5.07 0L5.07 0L5.08 0Z" id="a18YwaAehx"></path></defs><g><g><g><use xlink:href="#a18YwaAehx" opacity="1" fill="#cccccc" fill-opacity="1"></use></g></g></g></svg> -->
														</div>
														<div data-qt="1" data-op="dec"
															class="dec button_inc btndes"></div>
													</div>
												</div>
											</div>
											<!-- <div class="col-md-6 col-sm-6">
										<div class="form-group">
											<label for="tour_children"> Children </label>
											<div class="numbers-row">
												<input type="number" min="0" max="20"
													name="tour_reservation_quantity" class="qty2 form-control"
													value="0" id="tour_qty2">
												<div data-qt="2" data-op="inc" class="inc button_inc btndes">
													<svg data-qt="1" data-op="inc" class="button_inc svgPlusPosition" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid meet" viewBox="0 0 8 8" width="8" height="8"><defs><path d="M5.08 0L5.08 0L5.09 0L5.09 0L5.1 0L5.1 0.01L5.11 0.01L5.11 0.01L5.12 0.01L5.12 0.01L5.13 0.01L5.13 0.02L5.14 0.02L5.14 0.02L5.15 0.03L5.15 0.03L5.15 0.03L5.16 0.04L5.16 0.04L5.16 0.04L5.17 0.05L5.17 0.05L5.17 0.05L5.18 0.06L5.18 0.06L5.18 0.07L5.19 0.07L5.19 0.08L5.19 0.08L5.19 0.09L5.19 0.09L5.19 0.1L5.2 0.1L5.2 0.11L5.2 0.11L5.2 0.12L5.2 0.12L5.2 0.13L5.2 0.13L5.2 2.8L7.87 2.8L7.87 2.8L7.88 2.8L7.88 2.8L7.89 2.8L7.89 2.8L7.9 2.8L7.9 2.81L7.91 2.81L7.91 2.81L7.92 2.81L7.92 2.81L7.93 2.81L7.93 2.82L7.94 2.82L7.94 2.82L7.95 2.83L7.95 2.83L7.95 2.83L7.96 2.84L7.96 2.84L7.96 2.84L7.97 2.85L7.97 2.85L7.97 2.85L7.98 2.86L7.98 2.86L7.98 2.87L7.99 2.87L7.99 2.88L7.99 2.88L7.99 2.89L7.99 2.89L7.99 2.9L8 2.9L8 2.91L8 2.91L8 2.92L8 2.92L8 2.93L8 2.93L8 5.07L8 5.07L8 5.08L8 5.08L8 5.09L8 5.09L8 5.1L7.99 5.1L7.99 5.11L7.99 5.11L7.99 5.12L7.99 5.12L7.99 5.13L7.98 5.13L7.98 5.14L7.98 5.14L7.97 5.15L7.97 5.15L7.97 5.15L7.96 5.16L7.96 5.16L7.96 5.16L7.95 5.17L7.95 5.17L7.95 5.17L7.94 5.18L7.94 5.18L7.93 5.18L7.93 5.19L7.92 5.19L7.92 5.19L7.91 5.19L7.91 5.19L7.9 5.19L7.9 5.2L7.89 5.2L7.89 5.2L7.88 5.2L7.88 5.2L7.87 5.2L7.87 5.2L5.2 5.2L5.2 7.87L5.2 7.87L5.2 7.88L5.2 7.88L5.2 7.89L5.2 7.89L5.2 7.9L5.19 7.9L5.19 7.91L5.19 7.91L5.19 7.92L5.19 7.92L5.19 7.93L5.18 7.93L5.18 7.94L5.18 7.94L5.17 7.95L5.17 7.95L5.17 7.95L5.16 7.96L5.16 7.96L5.16 7.96L5.15 7.97L5.15 7.97L5.15 7.97L5.14 7.98L5.14 7.98L5.13 7.98L5.13 7.99L5.12 7.99L5.12 7.99L5.11 7.99L5.11 7.99L5.1 7.99L5.1 8L5.09 8L5.09 8L5.08 8L5.08 8L5.07 8L5.07 8L2.93 8L2.93 8L2.92 8L2.92 8L2.91 8L2.91 8L2.9 8L2.9 7.99L2.89 7.99L2.89 7.99L2.88 7.99L2.88 7.99L2.87 7.99L2.87 7.98L2.86 7.98L2.86 7.98L2.85 7.97L2.85 7.97L2.85 7.97L2.84 7.96L2.84 7.96L2.84 7.96L2.83 7.95L2.83 7.95L2.83 7.95L2.82 7.94L2.82 7.94L2.82 7.93L2.81 7.93L2.81 7.92L2.81 7.92L2.81 7.91L2.81 7.91L2.81 7.9L2.8 7.9L2.8 7.89L2.8 7.89L2.8 7.88L2.8 7.88L2.8 7.87L2.8 7.87L2.8 5.2L0.13 5.2L0.13 5.2L0.12 5.2L0.12 5.2L0.11 5.2L0.11 5.2L0.1 5.2L0.1 5.19L0.09 5.19L0.09 5.19L0.08 5.19L0.08 5.19L0.07 5.19L0.07 5.18L0.06 5.18L0.06 5.18L0.05 5.17L0.05 5.17L0.05 5.17L0.04 5.16L0.04 5.16L0.04 5.16L0.03 5.15L0.03 5.15L0.03 5.15L0.02 5.14L0.02 5.14L0.02 5.13L0.01 5.13L0.01 5.12L0.01 5.12L0.01 5.11L0.01 5.11L0.01 5.1L0 5.1L0 5.09L0 5.09L0 5.08L0 5.08L0 5.07L0 5.07L0 2.93L0 2.93L0 2.92L0 2.92L0 2.91L0 2.91L0 2.9L0.01 2.9L0.01 2.89L0.01 2.89L0.01 2.88L0.01 2.88L0.01 2.87L0.02 2.87L0.02 2.86L0.02 2.86L0.03 2.85L0.03 2.85L0.03 2.85L0.04 2.84L0.04 2.84L0.04 2.84L0.05 2.83L0.05 2.83L0.05 2.83L0.06 2.82L0.06 2.82L0.07 2.82L0.07 2.81L0.08 2.81L0.08 2.81L0.09 2.81L0.09 2.81L0.1 2.81L0.1 2.8L0.11 2.8L0.11 2.8L0.12 2.8L0.12 2.8L0.13 2.8L0.13 2.8L2.8 2.8L2.8 0.13L2.8 0.13L2.8 0.12L2.8 0.12L2.8 0.11L2.8 0.11L2.8 0.1L2.81 0.1L2.81 0.09L2.81 0.09L2.81 0.08L2.81 0.08L2.81 0.07L2.82 0.07L2.82 0.06L2.82 0.06L2.83 0.05L2.83 0.05L2.83 0.05L2.84 0.04L2.84 0.04L2.84 0.04L2.85 0.03L2.85 0.03L2.85 0.03L2.86 0.02L2.86 0.02L2.87 0.02L2.87 0.01L2.88 0.01L2.88 0.01L2.89 0.01L2.89 0.01L2.9 0.01L2.9 0L2.91 0L2.91 0L2.92 0L2.92 0L2.93 0L2.93 0L5.07 0L5.07 0L5.08 0Z" id="a18YwaAehx"></path></defs><g><g><g><use xlink:href="#a18YwaAehx" opacity="1" fill="#cccccc" fill-opacity="1"></use></g></g></g></svg>
												</div>
												<div data-qt="2" data-op="dec" class="dec button_inc btndes"></div>
											</div>
										</div>
									</div> -->
										</div>
										<div class="table table-summary">
											<div class="table-row">
												<div class="table-col">Adults</div>
												<div id="qty1_table" class="table-col text-right"></div>
											</div>
											<div class="table-row">
												<div class="table-col">Tour Amount</div>
												<div class="table-col text-right">
													<span class="totalquantity-user">1</span>
													x&nbsp;
													<span class="ta_user-currency"></span>
													<span class="tour-table-price"></span>
												</div>
											</div>
											<div class="table-row accommodation-room-type-summary">
												<div class="table-col">Selected Room</div>
												<div class="table-col text-right room-selection">Not
													yet selected</div>
											</div>
											<div id="excursion-dyn" class="table-row excursions-summary">
												<div class="table-col pointer">Selected Excursions</div>
												<div id="excursion_table"
													class="table-col pointer underline text-right">0</div>
											</div>
											<div id="event-dyn" class="table-row events-summary">
												<div class="table-col pointer">Optional Selected
													Events</div>
												<div id="event_table"
													class="table-col pointer underline text-right">0</div>
											</div>
											<div class="table-row tour-reservation-total">
												<div class="table-col text-uppercase trt">total cost</div>
												<div class="table-col text-right trt">
													<span class="ta_user-currency trt"></span>
													<span class="ta_treservation-total trt"></span>
												</div>
											</div>
										</div>
										<input id="id" name="tourId" type="hidden" class="hidden"
											value="${customId}" />
										<input id="sExc" name="sExc" class="hidden" type="hidden">
										<input id="sEvt" name="sEvt" class="hidden" type="hidden">
										<input type="hidden" class="hidden" id="tart" name="tart">
										<div style="display: none;" class="alert alert-danger"></div>
										<input type="submit" class="btn-full tresb" value="BOOK NOW">
									</div>
								</aside>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="ej3"></div>
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
		src='<c:url value="/resources/js/tourAgency/fillingBlanks.js" />'></script>
</body>
</html>