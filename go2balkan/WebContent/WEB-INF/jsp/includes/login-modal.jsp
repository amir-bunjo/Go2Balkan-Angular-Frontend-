<div class="modal fade bs-example-modal-sm" id="signinModal"
	class="modal-signin" tabindex="-1" role="dialog"
	aria-labelledby="signinModal">
	<div id="modal_dialog" class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<div class="modal-header__buttons">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<!-- <a id="fbLogin" class="social-button sb-facebook">
						<span class="social-button--label">Facebook</span>
					</a>
					<a onClick="liLogin()" id="linkedinLogin"
						class="social-button sb-linkedin">
						<span class="social-button--label">Linkedin</span>
					</a>
					<div style="margin-top: -34px; margin-left: 380px;" class="g-signin2" data-height="44" data-width="127" data-onsuccess="onSignIn"></div>
				</div>
				<hr class="hr-text" data-content="OR"> -->
				</div>
				<div class="modal-body" id="modal_body"></div>
			</div>
		</div>
	</div>
	<div style="display: none; visibility: hidden;" id="hl"></div>
	<div style="display: none; visibility: hidden;" id="hq"></div>
</div>

<script type="text/javascript">
	function w() {

		var setUrl = window.location.protocol + "//" + window.location.hostname
				+ ":8082";

		var xhr = new XMLHttpRequest();
		xhr.open("GET", setUrl + "/cregister");
		xhr.onload = function() {
			if (xhr.status === 200) {
				var load = document.getElementById("hq");
				load.innerHTML = xhr.responseText;
				var modal = document.getElementById("modal_body");
				modal.innerHTML = document.getElementById("login_page").innerHTML;
			}
		};
		xhr.send();
		////////////////////
	}
	/* }); */
</script>

<script type="text/javascript">
	function q() {

		var setUrl = window.location.protocol + "//" + window.location.hostname
				+ ":8082";

		var xhr = new XMLHttpRequest();
		xhr.open("GET", setUrl + "/clogin#login_page");
		xhr.onload = function() {
			if (xhr.status === 200) {
				var load = document.getElementById("hl");
				load.innerHTML = xhr.responseText;
				var modal = document.getElementById("modal_body");
				modal.innerHTML = document.getElementById("login_page").innerHTML;
			}
		};
		xhr.send();
		////////////////////
	}
	/* }); */
</script>