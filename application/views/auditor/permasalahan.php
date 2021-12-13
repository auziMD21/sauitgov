    <div class="row">
        <div class="col-xs-12">
            <section class="panel form-wizard" id="w4">
                <header class="panel-heading">
                <center><h2 class="panel-title">Audit Melalui Buttom UP</h2></center>
                </header>
                <div class="panel-body">
                    <div class="wizard-progress wizard-progress-lg">
                        <div class="steps-progress">
                            <div class="progress-indicator"></div>
                        </div>
                        <hr class="separator" />
                        <ul class="wizard-steps">
                            <li class="active">
                                <a href="#w4-misi" data-toggle="tab"><span>1</span>Permasalahan</a>
                            </li>
                            <li>
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

                    <form class="form-horizontal" action="<?= base_url('auditor/saveMasalah')?>" method="post" novalidate="novalidate">                        <div class="tab-content">
                            <div id="w4-misi" class="tab-pane active">
                                <center><h2 class="panel-title">Masukan Permasahalahan Perusahaan</h2></center>
                                <hr class="separator" />
                                <?php if(!empty($masalah[0])){ ?>

                                <?php foreach($masalah as $m): ?>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" for="w4-username">Permasalahan :</label>
                                    <div class="col-sm-9">
                                        <textarea type="text" class="form-control" name="masalah[]" id="w4-username" required><?= $m ?></textarea>
                                    </div>
                                </div>
                                    <?php endforeach; ?>

                                <?php }else{ ?>
                                <a id="btn-tambah" style="cursor:pointer;text-decoration:underline; margin-left: 350px">Tambah form</a><br/><br/>
                                <div class="form-group">
                                <label class="col-sm-3 control-label" for="w4-password">Permasalahan :</label>
                                <div class="col-sm-9">
                                    <textarea type="text" class="form-control" name="masalah[]" id="w4-password" required ></textarea>
                                </div>
                                </div>
                                 <div id="test">

                                 </div>
                                    <?php } ?>
                                <br>
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

    <script>
        $('#btn-tambah').on('click', function (e) {
            e.preventDefault();
            console.log('asdasd');
            var wrap = $('.test');
            console.log(wrap);
            $('#test').append(' <div class="form-group"> <label class="col-sm-3 control-label" for="w4-password">Permasalahan : </label> <div class="col-sm-9"> <textarea type="text" class="form-control" name="masalah[]" id="w4-password" required ></textarea> </div></div>');
        })
    </script>
<!-- Examples -->
<script src="<?= base_url() ?>assets/templates/javascripts/forms/examples.wizard.js"></script>
</body>
</html>
