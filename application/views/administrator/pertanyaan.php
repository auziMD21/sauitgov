
<section class="panel">
    <header class="panel-heading">
        <h2 class="panel-title">Pertanyaan Audit</h2>
    </header>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="mb-md">
                                        <a href="<?=base_url()?>administrator/form_pertanyaan" id="addToTable" class="btn btn-primary">Tambah Pertanyaan <i class="fa fa-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <table class="table table-bordered table-striped" id="datatable-ajax">
                                <thead>
                                <tr>
                                    <th>NO</th>
                                    <th>Kode Subdomain</th>
                                    <th>Pertanyaan</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php $n = 1; foreach ($tampil as $u){ ?>
                                    <tr>
                                        <td><?= $n++?></td>
                                        <td><?= $u->kode_subdomain;?></td>
                                        <td><?= $u->pertanyaan?></td>
                                        <td>
                                            <a href="<?= base_url() ?>admin/form_pertanyaan/<?= $u->id_quisioner?>" class="btn btn-xs btn-primary"><li class="fa fa-edit"></li></a>
                                                <a href="<?= base_url() ?>admin/deletepertanyaan/<?= $u->id_quisioner?>" class="btn btn-xs btn-danger"><li class="fa fa-trash-o"></li></a>
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

