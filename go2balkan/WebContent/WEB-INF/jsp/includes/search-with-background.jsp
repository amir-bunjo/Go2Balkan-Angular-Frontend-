<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-2"%>
<%@ page session="true"%>
<%
	String bPath = request.getScheme() + "://" + request.getServerName() + ":8080";
%>
<div class="search-with-background" id="searchBarWithBackground">
	<img class="search-background-image" style="visibility: hidden" />
	<div class="tab-nav-mix">
		<div class="swb-content">
			<ul class="nav nav-tabs clearfix">
				<li id="nav-hotel" class="nav-clear active" role="presentation">
					<a href="#tab-hotel" data-toggle="tab">Accommodation</a>
				</li>

				<li id="nav-agency" class="nav-clear" role="presentation"><a
					href="#tab-agency" data-toggle="tab">Tours</a></li>

				<li id="nav-mice" class="nav-clear" role="presentation"><a
					href="#tab-mice" data-toggle="tab">MICE</a></li>

				<li id="nav-restaurant" class="nav-clear" role="presentation">
					<a href="#tab-restaurant" data-toggle="tab">Restaurant</a>
				</li>

			</ul>
			<div class="tab-content clearfix">
				<div class="tab-pane active" id="tab-hotel">
					<div class="swb-z">
						<div class="swb-hotel">
							<div class="swb-acc-search">
								<div class="swb-acc-container">
									<form id="search_form-form" role="search" method="GET"
										action="<%=bPath%>/msearch">
										<div id="tab-hotel" class="acc-searchbox">
										<input type="hidden" id="h_cat" name="cat">
											<dl class="searchbox-form-group">
												<dt>Where would you like to go?</dt>
												<dd class="searchbox-fg-dd">
													<input type="text" id="qkw" name="qkw"
														class="input-control search-input"
														placeholder="Enter a destination or property">
													 <a class="hidden-err-message" role="button"
														data-container="body" data-toggle="popover"
														data-placement="top"
														data-content="Please enter a destination or property!"></a>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Check-in</dt>
												<dd class="searchbox-fg-dd">
													<input type="text" style="width: 175px;"
														placeholder="Check-in date" readonly
														class="check-checkin input-dropdown ttf" id="checkin" />
														<input type="hidden" name="checkin" id="h_checkin" />
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Check-out</dt>
												<dd class="searchbox-fg-dd">
													<input type="text" style="width: 175px;"
														placeholder="Check-out date"
														class="check-checkout input-dropdown ttf" readonly
														id="checkout" />
														<input type="hidden" name="checkout" id="h_checkout" />
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Room</dt>
												<dd class="searchbox-fg-dd">
													<select id="select_room" name="select_room"
														class="input-dropdown max20w0">
													</select>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Adults</dt>
												<dd class="searchbox-fg-dd">
													<select id="select_adult" name="select_adult"
														class="input-dropdown max20w0">
													</select>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Children</dt>
												<dd class="searchbox-fg-dd">
													<select id="select_child" name="select_child"
														class="input-dropdown max20">
													</select>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dd class="searchbox-fg-dd dd-btn">
													<button type="submit" value="Search" data-toggle="acb"
														data-placement="top"
														title="Let's get started to discover Balkan countries!"
														class="btn btn-primary search-button sbmt-accsbtn swb-btn">Search</button>
												</dd>
											</dl>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="tab-agency">
					<div class="swb-z">
						<div class="swb-hotel">
							<div class="swb-acc-search">
								<div class="swb-acc-container">
									<form id="ta_search_form-form" role="search" method="GET"
										action="<%=bPath%>/tasearch">
										<div id="ta_tab-hotel" class="acc-searchbox">
											<dl class="searchbox-form-group">
												<dt>Country</dt>
												<dd class="searchbox-fg-dd">
												<select id="ta_qkw" name="ta_qkw"
														class="input-dropdown">
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
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>City</dt>
												<dd class="searchbox-fg-dd">
													<select style="cursor:not-allowed" id="ta_qc" name="ta_qc" disabled
														class="input-dropdown">
														<option value>Select a city</option>
													</select>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Type</dt>
												<dd class="searchbox-fg-dd">
													<select id="ta_tourtype" name="ta_tourtype"
														class="input-dropdown">
														<option value>Select a type</option>
														<option value="summer" id="summer">Summer</option>
														<option value="winter" id="winter">Winter</option>
														<option value="extremesport" id="extremesport">Extreme Sport</option>
														<option value="sportevent" id="sportevent">Sport Event</option>
														<option value="concert" id="concert">Concert</option>
														<option value="excursion" id="excursion">Excursion</option>
													</select>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Check-in</dt>
												<dd class="searchbox-fg-dd">
													<input type="text" style="width: 175px;"
														placeholder="Check-in date" readonly
														class="ta-check-checkin input-dropdown ttf" id="ta_checkin" />
														<input type="hidden" id="h_ta_checkin" name="ta_checkin" />
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Check-out</dt>
												<dd class="searchbox-fg-dd">
													<input type="text" style="width: 175px;"
														placeholder="Check-out date"
														class="ta-check-checkout input-dropdown ttf" readonly
														id="ta_checkout" />
														<input type="hidden" id="h_ta_checkout" name="ta_checkout" />
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dd class="searchbox-fg-dd dd-btn">
													<button type="submit" value="Search" data-toggle="acb"
														data-placement="top"
														title="Let's get started to discover tour agencies!"
														class="btn btn-primary search-button sbmt-tasbtn swb-btn">Search</button>
												</dd>
											</dl>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="tab-mice">
					<div class="swb-z">
						<div class="swb-hotel">
							<div class="swb-acc-search">
								<div class="swb-acc-container">
									<form>
										<div id="tab-hotel" class="acc-searchbox">
											<dl class="searchbox-form-group">
												<dt>Enter a keyword</dt>
												<dd class="searchbox-fg-dd">
													<input type="text" id="qkw" name="qkw"
														class="input-control search-input" placeholder="Organization Name">
													<a class="hidden-err-message" role="button"
														data-container="body" data-toggle="popover"
														data-placement="top"
														data-content="Please enter a keyword"></a>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Check-in</dt>
												<dd class="searchbox-fg-dd">
													<input type="text" style="width: 175px;"
														placeholder="Check-in date" readonly name="checkin"
														class="check-checkin input-dropdown ttf" id="checkin" />
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Check-out</dt>
												<dd class="searchbox-fg-dd">
													<input type="text" style="width: 175px;"
														placeholder="Check-out date"
														class="check-checkout input-dropdown ttf" readonly
														name="checkout" id="checkout" />
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Room</dt>
												<dd class="searchbox-fg-dd">
													<select id="select_room" name="select_room"
														class="input-dropdown max20w0">
													</select>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Adults</dt>
												<dd class="searchbox-fg-dd">
													<select id="select_adult" name="select_adult"
														class="input-dropdown max20w0">
													</select>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Children</dt>
												<dd class="searchbox-fg-dd">
													<select id="select_child" name="select_child"
														class="input-dropdown max20">
													</select>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dd class="searchbox-fg-dd dd-btn">
													<button type="submit" value="Search" data-toggle="acb"
														data-placement="top" disabled="disabled"
														title="Under construction"
														class="btn btn-primary search-button sbmt-sbtn swb-btn">Search</button>
												</dd>
											</dl>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="tab-restaurant">
					<div class="swb-z">
						<div class="swb-hotel">
							<div class="swb-acc-search">
								<div class="swb-acc-container">
									<form>
										<div id="tab-hotel" class="acc-searchbox">
											<dl class="searchbox-form-group">
												<dt>Enter a keyword</dt>
												<dd class="searchbox-fg-dd">
													<input type="text" id="qkw" name="qkw"
														class="input-control search-input" placeholder="Restaurant Name">
													<a class="hidden-err-message" role="button"
														data-container="body" data-toggle="popover"
														data-placement="top"
														data-content="Please enter a keyword"></a>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Check-in</dt>
												<dd class="searchbox-fg-dd">
													<input type="text" style="width: 175px;"
														placeholder="Check-in date" readonly name="checkin"
														class="check-checkin input-dropdown ttf" id="checkin" />
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Check-out</dt>
												<dd class="searchbox-fg-dd">
													<input type="text" style="width: 175px;"
														placeholder="Check-out date"
														class="check-checkout input-dropdown ttf" readonly
														name="checkout" id="checkout" />
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Room</dt>
												<dd class="searchbox-fg-dd">
													<select id="select_room" name="select_room"
														class="input-dropdown max20w0">
													</select>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Adults</dt>
												<dd class="searchbox-fg-dd">
													<select id="select_adult" name="select_adult"
														class="input-dropdown max20w0">
													</select>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dt>Children</dt>
												<dd class="searchbox-fg-dd">
													<select id="select_child" name="select_child"
														class="input-dropdown max20">
													</select>
												</dd>
											</dl>
											<dl class="searchbox-form-group">
												<dd class="searchbox-fg-dd dd-btn">
													<button type="submit" value="Search" data-toggle="acb"
														data-placement="top" disabled="disabled"
														title="Under construction"
														class="btn btn-primary search-button sbmt-sbtn swb-btn">Search</button>
												</dd>
											</dl>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
var logo=document.getElementById("searchBarWithBackground"),loading=document.getElementById("loading"),dd17=document.getElementById("__d17"),s=Math.floor(12*Math.random())+1;logo.style.backgroundImage="url(./resources/pix/search-backgrounds/"+s+"-min.jpg)",loading&&loading.parentNode.removeChild(loading),-1!=dd17.classList.contains("hide")&&dd17.classList.remove("hide");
</script>
<script type="text/javascript">
for(var searchDropdownsWithoutZero=document.querySelectorAll(".max20w0"),t=0;t<searchDropdownsWithoutZero.length;t++)for(var i=1;20>=i;i++)searchDropdownsWithoutZero[t].innerHTML+="<option value="+i+">"+i+"</option>";for(var searchDropdowns=document.querySelectorAll(".max20"),t=0;t<searchDropdowns.length;t++)for(var i=0;20>=i;i++)searchDropdowns[t].innerHTML+="<option value="+i+">"+i+"</option>";
</script>