<%@ page language="java" pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Recouv-OIDC-Provider - Login (Port Annabel)</title>
	<!-- jQuery -->
	<script src="include/bootstrap/js/jquery-2.2.3.min.js"></script>
	<!-- js cookie (https://github.com/js-cookie/js-cookie) 
	A simple, lightweight JavaScript API for handling browser cookies -->
	<script src="include/bootstrap/js/js.cookie.js"></script>
	<!-- Script page courante -->
	<!-- PortAnnabel CSS -->
	<link href="include/portAnnabel/css/portAnnabel.css" rel="stylesheet">

	<style type="text/css">
		/*! sb-admin-2.css */

		body {
			background-color: #f8f8f8;
		}

		.login-panel {
			margin-top: 25%;
		}

		/*! login.scss */

		.links {
			text-decoration: underline;
		}

		.button-md {
			text-transform: initial;
		}

		.validator-error {
			color: color($colors, danger);
			padding-top: 8px;
			padding-left: 16px;
		}

		ion-input {
			border: 1px solid #BFC9E1;
			background: #F9F9F9;
			font-size: 0.9em;
			padding-left: 3px;
		}

		.half-page {
			width: 50%;
			height: 60px;
			text-align: -webkit-center;
			text-align: -moz-center;
		}
        ion-footer {
			background-color: #ffffff;
		}
		.page-footer {
			border-top: 1px solid #aca8a8;
		}

		.white-space {
			height: 10px;
		}

		.stockId {
			color: black;
		}

		#cbStockId {
			margin-bottom: 10px;
		}

		.contientPage {
			display: inline-block;
		}
	</style>
</head>

