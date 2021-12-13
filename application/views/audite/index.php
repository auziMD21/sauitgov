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
            <center><h2 class="panel-title">Kuisioner Audite Tata Kelola Teknologi Informasi Menggunakan COBIT 4.1</h2></center>
            </header>
            <div class="panel-body">
                <form class="form-horizontal" method="post" enctype="multipart/form-data" action="<?= base_url() ?>audite/rekapAudit/" novalidate="novalidate">
                    <table class="table table-bordered" id="datatable-edittable">
                        <?php
                        //echo "<pre>";print_r($tampil); exit;
                        $old = '';
                        $new = '';
                        ?>
                        <?php $n = 1; foreach ($tampil as $u){
                            $new = $u->kode_subdomain;

                            if($new != $old){
                            ?>
                            <tr>
                                <td colspan="9"><b><?= $u->kode_subdomain ?> - <?= $u->keterangan_domain ?></b></td>
                            </tr>
                                <tr>

                                        <td colspan="9" align="justify">
                                            <p><b>Keterangan</b></p>
                                                <?= $u->non_existent ?> <br><br>
                                                <?= $u->initial ?><br><br>
                                                <?= $u->repeatable ?> <br><br>
                                                <?= $u->defined ?><br><br>
                                                <?= $u->managed ?> <br><br>
                                                <?= $u->optimised ?>
                                        </td>
                                </tr>
                                <?php } ?>
                            <tr>
                                <td><?=$n++;?></td>
                                <td><?=$u->pertanyaan?></td>
                                <td>0 <input type="radio" name="maturuty<?= $n ?>" required value="<?=$u->id_quisioner?>@0"></td>
                                <td>1 <input type="radio" name="maturuty<?= $n ?>" required value="<?=$u->id_quisioner?>@1"></td>
                                <td>2 <input type="radio" name="maturuty<?= $n ?>" value="<?=$u->id_quisioner?>@2" required></td>
                                <td>3 <input type="radio" name="maturuty<?= $n ?>" value="<?=$u->id_quisioner?>@3" required></td>
                                <td>4 <input type="radio" name="maturuty<?= $n ?>" value="<?=$u->id_quisioner?>@4" required></td>
                                <td>5 <input type="radio" name="maturuty<?= $n ?>" value="<?=$u->id_quisioner?>@5"required></td>
                                </td>
                            </tr>
                        <?php
                        $old = $u->kode_subdomain;
                        }?>
                        </tbody>
                    </table>
                    <div class="form-group">
                        <div class="col-lg-11"></div>
                        <div class="col-lg-1">
                            <a href="<?=base_url('audite/updateStatus/'.$audite['id'] .'/0')?>"> <button class="btn btn-primary" type="submit">Simpan</button></a>
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

