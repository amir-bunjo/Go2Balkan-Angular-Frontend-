<div style="display: none; visibility: hidden;" id="_up17" class="_ek3"
	data-slug="m32f">
	<div class="alert alert-success" id="success-alert" style="display:none"></div>
	<div class="alert alert-danger" id="danger-alert" style="display:none"></div>
	<div style="display: none; visibility: hidden;" id="s_body">
		<div id="s_body_inner">
			<div id="s_body_content" class="pwrapper smwrapper smwrapperT">
				<div id="s_body_content__area" class="carea_w carea_wrapper">
					<ul class="s_navbar-list">
						<li id="btn_dashboard" onclick="q1()">
							<a>
								<i class="fa fa-tachometer"></i>
								Dashboard
							</a>
						</li>
						<li id="btn_bookings" onclick="q2()">
							<a>
								<i class="fa fa-suitcase"></i>
								Bookings
							</a>
						</li>
						<li id="btn_settings" onclick="q3()">
							<a>
								<i class="fa fa-cog"></i>
								<br />
								Settings
							</a>
						</li>
					</ul>
				</div>
				<div id="p_form" class="settings_mysettings">
					<div id="snavbar" class="settings-navbar">
						<div id="settings_navbar" class="settings-navbar--container">
							<ul
								class="settings-navbar--container-list mysettings-list-design">
								<li class="mysettings-list-item clearfix mysettings-active">
									<a href="#social_networks"
										class="clearfix my-settings-link mysettings-link-sidenav">
										<span class="mysettings-link-label">Social Connections</span>
										<i class="fa fa-globe"></i>
									</a>
								</li>
								<li class="mysettings-list-item clearfix">
									<a href="#about_me"
										class="clearfix my-settings-link mysettings-link-sidenav">
										<span class="mysettings-link-label">About Me</span>
										<i class="fa fa-user"></i>
									</a>
								</li>
								<li class="mysettings-list-item clearfix">
									<a href="#credit_card"
										class="clearfix my-settings-link mysettings-link-sidenav">
										<span class="mysettings-link-label">Credit Card</span>
										<i class="fa fa-credit-card"></i>
									</a>
								</li>
								<li class="mysettings-list-item clearfix">
									<a href="#password_currency"
										class="clearfix my-settings-link mysettings-link-sidenav">
										<span class="mysettings-link-label">Password & Currency</span>
										<i class="fa fa-cogs"></i>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="settings-container">
						<div id="social_networks" class="settings-container--section">
							<div class="settings-container-head">
								<div class="settings-container-head--title">Social
									Connections</div>
							</div>
							<div class="settings-container-content">
								<div class="s-content-item srow">
									<div class="s-content-item--label">Your Networks</div>
									<div class="s-content-item--content">
										<div class="c-f">Sign in with your social network
											accounts</div>
										<div class="c-f-btn">
											<a class="social-button sb-facebook">
												<span class="social-button--label">Facebook</span>
											</a>
											<a class="social-button sb-google">
												<span class="social-button--label">Google</span>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="about_me" class="settings-container--section">
							<div class="settings-container-head">
								<div class="settings-container-head--title">My Account</div>
							</div>
							<div class="settings-container-content">
								<div class="am-content">
									<div class="s-content-item srow">
										<div class="s-content-item--label">Profile Picture</div>
										<div class="s-content-item--content">
											<div class="mysettings-profile-picture background">
												<!-- <img id="showPic" class="pp-img" width="130" height="130"
													src="./resources/pix/default_avatar.png"> -->
											</div>
											<div class="my-settings-input srow">
												<div class="mysettings-input--input mleft">
													<button type="button" class="btn-mysettings"
														data-toggle="modal" data-target="#changePP">
														Change photo</button>
												</div>
											</div>
										</div>
									</div>
									<div class="s-content-item srow">
										<div class="s-content-item--label">Name Surname</div>
										<div class="s-content-item--content">
											<div class="my-settings-input">
												<div class="mysettings-input--input">
													<input data-saver="ns" type="text"
														placeholder="Your name and surname" name="namesurname"
														id="namesurname" value class="input-mysettings tof">
												</div>
												<div id="ns_loader" class="mysettings-input--loader">
													<i id="ns_spin" class="fa fa-spin fa-refresh"></i>
													<span id="ns_saving">Saving...</span>
													<span id="ns_saved">Saved</span>
												</div>
												<div id="ns_error" class="mysettings-input--error">An
													error occured.</div>
											</div>
										</div>
									</div>
									<div class="s-content-item srow">
										<div class="s-content-item--label">Gender</div>
										<div class="s-content-item--content">
											<div class="my-settings-input">
												<div class="mysettings-input--input">
													<select data-saver="g" class="input-mysettings tof"
														id="gender" name="gender">
														<option value="2">I don't want to specify</option>
														<option value="0">Female</option>
														<option value="1">Male</option>
													</select>
												</div>
												<div id="g_loader" class="mysettings-input--loader">
													<i id="g_spin" class="fa fa-spin fa-refresh"></i>
													<span id="g_saving">Saving...</span>
													<span id="g_saved">Saved</span>
												</div>
												<div id="g_error" class="mysettings-input--error">An
													error occured.</div>
											</div>
										</div>
									</div>

									<!-- <div class="s-content-item srow">
										<div class="s-content-item--label">Birthday</div>
										<div class="s-content-item--content">
											<div class="my-settings-input">
												<div class="mysettings-input--input">
													<input type="text" id="birthday" name="birthday"
														data-saver="bd" class="input-mysettings tof">
												</div>
												<div id="bd_loader" class="mysettings-input--loader">
													<i id="bd_spin" class="fa fa-spin fa-refresh"></i>
													<span id="bd_saving">Saving...</span>
													<span id="bd_saved">Saved</span>
												</div>
												<div id="bd_error" class="mysettings-input--error">An
													error occured.</div>
											</div>
										</div>
									</div> -->
									<div class="s-content-item srow">
										<div class="s-content-item--label">Country</div>
										<div class="s-content-item--content">
											<div class="my-settings-input">
												<div class="mysettings-input--input">
													<select data-saver="c" class="input-mysettings">
														<option>I don't want to specify</option>
														<option value="xa">Abkhazia, Georgia</option>
														<option value="af">Afghanistan</option>
														<option value="al">Albania</option>
														<option value="dz">Algeria</option>
														<option value="as">American Samoa</option>
														<option value="ad">Andorra</option>
														<option value="ao">Angola</option>
														<option value="ai">Anguilla</option>
														<option value="aq">Antarctica</option>
														<option value="ag">Antigua &amp; Barbuda</option>
														<option value="ar">Argentina</option>
														<option value="am">Armenia</option>
														<option value="aw">Aruba</option>
														<option value="au">Australia</option>
														<option value="at">Austria</option>
														<option value="az">Azerbaijan</option>
														<option value="bs">Bahamas</option>
														<option value="bh">Bahrain</option>
														<option value="bd">Bangladesh</option>
														<option value="bb">Barbados</option>
														<option value="by">Belarus</option>
														<option value="be">Belgium</option>
														<option value="bz">Belize</option>
														<option value="bj">Benin</option>
														<option value="bm">Bermuda</option>
														<option value="bt">Bhutan</option>
														<option value="bo">Bolivia</option>
														<option value="bq">Bonaire St. Eustatius and Saba</option>
														<option value="ba">Bosnia and Herzegovina</option>
														<option value="bw">Botswana</option>
														<option value="bv">Bouvet Island</option>
														<option value="br">Brazil</option>
														<option value="io">British Indian Ocean Territory</option>
														<option value="vg">British Virgin Islands</option>
														<option value="bn">Brunei</option>
														<option value="bg">Bulgaria</option>
														<option value="bf">Burkina Faso</option>
														<option value="bi">Burundi</option>
														<option value="kh">Cambodia</option>
														<option value="cm">Cameroon</option>
														<option value="ca">Canada</option>
														<option value="cv">Cape Verde</option>
														<option value="ky">Cayman Islands</option>
														<option value="cf">Central Africa Republic</option>
														<option value="td">Chad</option>
														<option value="cl">Chile</option>
														<option value="cn">China</option>
														<option value="cx">Christmas Island</option>
														<option value="cc">Cocos (K) I.</option>
														<option value="co">Colombia</option>
														<option value="km">Comoros</option>
														<option value="cg">Congo</option>
														<option value="ck">Cook Islands</option>
														<option value="cr">Costa Rica</option>
														<option value="xc">Crimea</option>
														<option value="hr">Croatia</option>
														<option value="cu">Cuba</option>
														<option value="cw">Curaçao</option>
														<option value="cy">Cyprus</option>
														<option value="cz">Czech Republic</option>
														<option value="cd">Democratic Republic of the
															Congo</option>
														<option value="dk">Denmark</option>
														<option value="dj">Djibouti</option>
														<option value="dm">Dominica</option>
														<option value="do">Dominican Republic</option>
														<option value="tl">East Timor</option>
														<option value="ec">Ecuador</option>
														<option value="eg">Egypt</option>
														<option value="sv">El Salvador</option>
														<option value="gq">Equatorial Guinea</option>
														<option value="er">Eritrea</option>
														<option value="ee">Estonia</option>
														<option value="et">Ethiopia</option>
														<option value="fk">Falkland Islands (Malvinas)</option>
														<option value="fo">Faroe Islands</option>
														<option value="fj">Fiji</option>
														<option value="fi">Finland</option>
														<option value="fr">France</option>
														<option value="gf">French Guiana</option>
														<option value="pf">French Polynesia</option>
														<option value="tf">French Southern Territories</option>
														<option value="ga">Gabon</option>
														<option value="gm">Gambia</option>
														<option value="ge">Georgia</option>
														<option value="de">Germany</option>
														<option value="gh">Ghana</option>
														<option value="gi">Gibraltar</option>
														<option value="gr">Greece</option>
														<option value="gl">Greenland</option>
														<option value="gd">Grenada</option>
														<option value="gp">Guadeloupe</option>
														<option value="gu">Guam</option>
														<option value="gt">Guatemala</option>
														<option value="gg">Guernsey</option>
														<option value="gn">Guinea</option>
														<option value="gw">Guinea-Bissau</option>
														<option value="gy">Guyana</option>
														<option value="ht">Haiti</option>
														<option value="hm">Heard and McDonald Islands</option>
														<option value="hn">Honduras</option>
														<option value="hk">Hong Kong</option>
														<option value="hu">Hungary</option>
														<option value="is">Iceland</option>
														<option value="in">India</option>
														<option value="id">Indonesia</option>
														<option value="ir">Iran</option>
														<option value="iq">Iraq</option>
														<option value="ie">Ireland</option>
														<option value="im">Isle of Man</option>
														<option value="il">Israel</option>
														<option value="it">Italy</option>
														<option value="ci">Ivory Coast</option>
														<option value="jm">Jamaica</option>
														<option value="jp">Japan</option>
														<option value="je">Jersey</option>
														<option value="jo">Jordan</option>
														<option value="kz">Kazakhstan</option>
														<option value="ke">Kenya</option>
														<option value="ki">Kiribati</option>
														<option value="xk">Kosovo</option>
														<option value="kw">Kuwait</option>
														<option value="kg">Kyrgyzstan</option>
														<option value="la">Laos</option>
														<option value="lv">Latvia</option>
														<option value="lb">Lebanon</option>
														<option value="ls">Lesotho</option>
														<option value="lr">Liberia</option>
														<option value="ly">Libya</option>
														<option value="li">Liechtenstein</option>
														<option value="lt">Lithuania</option>
														<option value="lu">Luxembourg</option>
														<option value="mo">Macau</option>
														<option value="mk">Macedonia</option>
														<option value="mg">Madagascar</option>
														<option value="mw">Malawi</option>
														<option value="my">Malaysia</option>
														<option value="mv">Maldives</option>
														<option value="ml">Mali</option>
														<option value="mt">Malta</option>
														<option value="mh">Marshall Islands</option>
														<option value="mq">Martinique</option>
														<option value="mr">Mauritania</option>
														<option value="mu">Mauritius</option>
														<option value="yt">Mayotte</option>
														<option value="mx">Mexico</option>
														<option value="fm">Micronesia</option>
														<option value="md">Moldova</option>
														<option value="mc">Monaco</option>
														<option value="mn">Mongolia</option>
														<option value="me">Montenegro</option>
														<option value="ms">Montserrat</option>
														<option value="ma">Morocco</option>
														<option value="mz">Mozambique</option>
														<option value="mm">Myanmar</option>
														<option value="na">Namibia</option>
														<option value="nr">Nauru</option>
														<option value="np">Nepal</option>
														<option value="nl">Netherlands</option>
														<option value="nc">New Caledonia</option>
														<option value="nz">New Zealand</option>
														<option value="ni">Nicaragua</option>
														<option value="ne">Niger</option>
														<option value="ng">Nigeria</option>
														<option value="nu">Niue</option>
														<option value="nf">Norfolk Island</option>
														<option value="kp">North Korea</option>
														<option value="mp">Northern Mariana Islands</option>
														<option value="no">Norway</option>
														<option value="om">Oman</option>
														<option value="pk">Pakistan</option>
														<option value="pw">Palau</option>
														<option value="ps">Palestinian Territory</option>
														<option value="pa">Panama</option>
														<option value="pg">Papua New Guinea</option>
														<option value="py">Paraguay</option>
														<option value="pe">Peru</option>
														<option value="ph">Philippines</option>
														<option value="pn">Pitcairn</option>
														<option value="pl">Poland</option>
														<option value="pt">Portugal</option>
														<option value="pr">Puerto Rico</option>
														<option value="qa">Qatar</option>
														<option value="re">Reunion</option>
														<option value="ro">Romania</option>
														<option value="ru">Russia</option>
														<option value="rw">Rwanda</option>
														<option value="bl">Saint Barts</option>
														<option value="kn">Saint Kitts and Nevis</option>
														<option value="lc">Saint Lucia</option>
														<option value="mf">Saint Martin</option>
														<option value="vc">Saint Vincent &amp; Grenadines</option>
														<option value="ws">Samoa</option>
														<option value="sm">San Marino</option>
														<option value="sa">Saudi Arabia</option>
														<option value="sn">Senegal</option>
														<option value="rs">Serbia</option>
														<option value="sc">Seychelles</option>
														<option value="sl">Sierra Leone</option>
														<option value="sg">Singapore</option>
														<option value="sk">Slovakia</option>
														<option value="si">Slovenia</option>
														<option value="sb">Solomon Islands</option>
														<option value="so">Somalia</option>
														<option value="za">South Africa</option>
														<option value="gs">South Georgia and the South
															Sandwi…</option>
														<option value="kr">South Korea</option>
														<option value="ss">South Sudan</option>
														<option value="es">Spain</option>
														<option value="lk">Sri Lanka</option>
														<option value="sh">St. Helena</option>
														<option value="sx">St. Maarten</option>
														<option value="pm">St. Pierre and Miquelon</option>
														<option value="sd">Sudan</option>
														<option value="sr">Suriname</option>
														<option value="sj">Svalbard &amp; Jan Mayen</option>
														<option value="sz">Swaziland</option>
														<option value="se">Sweden</option>
														<option value="ch">Switzerland</option>
														<option value="sy">Syria</option>
														<option value="st">São Tomé and Príncipe</option>
														<option value="tw">Taiwan</option>
														<option value="tj">Tajikistan</option>
														<option value="tz">Tanzania</option>
														<option value="th">Thailand</option>
														<option value="tg">Togo</option>
														<option value="tk">Tokelau</option>
														<option value="to">Tonga</option>
														<option value="tt">Trinidad and Tobago</option>
														<option value="tn">Tunisia</option>
														<option value="tr">Turkey</option>
														<option value="tm">Turkmenistan</option>
														<option value="tc">Turks &amp; Caicos Islands</option>
														<option value="tv">Tuvalu</option>
														<option value="vi">U.S. Virgin Islands</option>
														<option value="ug">Uganda</option>
														<option value="ua">Ukraine</option>
														<option value="ae">United Arab Emirates</option>
														<option value="gb">United Kingdom</option>
														<option value="um">United States Minor Outlying
															Islan…</option>
														<option value="us">United States of America</option>
														<option value="uy">Uruguay</option>
														<option value="uz">Uzbekistan</option>
														<option value="vu">Vanuatu</option>
														<option value="va">Vatican City</option>
														<option value="ve">Venezuela</option>
														<option value="vn">Vietnam</option>
														<option value="wf">Wallis and Futuna</option>
														<option value="ye">Yemen</option>
														<option value="zm">Zambia</option>
														<option value="zw">Zimbabwe</option>
													</select>
												</div>
												<div id="c_loader" class="mysettings-input--loader">
													<i id="c_spin" class="fa fa-spin fa-refresh"></i>
													<span id="c_saving">Saving...</span>
													<span id="c_saved">Saved</span>
												</div>
												<div id="c_error" class="mysettings-input--error">An
													error occured.</div>
											</div>
										</div>
									</div>
									<div class="s-content-item srow">
										<div class="s-content-item--label">Website</div>
										<div class="s-content-item--content">
											<div class="my-settings-input">
												<div class="mysettings-input--input wasc">
													<input data-saver="w" type="text"
														placeholder="http(s)://www.mywebsite.com" name="web"
														id="web" value class="input-mysettings">
												</div>
												<div id="w_loader" class="mysettings-input--loader">
													<i id="w_spin" class="fa fa-spin fa-refresh"></i>
													<span id="w_saving">Saving...</span>
													<span id="w_saved">Saved</span>
												</div>
												<div id="w_error" class="mysettings-input--error">An
													error occured.</div>
											</div>
										</div>
									</div>
									<div class="s-content-item srow">
										<div id="st_mobile" class="s-content-item--label">Mobile
											number</div>
										<div class="s-content-item--content">
											<div class="my-settings-input">
												<div class="mysettings-input--input wasc">
													<input data-saver="mn" type="text" placeholder=""
														name="mobile" id="mobile" value class="input-mysettings">
												</div>
												<div id="mn_loader" class="mysettings-input--loader">
													<i id="mn_spin" class="fa fa-spin fa-refresh"></i>
													<span id="mn_saving">Saving...</span>
													<span id="mn_saved">Saved</span>
												</div>
												<div id="mn_error" class="mysettings-input--error">Number
													is invalid.</div>
											</div>
										</div>
									</div>

								</div>
								<div id="main_loader" class="mysettings-input--loader">
									<i class="fa fa-spin fa-refresh"></i>
									<span id="main_saving">Saving...</span>
									<span id="main_saved">Saved</span>
								</div>
								<div id="main_error" class="mysettings-input--error">An
									error occured.</div>
							</div>
						</div>
						<div id="credit_card" class="settings-container--section">
							<div class="settings-container-head">
								<div class="settings-container-head--title">Credit Card</div>
								<div class="settings-container-head-information">
									<i class="fa fa-lock"></i>
									&nbsp;We'll use this info to autofill your details, making it
									quicker for you to book. Your payment details are stored
									securely.
								</div>
							</div>
							<div class="settings-container-content">
								<div class="mysettings-item mysettings-table">
									<div class="card-table mysettings-table__head">
										<div class="ccnumber">Credit card number</div>
										<div class="ccholder">Cardholder's name</div>
										<div class="ccexpd">Expiration date</div>
									</div>
								</div>
								<div id="cCc__mysettings__cCc">
									<div id="_3frv" class="card-table">
										<button id="btnShowTable" class="btn-mysettings ccbutton fs">
											<span>
												<i class="fa fa-plus-square"></i>
												<span class="mysettings-btnaddc-text">Add a credit
													card</span>
											</span>
										</button>
									</div>
								</div>
							</div>
						</div>
						<div id="password_currency" class="settings-container--section">
							<div class="settings-container-head">
								<div class="settings-container-head--title">Password &
									Currency</div>
							</div>
							<div class="settings-container-content">
								<div class="s-content-item srow">
									<div class="s-content-item--label">Currency</div>
									<div class="s-content-item--content">
										<div class="my-settings-input">
											<div class="mysettings-input--input">
												<select data-saver="cc" name="currency" id="currency"
													class="input-mysettings tof">
													<option>I don't want to specify</option>
													<option value="ARS">AR$&emsp;Argentine Peso</option>
													<option value="AUD">AUD&emsp;Australian Dollar</option>
													<option value="AZN">AZN&emsp;Azerbaijani New
														Manats</option>
													<option value="BHD">BHD&emsp;Bahrain Dinar</option>
													<option value="BAM">BAM&emsp;Bosnian Convertible
														Marka</option>
													<option value="BRL">R$&emsp;Brazilian Real</option>
													<option value="BGN">BGN&emsp;Bulgarian Lev</option>
													<option value="CAD">CAD&emsp;Canadian Dollar</option>
													<option value="XOF">XOF&emsp;CFA Franc BCEAO</option>
													<option value="CLP">CL$&emsp;Chilean Peso</option>
													<option value="CNY">CNY&emsp;Chinese Yuan</option>
													<option value="COP">COP&emsp;Colombian Peso</option>
													<option value="CZK">Kč&emsp;Czech Koruna</option>
													<option value="DKK">DKK&emsp;Danish Krone</option>
													<option value="EGP">EGP&emsp;Egyptian Pound</option>
													<option value="EUR">€&emsp;Euro</option>
													<option value="FJD">FJD&emsp;Fijian Dollar</option>
													<option value="GEL">GEL&emsp;Georgian Lari</option>
													<option value="HKD">HK$&emsp;Hong Kong Dollar</option>
													<option value="HUF">HUF&emsp;Hungarian Forint</option>
													<option value="INR">Rs.&emsp;Indian Rupee</option>
													<option value="IDR">Rp&emsp;Indonesian Rupiah</option>
													<option value="JPY">¥&emsp;Japanese Yen</option>
													<option value="JOD">JOD&emsp;Jordanian Dinar</option>
													<option value="KZT">KZT&emsp;Kazakhstani Tenge</option>
													<option value="KRW">KRW&emsp;Korean Won</option>
													<option value="KWD">KWD&emsp;Kuwaiti Dinar</option>
													<option value="MYR">MYR&emsp;Malaysian Ringgit</option>
													<option value="MXN">MXN&emsp;Mexican Peso</option>
													<option value="MDL">MDL&emsp;Moldovan Leu</option>
													<option value="NAD">NAD&emsp;Namibian Dollar</option>
													<option value="ILS">₪&emsp;New Israeli Sheqel</option>
													<option value="TWD">TWD&emsp;New Taiwan Dollar</option>
													<option value="NZD">NZD&emsp;New Zealand Dollar</option>
													<option value="NOK">NOK&emsp;Norwegian Krone</option>
													<option value="OMR">OMR&emsp;Omani Rial</option>
													<option value="PLN">zł&emsp;Polish Zloty</option>
													<option value="GBP">£&emsp;Pound Sterling</option>
													<option value="QAR">QAR&emsp;Qatari Riyal</option>
													<option value="RON">lei&emsp;Romanian New Leu</option>
													<option value="RUB">RUB&emsp;Russian Ruble</option>
													<option value="SAR">SAR&emsp;Saudi Arabian Riyal</option>
													<option value="SGD">S$&emsp;Singaporean Dollar</option>
													<option value="ZAR">ZAR&emsp;South African Rand</option>
													<option value="SEK">SEK&emsp;Swedish Krona</option>
													<option value="CHF">CHF&emsp;Swiss Franc</option>
													<option value="THB">THB&emsp;Thai Baht</option>
													<option value="TRY">TL&emsp;Turkish Lira</option>
													<option value="AED">AED&emsp;U.A.E. Dirham</option>
													<option value="USD">US$&emsp;U.S. Dollar</option>
													<option value="UAH">UAH&emsp;Ukraine Hryvnia</option>
												</select>
											</div>
											<div id="cc_loader" class="mysettings-input--loader">
												<i id="cc_spin" class="fa fa-spin fa-refresh"></i>
												<span id="cc_saving">Saving...</span>
												<span id="cc_saved">Saved</span>
											</div>
											<div id="cc_error" class="mysettings-input--error">An
												error occured.</div>
										</div>

									</div>
									<div class="s-content-item srow qx">
										<div class="s-content-item--label">Password</div>
										<div class="s-content-item--content">
											<div>
												<div>Click the button below to reset your email. We'll
													send you an email.</div>
												<button class="btn-mysettings pr-g2b" id="passwordreset">Change password</button>
												<i style="display: none;" id="cpassword_spinner" class="fa fa-spinner fa-spin cpspinner"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="modal fade" id="changePP" tabindex="-1" role="dialog"
		aria-labelledby="changeProfilePicture" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal_label">Change my profile
						picture</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="mysettings-profile-picture background">
						<img id="showPic" class="pp-img" width="130"
							src="https://q-fa.bstatic.com/static/img/profile/default_avatar_L/26e19e03bae083b98dcc8d134ec2b9be4107f442.png">
					</div>
					<form id="form-picture-upload" method="POST"
						action="http://localhost:8082/uploadprofilepicture">
						<input type="file" id="picture" enctype="multipart/form-data"
							name="picture" accept="image/*" onchange="pic(this);" />
					</form>
					<progress id="pp_progress" value="0"></progress>
					<span id="pp_progress__display"></span>
					<br />
					<span id="pp_notification"></span>
				</div>
			</div>
		</div>
	</div>
</div>