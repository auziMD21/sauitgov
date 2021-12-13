<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 30/08/2019
 * Time: 15.28
 */
?>
<div class="row">
    <div class="col-xs-12">
        <section class="panel form-wizard" id="w4">
            <header class="panel-heading">

            </header>
            <div class="panel-body">
                <div class="wizard-progress wizard-progress-lg">
                    <div class="steps-progress">
                        <div class="progress-indicator"></div>
                    </div>
                    <hr class="separator" />
                    <ul class="wizard-steps">
                        <li class="">
                            <a href="#w4-misi" data-toggle="tab"><span>1</span>Permasalahan </a>
                        </li>
                        <li class="active">
                            <a href="#w4-bg" data-toggle="tab"><span>2</span>Bisnis Goals</a>
                        </li>
                        <li>
                            <a href="#w4-itg" data-toggle="tab"><span>3</span>IT Goals</a>
                        </li>
                        <li>
                            <a href="#w4-itp" data-toggle="tab"><span>4</span>IT Proses</a>
                        </li>
                        <li>
                            <a href="#w4-itp" data-toggle="tab"><span>4</span>Audite</a>
                        </li>
                    </ul>
                </div>

                <form class="form-horizontal" action="<?= base_url('auditor/saveBussinesGoalBu')?>" method="post" novalidate="novalidate">
                    <div class="tab-content">
                        <div id="w4-misi" class="tab-pane active">
                            <div id="w4-itg" class="tab-pane">
                                <center><h2 class="panel-title">Korelasi Permasahalah Dengan Bussines Goal</h2></center>
                                <hr class="separator" />
                                <table class="table table-bordered table-striped" id="datatable-edittable">
                                    <thead>
                                    <tr>
                                        <th>Misi/Tujuan</th>
                                        <th width="50%">Bussines Goals COBIT 4.1</th>
                                    </tr>

                                    </thead>
                                    <tbody>
                                    <?php foreach($masalah as $m): ?>
                                        <tr>
                                            <td><?= $m ?></td>
                                            <td>
                                                <?php foreach($it_bussines as $it): ?>
                                                    <input  type="checkbox" name="<?= $it['nomor'] ?>" value="<?= $it['nomor'] ?>"><b><?= $it['keterangan'] ?></b>(<?= $it['kategori'] ?>)<br>
                                                <?php endforeach; ?>
                                            </td>

                                        </tr>
                                    <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-11"></div>
                                <div class="col-lg-1">
                                    <button class="btn btn-primary" type="submit">Simpan</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </section>
    </div>
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
<script src="<?= base_url() ?>assets/templates/script.js"></script>
<!-- Theme Custom -->
<script src="<?= base_url() ?>assets/templates/javascripts/theme.custom.js"></script>

<!-- Theme Initialization Files -->
<script src="<?= base_url() ?>assets/templates/javascripts/theme.init.js"></script>


<!-- Examples -->
<script src="<?= base_url() ?>assets/templates/javascripts/forms/examples.wizard.js"></script>

</body>
</html>

