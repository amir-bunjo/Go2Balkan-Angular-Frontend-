<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-2"%>
<%@ page session="true"%>
<%
	String bPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
%>
<div class="sb-outer">
	<div class="sb-inner">
		<form id="ta_search_form-form" role="search" method="GET"
			action="<%=bPath%>/tasearch">
			<div class="sb-inner-row">
				<h3 class="text">Search</h3>
			</div>
			<div class="sb-inner-row ta-inner-row">
				<label class="text" for="ta_qkw">Destination</label>
				<select id="ta_qkw" name="ta_qkw" class="input-dropdown">
					<option value>Select a destination</option>
					<option value="albania" id="albania">Albania</option>
					<option value="bih" id="bih">Bosnia and Herzegovina</option>
					<option value="bulgaria" id="bulgaria">Bulgaria</option>
					<option value="croatia" id="croatia">Croatia</option>
					<option value="greece" id="greece">Greece</option>
					<option value="kosovo" id="kosovo">Kosovo</option>
					<option value="macedonia" id="macedonia">Macedonia</option>
					<option value="serbia" id="serbia">Serbia</option>
				</select>
			</div>
			<div class="sb-inner-row ta-inner-row">
				<label class="text" for="ta_qc">City (optional)</label>
				<select style="cursor: not-allowed" id="ta_qc" name="ta_qc" disabled
					class="input-dropdown">
					<option value>Select a city</option>
				</select>
			</div>
			<div class="sb-inner-row ta-inner-row">
				<label class="text" for="ta_tourtype">Tour type (optional)</label>
				<select id="ta_tourtype" name="ta_tourtype" class="input-dropdown">
					<option value>Select a type</option>
					<option value="summer" id="summer">Summer</option>
					<option value="winter" id="winter">Winter</option>
					<option value="extremesport" id="extremesport">Extreme
						Sport</option>
					<option value="sportevent" id="sportevent">Sport Event</option>
					<option value="concert" id="concert">Concert</option>
					<option value="excursion" id="excursion">Excursion</option>
				</select>
			</div>
			<div class="sb-inner-row ta-inner-row">
				<label class="text" for="ta_checkin">Check-in</label>
				<input type="text" style="width: 252px; height: 30px;"
					placeholder="Check-in date" readonly
					class="ta-check-checkin input-dropdown ttf" id="ta_checkin" />
				<input type="hidden" id="h_ta_checkin" name="ta_checkin" />
				<label class="text" for="ta_checkout">Check-out</label>
				<input type="text" style="width: 252px; height: 30px;"
					placeholder="Check-out date"
					class="ta-check-checkout input-dropdown ttf" readonly
					id="ta_checkout" />
				<input type="hidden" id="h_ta_checkout" name="ta_checkout" />
			</div>
			<div class="sb-inner-row">
				<button class="sbmt-tasbtn sbmt-sbtn" value="Search" type="submit"
					style="margin-right: 7px;" id="g2b-btn_search">
					<span class="sbmt-tasbtn" id="g2b-lbl_search">Search</span>
				</button>
			</div>
		</form>
	</div>
</div>