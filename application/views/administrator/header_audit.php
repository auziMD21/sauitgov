<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 20/08/2019
 * Time: 13.27
 */?>
<!doctype html>
<html class="fixed sidebar-left-collapsed">
<head>

    <!-- Basic -->
    <meta charset="UTF-8">
    <title>Audit | Audit IT GOVENRANCE</title>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <!-- Web Fonts  -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

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
            <a href="<?= base_url() ?>admin/audit" class="logo">
                <img src="<?= base_url() ?>assets/templates/images/logo.png" height="35" alt="Porto Admin" />
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
                                <a href="#" class="view-more">View All</a>
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
                        <span class="name">Admin Super</span>
                        <span class="role">administrator</span>
                    </div>

                    <i class="fa custom-caret"></i>
                </a>

                <div class="dropdown-menu">
                    <ul class="list-unstyled">
                        <li class="divider"></li>
                        <li>
                            <a role="menuitem" tabindex="-1" href=""><i class="fa fa-user"></i>Admin Super</a>
                        </li>
                        <li>
                            <a role="menuitem" tabindex="-1" href="<?= base_url()?>administrator/logout"><i class="fa fa-power-off"></i> Logout</a>
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
                            <li>
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
                            <li class="nav-active" >
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
                <h2>Audit IT GOVERNACE</h2>

                <div class="right-wrapper pull-right">
                    <ol class="breadcrumbs">
                        <li>
                            <a href="index.php">
                                <i class="fa fa-home"></i>
                            </a>
                        </li>
                        <li><span>Audit</span></li>
                    </ol>

                    <a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
                </div>
            </header>

            <!-- start: page -->
            <section class="content-with-menu mailbox">
                <div class="content-with-menu-container" data-mailbox data-mailbox-view="folder">
                    <div class="inner-menu-toggle">
                        <a href="#" class="inner-menu-expand" data-open="inner-menu">
                            Show Menu <i class="fa fa-chevron-right"></i>
                        </a>
                    </div>

                    <menu id="content-menu" class="inner-menu" role="menu">
                        <div class="nano">
                            <div class="nano-content">

                                <div class="inner-menu-toggle-inside">
                                    <a href="#" class="inner-menu-collapse">
                                        <i class="fa fa-chevron-up visible-xs-inline"></i><i class="fa fa-chevron-left hidden-xs-inline"></i> Hide Menu
                                    </a>

                                    <a href="#" class="inner-menu-expand" data-open="inner-menu">
                                        Show Menu <i class="fa fa-chevron-down"></i>
                                    </a>
                                </div>

                                <div class="inner-menu-content">
                                    <a href="<?=base_url() ?>administrator/form_auditor" class="btn btn-block btn-primary btn-md pt-sm pb-sm text-md">
                                        <i class="fa fa-plus-square mr-xs"></i>
                                        Daftarkan Auditor
                                    </a>

                                    <ul class="list-unstyled mt-xl pt-md">
                                        <li>
                                            <a href="<?=base_url() ?>administrator/audit" class="menu-item">Data Auditor</a>
                                        </li>
                                        <li>
                                            <a href="<?=base_url()?>administrator/pertanyaan" class="menu-item">Data Pertanyaan</a>
                                        </li>
                                        <li>
                                            <a href="<?=base_url()?>administrator/progres" class="menu-item">Progres Audit</a>
                                        </li>
                                        <li>
                                            <a href="<?=base_url()?>administrator/dataaudit" class="menu-item">Data Audit</a>
                                        </li>
                                    </ul>

                                    <hr class="separator" />
                                </div>
                            </div>
                        </div>
                    </menu>
                    <div class="inner-body mailbox-folder">