    <div class="row">
        <div class="col-xs-12">
            <section class="panel form-wizard" id="w4">
                <header class="panel-heading">
                    <center><h2 class="panel-title">Audit Melalui Top Down</h2></center>
                </header>
                <div class="panel-body">
                    <div class="wizard-progress wizard-progress-lg">
                        <div class="steps-progress">
                            <div class="progress-indicator"></div>
                        </div>
                        <hr class="separator" />
                        <ul class="wizard-steps">
                            <li class="active">
                                <a href="#w4-misi" data-toggle="tab"><span>1</span>Misi/Tujuan </a>
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

                    <form class="form-horizontal" action="<?= base_url('auditor/saveMisi')?>" method="post" novalidate="novalidate">
                        <div class="tab-content">
                            <div id="w4-misi" class="tab-pane active">
                                <center><h2 class="panel-title">Masukan Misi/Tujuan Perusahaan</h2></center>
                                <hr class="separator" />
                                <?php if(!empty($misi[0])){ ?>

                                    <?php foreach($misi as $m): ?>
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label" for="w4-username">Misi/Tujuan :</label>
                                            <div class="col-sm-9">
                                                <textarea type="text" class="form-control" name="misi[]" id="w4-username" required><?= $m ?></textarea>
                                            </div>
                                        </div>
                                        <?php endforeach; ?>

                                <?php }else{ ?>
                                    <a id="btn-tambah" style="cursor:pointer;text-decoration:underline; margin-left: 350px">Tambah form</a><br/><br/>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" for="w4-username">Misi/Tujuan :</label>
                                        <div class="col-sm-9">
                                            <textarea type="text" class="form-control" name="misi[]" id="w4-username" required></textarea>
                                        </div>
                                    </div>
                                    <div id="test">

                                    </div>
                                <?php } ?>
                                <div class="form-group">
                                 <br>
                                    <br>
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
    <script src="<?= base_url() ?>assets/templates/vendor/jquery-ui/js/jquery-ui-1.10.4.custom.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jquery-ui-touch-punch/jquery.ui.touch-punch.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jquery-appear/jquery.appear.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jquery-easypiechart/jquery.easypiechart.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/flot/jquery.flot.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/flot-tooltip/jquery.flot.tooltip.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/flot/jquery.flot.pie.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/flot/jquery.flot.categories.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/flot/jquery.flot.resize.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jquery-sparkline/jquery.sparkline.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/raphael/raphael.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/morris/morris.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/gauge/gauge.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/snap-svg/snap.svg.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/liquid-meter/liquid.meter.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jqvmap/jquery.vmap.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jqvmap/data/jquery.vmap.sampledata.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jqvmap/maps/jquery.vmap.world.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jqvmap/maps/continents/jquery.vmap.africa.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jqvmap/maps/continents/jquery.vmap.asia.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jqvmap/maps/continents/jquery.vmap.australia.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jqvmap/maps/continents/jquery.vmap.europe.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jqvmap/maps/continents/jquery.vmap.north-america.js"></script>
    <script src="<?= base_url() ?>assets/templates/vendor/jqvmap/maps/continents/jquery.vmap.south-america.js"></script>
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
    <script src="<?= base_url() ?>assets/templates/javascripts/dashboard/examples.dashboard.js"></script>
    <script src="<?= base_url() ?>assets/templates/javascripts/tables/examples.datatables.ajax.js"></script>

    <script>
       $('#btn-tambah').on('click', function (e) {
           e.preventDefault();
           console.log('asdasd');
           var wrap = $('.test');
           console.log(wrap);
           $('#test').append(' <div class="form-group"> <label class="col-sm-3 control-label" for="w4-password">Misi/Tujuan :</label> <div class="col-sm-9"> <textarea type="text" class="form-control" name="misi[]" id="w4-password" required ></textarea> </div></div>');
       })
    </script>

    </body>
    </html>
