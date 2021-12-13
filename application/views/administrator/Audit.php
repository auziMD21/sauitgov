
<section class="panel">
    <header class="panel-heading">
        <h1 class="panel-title">Data Auditor</h1>
    </header>
                        <div class="panel-body">
                            <table class="table table-bordered table-striped" id="datatable-ajax">
                                <thead>
                                <tr>
                                    <th>NO</th>
                                    <th>Nama Lengkap</th>
                                    <th>Alamat</th>
                                    <th>Nomor Telp</th>
                                    <th>Email</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php $n = 1; foreach ($tampil as $u){ ?>
                                    <tr>
                                        <td><?= $n++?></td>
                                        <td><?= $u->nama_lengkap ?></td>
                                        <td><?= $u->alamat ?></td>
                                        <td><?= $u->no_hp ?></td>
                                        <td><?= $u->email ?></td>
                                        <td>
                                            <a class="btn btn-xs btn-primary" alt="Lihat" href="<?= base_url() ?>administrator/lihatauditor/<?= $u->id_auditor ?>">Lihat Detail</a>

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

