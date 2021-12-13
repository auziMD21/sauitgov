<section class="panel">
     <header class="panel-heading">
        <h2 class="panel-title">Detail Perusahaan</h2>
    </header>
    <div class="panel-body">
        <table class="table table-bordered table-striped" id="datatable-ajax">
            <tr>
               <td>ID Perusahaan</td><td>PR<?=$perusahaan['id_perusahaan']?> </td>
            </tr>
            <tr>
                <td>Nama Perusahaan</td><td><?=$perusahaan['nama_perusahaan']?> </td>
            </tr>
            <tr>
                <td>Alamat</td><td><?=$perusahaan['alamat']?>  </td>
            </tr>
            <tr>
                <td>Provinsi</td><td><?=$perusahaan['provinsi']?> </td>
            </tr>
            <tr>
                <td>Negara</td><td><?=$perusahaan['negara']?> </td>
            </tr>
            <tr>
                <td>Telp</td><td><?=$perusahaan['telp']?> </td>
            </tr>
            <tr>
                <td>Email</td><td><?=$perusahaan['email']?> </td>
            </tr>
            <tr>
                <td>NPWP</td><td><?=$perusahaan['npwp']?> </td>
            </tr>
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

