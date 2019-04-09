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
<link rel="shortcut icon"
	href='<c:url value="/resources/pix/favicon.ico"/>' type="image/x-icon" />
<title>go2Balkan</title>
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
<%@include file="includes/test.jsp"%>
</head>
<body class="claro">
	<input type="hidden" id="id" name="id" value="${customId }" />
	<input type="hidden" id="basePath" name="basePath"
		value="<%=basePath%>">
	<input type="hidden" id="fullPath" name="fullPath"
		value="<%=basePath %>/hotel/${customId}">
	<%@include file="includes/header.jsp"%>
	<div id="loading">
		<div class="loader"></div>
	</div>
	<!---->
	<div id="__d17" class="_qq32 hide" data-slug="_k3cw">
		<%@include file="includes/accommodationReservation.jsp"%>
		<!---->
		<div id="hotel_page_body" data-slug="_k3cw"
			class="container hotel-page-body _qq32">
			<div id="layout" class="hotel-page-layout">
				<div id="left" class="hotel-page-left">
					<div class="other-buttons">
						<div class="buttons-wrap">
							<span id="city_activities" class="buttons-text"></span>
							<ul id="city_activities_buttons" class="buttons">
							</ul>
						</div>
					</div>
					<%@include file="includes/left-searchbar.jsp"%>
				</div>
				<div id="right" class="hotel-page-right">
					<div class="hotel-navbar-wrapper hotel-navbar-bbottom">
						<div class="hotel-navbar">
							<a id="a_summary" href="#summary" class="hotel-navbar-a">Summary</a>
							<a id="a_availability" href="#availability"
								class="hotel-navbar-a">Available Rooms</a>
							<a id="a_facilities" href="#facilities" class="hotel-navbar-a">Facilities</a>
							<a id="a_rules" href="#rules" class="hotel-navbar-a">Rules</a>
							<a id="a_review" href="#review" class="hotel-navbar-a">See
								verified reviews</a>
						</div>
					</div>
					<div class="hotelpage-top">
						<h1 class="hname">
							<span class="hn"></span>
							<span class="hrating"> </span>
						</h1>
						<p class="haddress" id="showMap">
							<i id="mapMarker" style="display: none;" class="fa fa-map-marker"></i>
							<span class="fulladdress"></span>
						</p>
					</div>
					<div id="jssor_1"
						style="position: relative; margin: 0 auto; top: 15px; left: -31px; width: 800px; height: 456px; overflow: hidden; visibility: hidden; background-color: #24262e;">
						<!-- Loading Screen -->
						<div data-u="loading"
							style="position: absolute; top: 0px; left: 0px;">
							<div
								style="filter: alpha(opacity = 70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
							<div
								style="position: absolute; display: block; background: url('../resources/pix/loading.gif') no-repeat center center; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
						</div>
						<div data-u="slides" id="content"
							style="cursor: default; position: relative; top: 0px; left: 0px; width: 800px; height: 356px; overflow: hidden;">
						</div>
						<!-- Thumbnail Navigator -->
						<div data-u="thumbnavigator" class="jssort01"
							style="position: absolute; left: 0px; bottom: 0px; width: 800px; height: 100px;"
							data-autocenter="1">
							<!-- Thumbnail Item Skin Begin -->
							<div data-u="slides" style="cursor: default;">
								<div data-u="prototype" class="p">
									<div class="w">
										<div data-u="thumbnailtemplate" class="t"></div>
									</div>
									<div class="c"
										style="background: url('../resources/pix/t01.png') -800px -800px no-repeat;"></div>
								</div>
							</div>
							<!-- Thumbnail Item Skin End -->
						</div>
						<!-- Arrow Navigator -->
						<span data-u="arrowleft" class="jssora05l"
							style="background-image: url('../resources/pix/a17.png'); top: 158px; left: 8px; width: 40px; height: 40px;"></span>
						<span data-u="arrowright" class="jssora05r"
							style="background-image: url('../resources/pix/a17.png'); top: 158px; right: 8px; width: 40px; height: 40px;"></span>
					</div>
					<!-- <div class="photo-content">
					<div id="img-content">
						<div id="gallery">
							<div id="thumbs">
								<a href="#nogo">
									<img src="../resources/pix/hotel/1.jpg" alt="" />
								</a>
							</div>
						</div>
					</div>
				</div> -->
					<div class="hotel-description">
						<div id="summary">
							<p style="display: none;" class="hotel-description-subtitle">Summary</p>
							<span style="display: none;"
								class="hotel-description-summary-content"> Integer ante
								nisl, tincidunt vitae bibendum a, auctor nec purus. Nulla quis
								ante vitae ante eleifend varius ac ut purus. Maecenas nec
								sodales purus. In quis est sit amet lacus rhoncus bibendum ut
								vel enim. Nam at dolor nec nulla sagittis volutpat et vel nisi.
								Phasellus gravida ultricies enim, ac tincidunt ipsum mattis in.
								Proin dignissim velit nec lectus commodo rhoncus. Nam dolor
								quam, vulputate at fermentum eu, sodales non ex. Donec mollis
								nulla tempor elit vulputate, ut scelerisque nisl interdum. Morbi
								id eros id enim feugiat tincidunt vel quis massa. Mauris gravida
								eros ac nibh scelerisque interdum. Aenean rutrum tellus tellus,
								sed sollicitudin ipsum faucibus vel. Nullam diam sapien,
								fermentum a interdum eget, feugiat non quam. Quisque molestie
								lorem diam, sit amet feugiat lectus lobortis non. Morbi ac
								dapibus dolor. </span>
						</div>
						<div id="language-speaking"></div>
						<div id="availability">
							<p class="hotel-description-subtitle">Availability</p>
							<div id="rooms_table" style="margin: 0;">
								<div id="available_rooms" style="margin-bottom: .5em;">
									<div class="roomArea" id="maxHotelRoomArea">
										<div id="individualRooms" class="rtshown">
											<table class="roomstable roomstable-long-language">
												<thead style="width: 814px; top: 0px; z-index: 10000">
													<tr id="maxhotel_table_header">
														<th class="canwrap" style="width: 273px">
															Accommodation Type</th>
														<th class="occupancy-dropdown-header bl"
															style="text-align: center; vertical-align: middle; width: 88px;">Max</th>
														<th id="price_highlight" class="price-figure canwrap"
															style="max-width: 80px; min-width: 80px;"></th>
														<th class="conditions"
															style="text-align: center; vertical-align: middle; max-width: 127px; min-width: 127px;">Options</th>
														<th id="number_rooms_header" class="canwrap bl"
															style="text-align: center; vertical-align: middle; max-width: 145px; min-width: 145px;">Quantity</th>
														<th class="cyr-header canwrap bl"
															style="text-align: center; vertical-align: middle; width: 134px;">Confirm
															your reservation</th>
													</tr>
												</thead>
												<tbody id="room_availability_container">
													<tr style="z-index: 10;">
														<td colspan="5" style="padding: 0;"></td>
														<td id="btnBooking" rowspan="400" class="bb bl"
															style="min-width: 121px; background-color: rgb(255, 255, 255);">
															<div class="btnBooking-wrap"
																style="display: block; width: 121px; top: 42px;">
																<div id="booking_summary" style="display: none;">
																	<strong id="sroomQuantity" class="squantity"></strong>
																	<span class="rooms-count"></span>
																	<br />
																	<span id="total_price" class="total-price"></span>
																	<span class="breakfast-included"> </span>
																</div>
																<button onclick="next()" class="xq btn-acb"
																	style="position: inherit">Reserve</button>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="facilities">
							<p id="parag_facilities"
								class="hotel-description-subtitle facility-hotel-name"></p>
							<div class="facilities-list">
								<div id="miscellaneous" class="facility-list-section">
									<h4>
										<div class="riba-bellboy"></div>
										&nbsp;Miscellaneous
									</h4>
									<ul id="miscellaneousList" class="facility-list-section-ul">

									</ul>
								</div>
								<div id="shops" class="facility-list-section">
									<h4>
										<div class="riba-shop"></div>
										&nbsp;Shops
									</h4>
									<ul id="shopsList" class="facility-list-section-ul">
									</ul>
								</div>
								<div id="business_facilities" class="facility-list-section">
									<h4>
										<div class="riba-credit-card"></div>
										&nbsp;Business Facilities
									</h4>
									<ul id="businessFacilityList" class="facility-list-section-ul">
									</ul>
								</div>
								<div id="cleaning_services" class="facility-list-section">
									<h4>
										<div class="riba-washing-machine"></div>
										&nbsp;Cleaning Services
									</h4>
									<ul id="cleaningServiceList" class="facility-list-section-ul">
									</ul>
								</div>
								<div id="entertainment_and_family_services"
									class="facility-list-section">
									<h4>
										<div class="riba-playground"></div>
										&nbsp; Entertainment and Family Services
									</h4>
									<ul id="entertainmentList" class="facility-list-section-ul">
									</ul>
								</div>
								<div id="common_areas" class="facility-list-section">
									<h4>
										<div class="riba-park"></div>
										&nbsp; Common Public Areas
									</h4>
									<ul id="commonAreaList" class="facility-list-section-ul">
									</ul>
								</div>
								<div id="front_desk_services" class="facility-list-section">
									<h4>
										<div class="riba-customer-service"></div>
										&nbsp; Front Desk Services
									</h4>
									<ul id="frontdeskServiceList" class="facility-list-section-ul">
									</ul>
								</div>
								<div id="transportations" class="facility-list-section">
									<h4>
										<div class="riba-car"></div>
										&nbsp; Transportations
									</h4>
									<ul id="transportationList" class="facility-list-section-ul">
									</ul>
								</div>
								<div id="pool_and_spa" class="facility-list-section">
									<h4>
										<div class="riba-swimming-pool"></div>
										&nbsp; Pool and Spa Activities
									</h4>
									<ul id="poolSpaList" class="facility-list-section-ul">
									</ul>
								</div>
								<div id="food_and_drink" class="facility-list-section">
									<h4>
										<div class="riba-fast-food"></div>
										&nbsp; Food and Drink Services
									</h4>
									<ul id="foodDrinkList" class="facility-list-section-ul">
									</ul>
								</div>
								<div id="pets" class="facility-list-section">
									<h4>
										<div class="riba-uppatasanti-pagoda"></div>
										&nbsp; Pets
									</h4>
									<ul id="petsList" class="facility-list-section-ul">
									</ul>
								</div>
								<div id="activities" class="facility-list-section">
									<h4>
										<div class="riba-church-of-the-savior-on-spilled-blood"></div>
										&nbsp; Activities in the Facility
									</h4>
									<ul id="activityList" class="facility-list-section-ul">
									</ul>
								</div>
								<div id="languages_spoken" class="facility-list-section">
									<h4>
										<div class="riba-reception"></div>
										&nbsp; Languages Spoken
									</h4>
									<ul id="languageList" class="facility-list-section-ul">
									</ul>
								</div>
								<!-- <div id="breakfast" class="facility-list-section">
								<h4> this part will be in room availability
									<div class="riba-restaurant"></div>
									&nbsp; Breakfast
								</h4>
								<ul id="breakfastList" class="facility-list-section-ul">
									<li>No</li>
									<li>Included in the price</li>
									<li>Optional</li>
								</ul>
							</div> -->
								<div id="parking" class="facility-list-section">
									<h4>
										<div class="riba-parking"></div>
										&nbsp; Parking
									</h4>
									<ul id="parkingList" class="facility-list-section-ul">
									</ul>
								</div>
								<div id="internet" class="facility-list-section">
									<h4>
										<div class="riba-wifi"></div>
										&nbsp; Internet
									</h4>
									<ul id="internetList" class="facility-list-section-ul">
									</ul>
								</div>
								<div style="clear: left;"></div>
							</div>
						</div>
						<div id="rules">
							<p class="hotel-description-subtitle">Property Rules</p>
							<div class="rules-container rules-section">
								<div class="description" id="checkin_policy">
									<p class="policy-name">
										<span>Check-in</span>
									</p>
									<p id="parag_checkIn">Please reload the page</p>
								</div>
								<div class="description" id="checkout_policy">
									<p class="policy-name">
										<span>Check-out</span>
									</p>
									<p id="parag_checkOut">Please reload the page</p>
								</div>
								<div class="description" id="children_policy">
									<p class="policy-name">
										<span>Children and extra beds</span>
									</p>
									<p>All children are welcome.</p>
									<p>
										<span class="free_ann">
											<strong>Free!</strong>
											All children under 2 years stay free of charge for children's
											cots/cribs.
										</span>
									</p>
									<p>All children under 12 years are charged EUR 10 per night
										for extra beds.</p>
									<p>All further older children or adults are charged EUR
										20.50 per night for extra beds.</p>
									<p>The maximum number of extra beds in a room is 1.</p>
									<p>Any type of extra bed or child's cot/crib is upon
										request and needs to be confirmed by management.</p>
									<p>Supplements are not calculated automatically in the
										total costs and will have to be paid for separately during
										your stay.</p>
								</div>
								<div class="description" id="parking_policy">
									<p class="policy-name">
										<span>Parking</span>
									</p>
								</div>
								<div class="description" id="pets_policy">
									<p class="policy-name">
										<span>Pets</span>
									</p>
								</div>
								<div class="description" id="creditCards_policy">
									<p id="cc_policy_name" class="policy-name">
										<span>Cards accepted at this property</span>
									</p>
									<p id="parag_creditCardList"></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="_m"></div>
	<div id="showmetheroommss"></div>
	<%@include file="includes/myProfile.jsp"%>
	<%@include file="includes/login-modal.jsp"%>
	<%@include file="includes/footer.jsp"%>
	<script type="text/javascript"
		src='<c:url value="/resources/js/hotel/fillingBlanks.js" />'></script>

	<script type="text/javascript"
		src='<c:url value="/resources/js/bootstrap.min.js" />'></script>
	<script type='text/javascript'
		src='<c:url value="/resources/js/oauth.js" />'></script>
	<script type='text/javascript'
		src='<c:url value="/resources/js/main.js" />'></script>
</body>
</html>