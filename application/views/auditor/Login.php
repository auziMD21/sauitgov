<!doctype html>
<html class="fixed">
	<head>
		<!-- Basic -->
        <title>Login</title>
		<meta charset="UTF-8">
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="Porto Admin - Responsive HTML5 Template">
		<meta name="author" content="okler.net">
		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<!-- Web Fonts  -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">
		<!-- Vendor CSS -->
		<link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/bootstrap-datepicker/css/datepicker3.css" />
		<!-- Theme CSS -->
		<link rel="stylesheet" href="<?= base_url() ?>assets/templates/stylesheets/theme.css" />
		<!-- Skin CSS -->
		<link rel="stylesheet" href="<?= base_url() ?>assets/templates/stylesheets/skins/default.css" />
		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="<?= base_url() ?>assets/templates/stylesheets/theme-custom.css">
		<!-- Head Libs -->
		<script src="<?= base_url() ?>assets/templates/vendor/modernizr/modernizr.js"></script>
	</head>
	<body>
		<!-- start: page -->
		<section class="body-sign">
			<div class="center-sign">

                <a href="/" class="logo pull-left">
                    <img src="<?= base_url() ?>assets/templates/images/logo.png" height="54" alt="Porto Admin" />
                </a>
				<div class="panel panel-sign">
					<div class="panel-title-sign mt-xl text-right">
						<h2 class="title text-uppercase text-bold m-none"><i class="fa fa-user mr-xs"></i> Sign In Perusahaan</h2>
					</div>
					<div class="panel-body">
						<center><h2 class = "alternative-font"> Assalamualaikum Silahkan Login</h2></center>

                        <form action="<?= base_url() ?>auditor/getLogin" method="POST">
								<div class="form-group mb-lg">
								<label>Username</label>
								<div class="input-group input-group-icon">
									<input name="username" type="text" class="form-control input-lg" />
									<span class="input-group-addon">
										<span class="icon icon-lg">
											<i class="fa fa-user"></i>
										</span>
									</span>
								</div>
							</div>

							<div class="form-group mb-lg">
								<div class="clearfix">
									<label class="pull-left">Password</label>
								</div>
								<div class="input-group input-group-icon">
									<input name="pass" type="password" class="form-control input-lg" />
									<span class="input-group-addon">
										<span class="icon icon-lg">
											<i class="fa fa-lock"></i>
										</span>
									</span>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-8">
									<div class="checkbox-custom checkbox-default">
										<input id="RememberMe" name="rememberme" type="checkbox"/>
									</div>
								</div>
								<div class="col-sm-4 text-right">
									<button type="submit" class="btn btn-primary hidden-xs">Sign In</button>
									<button type="submit" class="btn btn-primary btn-block btn-lg visible-xs mt-lg">Sign In</button>
								</div>
							</div>

							<span class="mt-lg mb-lg line-thru text-center text-uppercase">
								<span>or</span>
							</span>

						</form>
					</div>
				</div>
				<p class="text-center text-muted mt-md mb-md">&copy; Copyright 2019. All rights reserved. Author by <a href="https://colorlib.com">Auzi Madani</a>.</p>
			</div>
		</section>
		<!-- end: page -->
		<!-- Vendor -->
		<script src="<?= base_url() ?>assets/templates/vendor/jquery/jquery.js"></script>
		<script src="<?= base_url() ?>assets/templates/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="<?= base_url() ?>assets/templates/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="<?= base_url() ?>assets/templates/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="<?= base_url() ?>assets/templates/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="<?= base_url() ?>assets/templates/vendor/magnific-popup/magnific-popup.js"></script>
		<script src="<?= base_url() ?>assets/templates/vendor/jquery-placeholder/jquery.placeholder.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="<?= base_url() ?>assets/templates/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="<?= base_url() ?>assets/templates/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="<?= base_url() ?>assets/templates/javascripts/theme.init.js"></script>

	</body>
</html>