<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 22/08/2019
 * Time: 12.52
 */?>

<section class="panel">
    <header class="panel-heading">
        <h2 class="panel-title">Pertanyaan Audit</h2>
    </header>
    <div class="panel-body">
        <form action="<?= base_url() ?>admin/editpertanyaan/<?= $pertanyaan['id_quisioner']?>" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label class="col-md-3 control-label">Pertanyaan</label>
                <div class="col-md-6">
                    <textarea  name="pertanyaan" class="form-control" placeholder="Pertanyaan" required><?=$pertanyaan['pertanyaan']?></textarea>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">Kode Subdomain</label>
                <div class="col-md-6">
                    <select data-plugin-selectTwo class="form-control populate" name="kode_subdomain">
                        <option value="<?= $pertanyaan['Id_ITP']?>"><?= $pertanyaan['kode_subdomain'] ?></option>
                        <option value="1">PO1</option>
                        <option value="2">PO2</option>
                        <option value="3">PO3</option>
                        <option value="4">PO4</option>
                        <option value="5">PO5</option>
                        <option value="6">PO6</option>
                        <option value="7">PO7</option>
                        <option value="8">PO8</option>
                        <option value="9">PO9</option>
                        <option value="10">PO10</option>
                        <option value="11">AI1</option>
                        <option value="12">AI2</option>
                        <option value="13">AI3</option>
                        <option value="14">AI4</option>
                        <option value="15">AI5</option>
                        <option value="16">AI6</option>
                        <option value="17">AI7</option>
                        <option value="18">DS1</option>
                        <option value="19">DS2</option>
                        <option value="20">DS3</option>
                        <option value="21">DS4</option>
                        <option value="22">DS5</option>
                        <option value="23">DS6</option>
                        <option value="24">DS7</option>
                        <option value="25">DS8</option>
                        <option value="26">DS9</option>
                        <option value="27">DS10</option>
                        <option value="28">DS11</option>
                        <option value="29">DS12</option>
                        <option value="30">DS13</option>
                        <option value="31">ME1</option>
                        <option value="32">ME2</option>
                        <option value="33">ME3</option>
                        <option value="34">ME4</option>
                    </select>
                </div>
            </div>
          <div class="form-group">
                <label class="col-md-3 control-label"></label>
                <div class="col-md-6">
                    <button class="btn btn-primary">Submit</button>
                    <button type="reset" class="btn btn-default">Reset</button>
                </div>
            </div>

        </form>

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


