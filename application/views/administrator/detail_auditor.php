<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 19/09/2019
 * Time: 19.00
 */?>

<section class="panel">
    <header class="panel-heading">
        <h2 class="panel-title">Detail Audite</h2>
    </header>
    <div class="panel-body">
        <table class="table table-bordered table-striped" id="datatable-ajax">
            <tr>
                <td>ID Audite</td><td>Aud<?=$auditor['id_auditor']?> </td>
            </tr>
            <tr>
                <td>Nama Audite</td><td><?=$auditor['nama_lengkap']?> </td>
            </tr>
            <tr>
                <td>Email</td><td><?=$auditor['email']?>  </td>
            </tr>
            <tr>
                <td>Jabatan</td><td><?=$auditor['no_hp']?> </td>
            </tr>
            <tr>
                <td>Username</td><td><?=$auditor['username']?> </td>
            </tr>
            <tr>
                <td>Password</td><td><?=$auditor['pw']?> </td>
            </tr>
        </table>
        <p><a class="btn btn-default" href="<?= base_url() ?>administrator/audit">Back </a></p>
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

