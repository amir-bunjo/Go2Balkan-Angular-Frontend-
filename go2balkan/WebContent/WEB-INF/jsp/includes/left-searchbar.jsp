<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-2"%>
<%@ page session="true"%>
<%
	String bPath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
%>
<div class="sb-outer">
	<div class="sb-inner">
		<form id="search_form-form" role="search" method="GET"
			action="<%=bPath%>/msearch">
			<div class="sb-inner-row">
				<h3 class="text">Search</h3>
			</div>
			<div class="sb-inner-row">
				<label class="text" for="name">Destination/Accommodation
					name</label>
				<input style="height: 30px; width: 252px;" id="qkw" name="qkw" />
				<input type="hidden" id="h_cat" name="cat">
				<a class="hidden-err-message" role="button" data-container="body"
					data-toggle="popover" data-placement="top"
					data-content="Please enter a destination or property!"></a>
			</div>
			<div class="sb-inner-row">
				<label class="text" for="checkin">Check-in</label>
				<input placeholder="Check-in date"
					style="width: 252px; height: 30px;" readonly type="text"
					class="m-checkin check-checkin" id="checkin" />
				<input type="hidden" id="h_checkin" name="checkin">
				<label class="text" for="checkout">Check-out</label>
				<input class="m-checkout check-checkout"
					placeholder="Check-out date" style="width: 252px; height: 30px;"
					readonly type="text" id="checkout" />
				<input type="hidden" id="h_checkout" name="checkout">
			</div>
			<div class="sb-inner-row">
				<label for="select_room" class="text cmb-text">Room</label>
				<select id="select_room" name="select_room"
					class="left-dropdown-room  max20w0">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
				</select>
				<br />
				<label for="select_adult" class="text cmb-text">Adult</label>
				<select id="select_adult" name="select_adult"
					class="left-dropdown-adult  max20w0">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					</select>
				<br />
				<label for="select_child" class="text cmb-text">Children</label>
				<select id="select_child" name="select_child" class="max20">
					<option>0</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
				</select>
			</div>
			<div class="sb-inner-row">
				<button class="sbmt-sbtn sbmt-accsbtn" value="Search" type="submit"
					style="margin-right: 7px;" id="g2b-btn_search">
					<span id="g2b-lbl_search">Search</span>
				</button>
			</div>
		</form>
	</div>
</div>