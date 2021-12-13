<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 20/08/2019
 * Time: 13.21
 */?>
<!doctype html>
<html class="fixed">
<head>

    <!-- Basic -->
    <meta charset="UTF-8">
    <title>Dashboard | Audit IT GOVENRANCE</title>
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
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/select2/select2.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/jquery-datatables-bs3/assets/css/datatables.css" />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/stylesheets/theme.css" />

    <!-- Skin CSS -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/stylesheets/skins/default.css" />

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates//stylesheets/theme-custom.css">

    <!-- Head Libs -->
    <script src="<?= base_url() ?>assets/templates/vendor/modernizr/modernizr.js"></script>
</head>
<body>
<section class="body">

    <!-- start: header -->
    <header class="header">
        <div class="logo-container">
            <a href="<?= base_url() ?>admin/home" class="logo">
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

							</span>
                </div>
            </form>

            <span class="separator"></span>

            <ul class="notifications">
                <li>

                </li>
            </ul>

            <span class="separator"></span>

            <div id="userbox" class="userbox">
                <a href="#" data-toggle="dropdown">
                    <figure class="profile-picture">
                        <img src="<?= base_url() ?>assets/templates/images/!logged-user.jpg" alt="Auzi MD" class="img-circle" data-lock-picture="assets/images/!logged-user.jpg" />
                    </figure>
                    <div class="profile-info" data-lock-name=" " data-lock-email="auzi.madani@students.uin-suska.ac.id">
                        <span class="name">Admin Super</span>
                        <span class="role">Administrator</span>
                    </div>

                    <i class="fa custom-caret"></i>
                </a>

                <div class="dropdown-menu">
                    <ul class="list-unstyled">
                        <li class="divider"></li>
                        <li>
                            <a role="menuitem" tabindex="-1" href=""><i class="fa fa-user"></i> My Profile</a>
                        </li>
                        <li>
                            <a role="menuitem" tabindex="-1" href="<?= base_url()?>/administrator/logout"><i class="fa fa-power-off"></i> Logout</a>
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
                                <a href="<?= base_url() ?>administrator/home">
                                    <i class="fa fa-home" aria-hidden="true"></i>
                                    <span>Dashboard</span>
                                </a>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-copy" aria-hidden="true"></i>
                                    <span>COBIT 4.1</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li>
                                        <a href="<?= base_url() ?>administrator/cobit">
                                            Apa Itu COBIT 4.1
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url() ?>administrator/it_bussines">
                                            IT Bussines
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url() ?>administrator/it_goals">
                                            IT Goals
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url() ?>administrator/it_prosess">
                                            IT Proses
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="<?= base_url() ?>administrator/audit">
                                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                                    <span>AUDIT IT GOVERNANCE</span>
                                </a>
                            </li>
                            <li class="nav-parent">
                                <a>
                                    <i class="fa fa-institution" aria-hidden="true"></i>
                                    <span>PERUSAHAAN</span>
                                </a>
                                <ul class="nav nav-children">
                                    <li>
                                        <a href="<?= base_url() ?>administrator/perusahaan">
                                            List Perusahaan
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?= base_url() ?>administrator/list_perusahaan1">
                                            Histori Perusahaan
                                        </a>
                                    </li>
                                </ul>
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