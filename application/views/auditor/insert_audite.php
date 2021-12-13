<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 30/08/2019
 * Time: 13.37
 */
?>
<div class="row">
    <div class="col-xs-12">
        <section class="panel form-wizard" id="w4">
            <header class="panel-heading">
            <center><h2 class="panel-title">Tambahkan Audite</h2></center>
            </header>
            <div class="panel-body">
                <div class="wizard-progress wizard-progress-lg">
                    <div class="steps-progress">
                        <div class="progress-indicator"></div>
                    </div>
                    <hr class="separator" />
                    <ul class="wizard-steps">
                        <li class="">
                            <a href="#w4-misi" data-toggle="tab"><span>1</span>Indikator</a>
                        </li>
                        <li>
                            <a href="#w4-bg" data-toggle="tab"><span>2</span>Bisnis Goals</a>
                        </li>
                        <li >
                            <a href="#w4-itg" data-toggle="tab"><span>3</span>IT Goals</a>
                        </li>
                        <li>
                            <a href="#w4-itp" data-toggle="tab"><span>4</span>IT Proses</a>
                        </li>
                        <li class="active">
                            <a href="#w4-itp" data-toggle="tab"><span>4</span>Audite</a>
                        </li>
                    </ul>
                </div>
                <form class="form-horizontal" method="post" enctype="multipart/form-data" action="<?= base_url() ?>audite/tambahaudite" novalidate="novalidate">
                    <div class="tab-content">
                        <div id="w4-inp" class="tab-pane active" >
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="w4-email">Nama</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="nama" id="w4-email" required>
                                    <input type="text"  hidden="hidden" name="id_perusahaan" value="<?= $id_perusahaan ?>">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="w4-email">Jabatan</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="jabatan" id="w4-email" required>
                                </div>
                            </div>   <div class="form-group">
                                <label class="col-sm-3 control-label" for="w4-email">Email</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="email" id="w4-email" required>
                                </div>
                            </div>
                            <hr class="separator" />
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="w4-email">Username</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="username" id="w4-email" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" for="w4-email">Password</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="pass" id="w4-email" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label"></label>
                        <div class="col-md-6">
                            <button class="btn btn-primary">Submit</button>
                            <a href="<?= base_url() ?>auditor/audite" class="btn btn-default">Back to Home</a>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>
</div>
</section>
</section>

<!-- Vendor -->
<!-- Vendor -->
<script src="<?= base_url() ?>assets/templates/vendor/jquery/jquery.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/bootstrap/js/bootstrap.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/nanoscroller/nanoscroller.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/magnific-popup/magnific-popup.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/jquery-placeholder/jquery.placeholder.js"></script>

<!-- Specific Page Vendor -->
<script src="<?= base_url() ?>assets/templates/vendor/jquery-validation/jquery.validate.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/pnotify/pnotify.custom.js"></script>
<script src="<?= base_url() ?>assets/templates/javascripts/theme.js"></script>

<!-- Theme Custom -->
<script src="<?= base_url() ?>assets/templates/javascripts/theme.custom.js"></script>

<!-- Theme Initialization Files -->
<script src="<?= base_url() ?>assets/templates/javascripts/theme.init.js"></script>


<!-- Examples -->
<script src="<?= base_url() ?>assets/templates/javascripts/forms/examples.wizard.js"></script>
</body>
</html>

