<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 06/11/2019
 * Time: 14.57
 */?>
<html>
<head>
    <title>Document Rekap Data Audit</title>
    <!-- Web Fonts  -->
    <!-- Basic -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/magnific-popup/magnific-popup.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/bootstrap-datepicker/css/datepicker3.css" />

    <!-- Specific Page Vendor CSS -->
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
            <a href="<?= base_url() ?>perusahaan/home" class="logo">
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
                        <span class="badge">4</span>
                    </a>

                    <div class="dropdown-menu notification-menu">
                        <div class="notification-title">
                            <span class="pull-right label label-default">230</span> Messages
                        </div>
                        <div class="content">
                            <div class="text-right">
                                <a href="#" class= "view-more">View All</a>
                            </div>
                        </div>
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
                        <span class="name"><?= $this->session->userdata('nama_lengkap') ?></span>
                        <span class="role">Administrator</span>
                    </div>

                    <i class="fa custom-caret"></i>
                </a>

                <div class="dropdown-menu">
                    <ul class="list-unstyled">
                        <li class="divider"></li>
                        <li>
                            <a role="menuitem" tabindex="-1" href="<?= base_url() ?>auditor/profil"><i class="fa fa-user"></i> <?= $this->session->userdata('nama_lengkap') ?></a>
                        </li>
                        <li>
                            <a role="menuitem" tabindex="-1" href="<?= base_url()?>auditor/logout"><i class="fa fa-power-off"></i> Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- end: search & user box -->
    </header>
    <!-- end: header -->

    <div class="inner-wrapper">
        <!-- start: sidebar -->
        <aside id="sidebar-left" class="sidebar-left">

            <div class="sidebar-header">
                <div class="sidebar-title">
                    Navigation
                </div>
                <div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
                    <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
                </div>
            </div>

            <div class="nano">
                <div class="nano-content">
                    <nav id="menu" class="nav-main" role="navigation">
                        <ul class="nav nav-main">
                            <li class="nav-active">
                                <a href="<?= base_url() ?>auditor/home">
                                    <i class="fa fa-home" aria-hidden="true"></i>
                                    <span>DASHBOARD</span>
                                </a>
                            </li>
                            <li>
                                <a href="<?= base_url() ?>auditor/audit">
                                    <i class="fa fa-institution" aria-hidden="true"></i>
                                    <span>AUDIT PERUSAHAAN</span>
                                </a>
                            </li>
                            <li>
                                <a href="<?= base_url() ?>auditor/audite">
                                    <i class="fa fa-users" aria-hidden="true"></i>
                                    <span>AUDITE</span>
                                </a>
                            </li>
                            <li>
                                <a href="<?= base_url() ?>auditor/progres">
                                    <i class="fa fa-signal" aria-hidden="true"></i>
                                    <span>PROGRES AUDIT</span>
                                </a>
                            </li>
                            <li>
                                <a href="<?= base_url() ?>auditor/histori_audit">
                                    <i class="fa fa-history" aria-hidden="true"></i>
                                    <span>HISTORI AUDIT</span>
                                </a>
                            </li>
                            <li>
                                <a href="<?= base_url() ?>auditor/grafik">
                                    <i class="fa fa-bar-chart-o" aria-hidden="true"></i>
                                    <span>GRAFIK MATURITY</span>
                                </a>
                            </li>

                        </ul>
                    </nav>
                </div>

            </div>

        </aside>
        <!-- end: sidebar -->
        <section role="main" class="content-body">
            <header class="page-header">
                <h2>Dashboard</h2>

                <div class="right-wrapper pull-right">
                    <ol class="breadcrumbs">
                        <li>
                            <a href="index.php">
                                <i class="fa fa-home"></i>
                            </a>
                        </li>
                        <li><span>Dashboard</span></li>
                    </ol>

                    <a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
                </div>
            </header>
