<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 22/08/2019
 * Time: 12.13
 */?>

<section class="panel">
    <header class="panel-heading">
        <h2 class="panel-title">Data Audit</h2>
    </header>
    <div class="panel-body">
        <table class="table table-bordered table-striped" id="datatable-ajax">
            <thead>
            <tr>
                <th>NO</th>
                <th>Nama Perusahaan</th>
                <th>Auditor</th>
                <th>Waktu Audit</th>
                <th>Maturity Level</th>
                <th>Kategori</th>
            </tr>
            </thead>
            <tbody>
            <?php $n = 1; foreach ($tampil as $u){ ?>
                <tr>
                    <td><?= $n++?></td>
                    <td><?= $u->nama_perusahaan?></td>
                    <td><?= $u->nama_lengkap?></td>
                    <td><?= $u->waktu_pelaksanaan?></td>
                    <td><?php
                        if($u->partisipan!=0){ ?>
                            <?=round(($u->rid_quisioner/$u->partisipan),1)?>
                        <?php }
                        else{
                            echo 0;
                        }
                        ?>
                    </td>
                    <td>
                        <?php
                        if(($u->rid_quisioner/$u->partisipan)>=4.5&& ($u->rid_quisioner/$u->partisipan) <= 5) {
                            ?>
                            Optimised
                        <?php }
                        else if (($u->rid_quisioner/$u->partisipan)>=3.5&& ($u->rid_quisioner/$u->partisipan)<=4.4){
                            ?>
                            Managed
                        <?php }
                        else if (($u->rid_quisioner/$u->partisipan)>=2.5&&($u->rid_quisioner/$u->partisipan)<=3.4){
                            ?>
                            Defined
                        <?php }
                        else if (($u->rid_quisioner/$u->partisipan)>=1.5&& ($u->rid_quisioner/$u->partisipan)<=2.4){
                            ?>
                            Repeatable
                        <?php }
                        else if (($u->rid_quisioner/$u->partisipan)>=0.5&&($u->rid_quisioner/$u->partisipan)<=1.4){
                            ?>
                            Initial
                        <?php }
                        else{
                            ?>
                            Non existent
                            <?php
                        }
                        ?>
                    </td>
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>
    </div>
</section>
<!-- end: page -->
</section>
</div>
</section>

<!-- Vendor -->
<script src="<?= base_url() ?>assets/templates/vendor/jquery/jquery.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/bootstrap/js/bootstrap.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/nanoscroller/nanoscroller.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/magnific-popup/magnific-popup.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/jquery-placeholder/jquery.placeholder.js"></script>

<!-- Specific Page Vendor -->
<script src="<?= base_url() ?>assets/templates/vendor/select2/select2.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
<script src="<?= base_url() ?>assets/templates/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>

<!-- Theme Base, Components and Settings -->
<script src="<?= base_url() ?>assets/templates/javascripts/theme.js"></script>

<!-- Theme Custom -->
<script src="<?= base_url() ?>assets/templates/javascripts/theme.custom.js"></script>

<!-- Theme Initialization Files -->
<script src="<?= base_url() ?>assets/templates/javascripts/theme.init.js"></script>


<!-- Examples -->
<script src="<?= base_url() ?>assets/templates/javascripts/tables/examples.datatables.ajax.js"></script>
</body>
</html>