<body>
	<ion-app class="app-root app-root-md md platform-core enable-hover" ng-version="5.0.1">
		<ng-component class="app-root">
			<ion-nav swipebackenabled="false" class="menu-content menu-content-overlay">
				<page-login class="ion-page show-page" style="z-index: 100;">
					<ion-header class="animated fadeIn header header-md">
						<ion-navbar class="no-border toolbar toolbar-md toolbar-md-light" color="light" hidebackbutton="">
							<div class="toolbar-background toolbar-background-md"></div>
							<div class="toolbar-content toolbar-content-md">
								<ion-title class="title title-md">
									<div class="toolbar-title toolbar-title-md">
										<img alt="logo" src="include/portAnnabel/assets/imgs/logo.svg" height="40">
									</div>
								</ion-title>
							</div>
						</ion-navbar>
					</ion-header>
					<ion-content class="animated fadeIn login auth-page content content-md" padding="">
						<div class="fixed-content" style="margin-top: 56px;"></div>
						<div class="scroll-content" style="margin-top: 56px;">
							<div class="login-content">
								<div padding-horizontal="" text-center="">
									<h1 class="dark text text-md" ion-text="" no-margin="">
										Identification
									</h1>
								</div>
								<form class="list-form" novalidate="">
									<ion-grid class="grid" margin-top="">
										<ion-item id="item-identifiant" class="item item-block item-md item-input ng-pristine ng-touched">
											<div class="item-inner">
												<div class="input-wrapper">
													<!---->
													<ion-input clearinput="" name="identifiant" placeholder="Courriel / N° de sécurité sociale" type="text" class="input input-md ng-touched">
														<!---->
														<input class="text-input text-input-md" dir="auto" aria-labelledby="lbl-0" autocomplete="off" autocorrect="off" placeholder="Courriel / N° de sécurité sociale"
														    clearinput="" name="identifiant" id="identifiant" type="text">
														<!---->
														<!---->
														<!-- -->
														<button id="clear-input-identifiant" class="text-input-clear-icon button button-md button-clear button-clear-md" clear=""
														    ion-button="" tabindex="-1" type="button">
															<span class="button-inner"></span>
															<div class="button-effect"></div>
														</button>
														<!--
                                       <div class="input-cover"></div>
                                       -->
													</ion-input>
												</div>
												<!---->
											</div>
											<div class="button-effect"></div>
										</ion-item>
										
										<div id="div-error-identifiant" class="validator-error hide">
											Veuillez entrer un courriel ou n° de sécurité sociale (13 caractères) valide.
										</div>
                                         <span class="space"></span>
										<div id="cbStockId">
											<input type="checkbox" name="remember" id="remember" unchecked/>
											<label for="remember">Mémoriser mon identifiant</label>
										</div>

									</ion-grid>
									<ion-grid class="grid">
										<ion-item id="item-password" class="item item-block item-md item-input ng-pristine ng-touched">
											<div class="item-inner">
												<div class="input-wrapper">
													<!---->
													<ion-input clearinput="" name="password" placeholder="Mot de passe" type="password" class="input input-md ng-touched">
														<!---->
														<input class="text-input text-input-md" dir="auto" aria-labelledby="lbl-1" autocomplete="off" autocorrect="off" placeholder="Mot de passe"
														    clearinput="" name="password" id="password" type="password">
														<!---->
														<!---->
														<!-- -->
														<button id="clear-input-password" class="text-input-clear-icon button button-md button-clear button-clear-md" clear="" ion-button=""
														    tabindex="-1" type="button">
															<span class="button-inner"></span>
															<div class="button-effect"></div>
														</button>
														<!--
                                       <div class="input-cover"></div>
                                       -->
													</ion-input>
												</div>
												<!---->
											</div>
											<div class="button-effect"></div>
										</ion-item>
										<!-- -->
										<div id="div-error-password" class="validator-error hide">
											Votre mot de passe doit comporter au minimum un chiffre et une lettre sur 8 caractères sans caractères spéciaux.
										</div>

									</ion-grid>
								</form>

								<p id="p-lostpassword" color="dark" ion-text="" tappable="" text-right="" class="text text-md links">Mot de passe oublié</p>

								<div>
									<button id="btn-valider" block="" color="dark" icon-start="" ion-button="" tappable="" class="button button-md button-default button-default-md button-block button-block-md button-md-dark"
									    disabled="">
										<span class="button-inner">
											Se connecter
										</span>
										<div class="button-effect"></div>
									</button>
								</div>

								<div margin-top="" text-left="">
									<span id="p-inscription" color="dark" ion-text="" tappable="" class="text text-md links">S'inscrire</span>
								</div>

							</div>
						</div>
					</ion-content>
					<ion-footer class="hide-on-keyboard-open">
						<footer class="page-footer">
							<div class="white-space"></div>
							<div class="row">
								<div class="half-page">
									<a>
										<div id="p-guide" class="contientPage">
											<div class="item-Guide"></div>
											Guide utilisateur
										</div>
									</a>
								</div>
								<div class="half-page">
									<a>
										<div id="p-mentions" class="contientPage">
											<div class="item-Mentions"></div>
											Mentions légales
										</div>
									</a>
								</div>
							</div>
						</footer>
					</ion-footer>
				</page-login>
				<div class="nav-decor"></div>
			</ion-nav>
		</ng-component>
		<div overlay-portal=""></div>
		<div overlay-portal=""></div>

		<!-- Loading -->
		<div id="loading-portal" class="loading-portal hide">
			<ion-loading role="dialog" class="loading-md" style="z-index: 9999;">
				<ion-backdrop disable-activated="" role="presentation" tappable="" class="backdrop-no-tappable" style="opacity: 0.5;"></ion-backdrop>
				<div class="loading-wrapper" style="opacity: 1; transform: scale(1);">
					<!---->
					<div class="loading-spinner">
						<ion-spinner class="spinner spinner-md spinner-crescent spinner-md-crescent">
							<!---->
							<svg viewBox="0 0 64 64" style="animation-duration: 750ms;">
								<circle transform="translate(32,32)" r="26"></circle>
							</svg>
							<!---->
						</ion-spinner>
					</div>
					<!---->
					<div class="loading-content">
						<div class="dark">Authentification en cours ...</div>
					</div>
				</div>
			</ion-loading>
		</div>

		<!-- Panel Alert -->
		<ion-alert id="alert-panel" role="dialog" class="alert-md hide" aria-labelledby="alert-hdr-0" aria-describedby="alert-subhdr-0"
		    style="z-index: 10000;">
			<ion-backdrop id="alert-panel-backdrop" disable-activated="" role="presentation" tappable="" style="opacity: 0.5;"></ion-backdrop>
			<div class="alert-wrapper" style="opacity: 1; transform: scale(1);">
				<div class="alert-head">
					<!---->
					<h2 class="alert-title" id="alert-hdr-0">Connexion impossible</h2>
					<!---->
					<h3 class="alert-sub-title" id="alert-subhdr-0"></h3>
				</div>
				<div class="alert-message" id="alert-msg-0"></div>
				<!---->
				<div class="alert-button-group">
					<!---->
					<button ion-button="alert-button" id="close-alert-panel" class="alert-button alert-button-md alert-button-default alert-button-default-md">
						<span class="button-inner">OK</span>
						<div class="button-effect"></div>
					</button>
				</div>
			</div>
		</ion-alert>

		<div class="toast-portal"></div>
		<div class="click-block click-block-enabled"></div>
	</ion-app>


	<script>
		$(function () {
			// Extract requestOrigin
			function getRequestOrigin() {
				console.log(" > requestOrigin ");
				if (window.location.href.indexOf('requestOrigin=') == -1) {
					if (window.location.search.substring(1) != '') {
						return escape(window.location.search.substring(1)).replace(new RegExp('\\+', 'g'), '%2B');
					}
					return "";
				}
				return window.location.href.substring(window.location.href.indexOf('requestOrigin=') + 'requestOrigin='.length);
			}

			// Reactivation du btn Valider si champs OK (par defaut, disabled)
			var validIdentifiant = function () {
				var PURE_EMAILNNI_REGEXP =
					/^[a-zA-Z0-9]{13}|(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				return ($("#identifiant").val().match(PURE_EMAILNNI_REGEXP) != null);
			};
			var validPassword = function () {
				var PASSWORD_REGEXP = /^[a-zA-Z0-9]{8}$/;
				return ($("#password").val().match(PASSWORD_REGEXP) != null);
			};
			var activeSubmit = function () {
				$("#btn-valider").attr('disabled', '');
				if (validIdentifiant() && validPassword()) {
					$("#btn-valider").removeAttr('disabled');
				}
			};

			// Refresh Class Identifiant
			var refreshClassIdentifiant = function () {
				$("#item-identifiant").removeClass("ng-valid");
				$("#item-identifiant").removeClass("ng-invalid");
				$("#div-error-identifiant").addClass("hide");
				if ($("#identifiant").val() != "") {
					$("#item-identifiant").addClass("input-has-value");
					$("#item-identifiant").addClass("item-input-has-value");
				} else {
					$("#item-identifiant").removeClass("input-has-value");
					$("#item-identifiant").removeClass("item-input-has-value");
				}
				if (validIdentifiant()) {
					$("#item-identifiant").addClass("ng-valid");
				} else {
					$("#item-identifiant").addClass("ng-invalid");
					$("#div-error-identifiant").removeClass("hide");
				}
				activeSubmit();
			};
			// Refresh Class Password
			var refreshClassPassword = function () {
				$("#item-password").removeClass("ng-valid");
				$("#item-password").removeClass("ng-invalid");
				$("#div-error-password").addClass("hide");
				if ($("#password").val() != "") {
					$("#item-password").addClass("input-has-value");
					$("#item-password").addClass("item-input-has-value");
				} else {
					$("#item-password").removeClass("input-has-value");
					$("#item-password").removeClass("item-input-has-value");
				}
				if (validPassword()) {
					$("#item-password").addClass("ng-valid");
				} else {
					$("#item-password").addClass("ng-invalid");
					$("#div-error-password").removeClass("hide");
				}
				activeSubmit();
			};

			// Controle de saisie sur champ identifiant
			$("#identifiant").on('input', function () {
				refreshClassIdentifiant();
			});
			// Controle de saisie sur champ password
			$("#password").on('input', function () {
				refreshClassPassword();
			});

			// Focus sur champ identifiant
			$("#identifiant").focus(function () {
				$("#item-identifiant").addClass("input-has-focus");
				$("#item-identifiant").addClass("item-input-has-focus");
				refreshClassIdentifiant();
			}).blur(function () {
				setTimeout(function () {
					$("#item-identifiant").removeClass("input-has-focus");
					$("#item-identifiant").removeClass("item-input-has-focus");
					refreshClassIdentifiant();
				}, 100);
			});
			// Focus sur champ password
			$("#password").focus(function () {
				$("#item-password").addClass("input-has-focus");
				$("#item-password").addClass("item-input-has-focus");
				refreshClassPassword();
			}).blur(function () {
				setTimeout(function () {
					$("#item-password").removeClass("input-has-focus");
					$("#item-password").removeClass("item-input-has-focus");
					refreshClassPassword();
				}, 100);
			});

			// Clear Identifiant
			$("#clear-input-identifiant").click(function (event) {
				$("#identifiant").val("");
			});
			// Clear Password
			$("#clear-input-password").click(function (event) {
				$("#password").val("");
			});

			// Ferme la fenetre alerte
			$("#close-alert-panel").click(function (event) {
				$("#alert-panel").addClass("hide");
			});
			$("#alert-panel-backdrop").click(function (event) {
				$("#alert-panel").addClass("hide");
			});
			//read from cookies 
			var remember = Cookies.get('remember');
			console.log(remember);
			if (remember == 'true') {
				var identifiant = Cookies.get('identifiant');
				console.log(identifiant);
				$('#identifiant').attr("value", identifiant);
				$('#remember').prop("checked",true);
			}
			// BtnValider
			$("#btn-valider").click(function (event) {
				if ($('#remember').is(":checked")) {
					var identifiant = $('#identifiant').val();
					// set cookies to expire in 180 days
					Cookies.set('identifiant', identifiant, {
						expires: 180
					});
					Cookies.set('remember', true, {
						expires: 180
					});
				} else {
					// reset cookies
					Cookies.set('identifiant', null);
					Cookies.set('remember', null);
				}
				event.preventDefault();
				// Affichage Loading
				$("#loading-portal").removeClass("hide");
				// Recuperation urlFormLogin
				var url = "${urlFormLogin}";
				$.ajax({
					type: 'POST',
					url: url,
					dataType: 'json',
					contentType: 'application/json',
					data: JSON.stringify({
						"username": $("#identifiant").val(),
						"password": $("#password").val(),
						"requestOrigin": getRequestOrigin()
					}),
					complete: function (dataResult, status, response) {
						// Redirection
						var status = dataResult.responseJSON.status;
						if (status == "302") {
							console.log(" > status " + status);
							var redirect = dataResult.responseJSON.redirect;
							console.log("redirect: " + redirect);
							// Redirection
							window.location.href = redirect;
							// Dans les autres cas, on reste sur la page courante
						} else {
							console.log(" > status " + status);
							var contentHtml = "Une erreur s'est produite.";
							if (dataResult && dataResult.responseJSON && dataResult.responseJSON.error) {
								contentHtml = dataResult.responseJSON.error;
							}
							console.log("erreur: " + contentHtml);
							// Affichage message
							$("#alert-subhdr-0").html(contentHtml);
							$("#alert-panel").removeClass("hide");
							// Masquage Loading
							$("#loading-portal").addClass("hide");
						}
					}
				});
			});

			// Mot de passe oublie
			$("#p-lostpassword").click(function (event) {
				console.log(" > lostpassword ");
				event.preventDefault();
				// Redirection
				window.location.href = "${link_lostpassword}";
			});
			// S'inscrire
			$("#p-inscription").click(function (event) {
				console.log(" > inscription ");
				event.preventDefault();
				// Redirection
				window.location.href = "${link_inscription}";
			});
			//Redirect page guide utilisateur
			$("#p-guide").click(function (event) {
				console.log(" > show page guide ");
				event.preventDefault();
				// Redirection
				window.location.href = "${link_guide}";
				//mapping to "http://localhost/guide";
			});
			//Redirect page mentions légales
			$("#p-mentions").click(function (event) {
				console.log(" > show page mentions ");
				event.preventDefault();
				// Redirection
				window.location.href = "${link_mentions}";
				//mapping to "http://localhost/mentions";
			});




			// Log requestOrigin
			var requestOrigin = getRequestOrigin();
			if (requestOrigin != "") {
				console.log(requestOrigin);
			} else {
				console.log("pas de requestOrigin");
			}

			// Extract name from href
			$.extract = function (name, href) {
				var results = new RegExp('[\?&#]' + name + '=([^&#]*)').exec(href);
				if (results == null) {
					return null;
				} else {
					return results[1] || 0;
				}
			};
			// Login hint
			var login_hint = decodeURIComponent($.extract("login_hint", decodeURIComponent(requestOrigin)));
			if (login_hint && login_hint != "null" && login_hint != "") {
				$("#identifiant").val(login_hint);
			}
			// Ajout logo pour guide utilisateur et mentions légales	
			$('.item-Guide').width(30).height(30).append(
							'<img id="imgGuide" src="include/portAnnabel/assets/imgs/user_guide_rounded.svg"/>');
						$('.item-Mentions').width(30).height(30).append(
							'<img id="imgGuide" src="include/portAnnabel/assets/imgs/balance_rounded.svg"/>');
					});
	</script>
</body>

</html>