<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 30/08/2019
 * Time: 14.12
 */?>
<div class="row">
    <div class="col-xs-12">
        <section class="panel form-wizard" id="w4">
            <header class="panel-heading">
                <div class="panel-actions">
                    <a href="#" class="fa fa-caret-down"></a>
                    <a href="#" class="fa fa-times"></a>
                </div>

                <h2 class="panel-title">Daftar Audite</h2>
            </header>
            <div class="panel-body">
                <p><a class="btn btn-primary" href="<?= base_url() ?>auditor/insert_audite/<?= $id_perusahaan ?>">+ tambah audite</a></p>
                <table class="table table-bordered table-striped" id="datatable-ajax">
                    <thead>
                    <tr>
                        <th>NO</th>
                        <th>Nama Audite</th>
                        <th>Jabatan</th>
                        <th>Email</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $n = 1; foreach ($tampil as $u){ ?>
                        <tr>
                            <td><?= $n++?></td>
                            <td><?= $u->nama_audite;?></td>
                            <td><?= $u->jabatan?></td>
                            <td><?= $u->email?></td>
                            <td><?= $u->username?></td>
                            <td><?= $u->password?></td>
                            <td>
                                <?php
                                if($u->status==0) {
                                    ?>
                                    <a href="<?=base_url('audite/updateStatus/'.$u->id.'/1/'.$u->id_perusahaan)?>"class="btn btn-xs btn-warning">Berikan Akses</a>
                                <?php }
                                else{
                                    ?>
                                    <a href="" class="btn btn-xs btn-success">Akses Diberikan</a>
                                <?php }
                                ?>
                            </td>
                            <td>
                                <a class="btn btn-xs btn-default" alt="Edit" href="<?= base_url() ?>auditor/form_audite/<?= $u->id ?>"><li class="fa fa-edit"></li></a>
                                <a class="btn btn-xs btn-primary" alt="Lihat" href="<?= base_url() ?>auditor/lihataudite/<?= $u->id ?>"><li class="fa fa-eye"></li></a>
                            </td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
                <br>
                <br>
                <p><a class="btn btn-default" href="<?= base_url() ?>auditor/home">Back to Home</a></p>

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

