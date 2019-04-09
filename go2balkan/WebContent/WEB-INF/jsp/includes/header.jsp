
<%
	String loginPath = request.getScheme() + "://" + request.getServerName() + ":8082";
	// No need to declare this variable, but framework gives error. We could use basePath which is declared in homepage...  
	String x = request.getScheme() + "://" + request.getServerName() + ":8080";
%>
<div class="header">
	<div class="container">
		<div class="left">
			<a href="<%=x%>">
				<img src='<c:url value="/resources/pix/go2balkanColorfulYellow.png"/>'
					class="logo" id="logo" />
			</a>
			<!-- resources/pix/Logo2.png -->
		</div>
		<div class="right">
			<div class="dropdown">
				<button class="btn dropdown-toggle question" type="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
					<i class="fa fa-question-circle" style="font-size: 18px;"></i>
				</button>
				<ul class="dropdown-menu question-list">
					<li>
						<i class="fa fa-comment" aria-hidden="true"
							style="color: #0896FF;">
							<span>Give us feedback</span>
						</i>
					</li>
					<li>
						<i class="fa fa-question" aria-hidden="true"
							style="color: #0896FF;">
							<span>Customer Support Help</span>
						</i>
					</li>
					<li style="border-bottom: 0px;">
						<i class="fa fa-plus" aria-hidden="true" style="color: #0896FF;">
							<span>Add your property</span>
						</i>
					</li>
				</ul>
			</div>
			<div class="dropdown">
				<button class="btn dropdown-toggle currency"
					style="font-size: 18px;" type="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="true">
					<i class="fa fa-money"></i>
				</button>
				<ul class="dropdown-menu currency-list">
					<li>
						<span class="currency-symbol">BAM</span>
						<span class="currency-description">Bosnian Convertible Mark</span>
					</li>
					<li>
						<span class="currency-symbol">US$</span>
						<span class="currency-description">U.S. Dollar</span>
					</li>
					<li>
						<span class="currency-symbol">&#8356;</span>
						<span class="currency-description">Pound Sterling</span>
					</li>
					<li>
						<span class="currency-symbol">&#8378;</span>
						<span class="currency-description">Turkish Lira</span>
					</li>
					<li>
						<span class="currency-symbol">&#8364;</span>
						<span class="currency-description">Euro</span>
					</li>
					<li>
						<span class="currency-symbol">CAD</span>
						<span class="currency-description">Canadian Dollar</span>
					</li>
				</ul>
			</div>
			<div class="dropdown">
				<button class="btn dropdown-toggle language"
					style="font-size: 18px;" type="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="true">
					<i class="fa fa-flag"></i>
				</button>
				<ul class="dropdown-menu col-md-12 language-flags">
					<ul class="col-md-4">
						<li class="lang-flag">
							<img class="flag flag-dz" />
							Algeria
						</li>
						<li class="lang-flag">
							<img class="flag flag-bj" />
							Benin
						</li>
						<li class="lang-flag">
							<img class="flag flag-lr" />
							Liberia
						</li>
						<li class="lang-flag">
							<img class="flag flag-za" />
							South Africa
						</li>
						<li class="lang-flag">
							<img class="flag flag-ug" />
							Uganda
						</li>
						<li class="lang-flag">
							<img class="flag flag-br" />
							Brazil
						</li>
						<li class="lang-flag">
							<img class="flag flag-ca" />
							Canada
						</li>
						<li class="lang-flag">
							<img class="flag flag-ky" />
							Cayman Islands
						</li>
						<li class="lang-flag">
							<img class="flag flag-ae" />
							United Arab Emirates
						</li>
						<li class="lang-flag">
							<img class="flag flag-bv" />
							Bouvet Island
						</li>
						<li class="lang-flag">
							<img class="flag flag-br" />
							Brazil
						</li>
						<li class="lang-flag">
							<img class="flag flag-ca" />
							Canada
						</li>
						<li class="lang-flag">
							<img class="flag flag-ky" />
							Cayman Islands
						</li>
						<li class="lang-flag">
							<img class="flag flag-ae" />
							United Arab Emirates
						</li>
						<li class="lang-flag">
							<img class="flag flag-bv" />
							Bouvet Island
						</li>
					</ul>
					<ul class="col-md-4">
						<li class="lang-flag">
							<img class="flag flag-al" />
							Albania
						</li>
						<li class="lang-flag">
							<img class="flag flag-ba" />
							Bosnian
						</li>
						<li class="lang-flag">
							<img class="flag flag-ru" />
							Serbia
						</li>
						<li class="lang-flag">
							<img class="flag flag-hr" />
							Croatia
						</li>
						<li class="lang-flag">
							<img class="flag flag-me" />
							Montenegro
						</li>
						<li class="lang-flag">
							<img class="flag flag-br" />
							Brazil
						</li>
						<li class="lang-flag">
							<img class="flag flag-ca" />
							Canada
						</li>
						<li class="lang-flag">
							<img class="flag flag-ky" />
							Cayman Islands
						</li>
						<li class="lang-flag">
							<img class="flag flag-ae" />
							United Arab Emirates
						</li>
						<li class="lang-flag">
							<img class="flag flag-bv" />
							Bouvet Island
						</li>
					</ul>
					<ul class="col-md-4">
						<li class="lang-flag">
							<img class="flag flag-br" />
							Brazil
						</li>
						<li class="lang-flag">
							<img class="flag flag-ca" />
							Canada
						</li>
						<li class="lang-flag">
							<img class="flag flag-ky" />
							Cayman Islands
						</li>
						<li class="lang-flag">
							<img class="flag flag-ae" />
							United Arab Emirates
						</li>
						<li class="lang-flag">
							<img class="flag flag-bv" />
							Bouvet Island
						</li>
					</ul>
				</ul>
			</div>
		</div>
	</div>
</div>