<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 23/08/2019
 * Time: 19.44
 */?>
<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 23/08/2019
 * Time: 19.40
 */?>
<!doctype html>
<html class="fixed">
<head>

    <!-- Basic -->
    <meta charset="UTF-8">
    <title>Dashboard Audite | Audit IT GOVENRANCE</title>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <!-- Web Fonts  -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/magnific-popup/magnific-popup.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/bootstrap-datepicker/css/datepicker3.css" />
    <!-- Specific Page Vendor CSS -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/jquery-ui/css/ui-lightness/jquery-ui-1.10.4.custom.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/morris/morris.css" />
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
<section class="body">

    <!-- start: header -->
    <header class="header">
        <div class="logo-container">
            <a href="" class="logo">
                <img src="<?= base_url() ?>assets/templates/images/logo.png" height="35" alt="JSOFT Admin" />
            </a>
            <div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
                <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
            </div>
        </div>

        <!-- start: search & user box -->
        <div class="header-right">

            <form action="" class="search nav-form">
                <div class="input-group input-search">
                    <input type="text" class="form-control" name="q" id="q" placeholder="Search...">
                    <span class="input-group-btn">
								<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
							</span>
                </div>
            </form>

            <span class="separator"></span>

            <ul class="notifications">
                <li>
                    <a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
                        <i class="fa fa-envelope"></i>
                    </a>

                    <div class="dropdown-menu notification-menu">

                    </div>
                </li>
            </ul>

            <span class="separator"></span>

            <div id="userbox" class="userbox">
                <a href="#" data-toggle="dropdown">
                    <figure class="profile-picture">
                        <img src="<?= base_url() ?>assets/templates/images/!logged-user.jpg" alt="Auzi MD" class="img-circle" data-lock-picture="assets/images/!logged-user.jpg" />
                    </figure>
                    <div class="profile-info" data-lock-name=" " data-lock-email="auzi.madani@students.uin-suska.ac.id">
                        <span class="name"><?= $this->session->userdata('nama_audite') ?></span>
                        <span class="role">Audite</span>
                    </div>

                    <i class="fa custom-caret"></i>
                </a>

                <div class="dropdown-menu">
                    <ul class="list-unstyled">
                        <li class="divider"></li>
                        <li>
                            <a role="menuitem" tabindex="-1" href="<?= base_url() ?>audite/profil"><i class="fa fa-user"></i> <?= $this->session->userdata('nama_audite') ?></a>
                        </li>
                        <li>
                            <a role="menuitem" tabindex="-1" href="<?= base_url()?>/audite/logout"><i class="fa fa-power-off"></i> Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- end: search & user box -->
    </header>
    <div class="inner-wrapper">
    <!-- end: header -->

