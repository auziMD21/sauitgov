<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 20/08/2019
 * Time: 14.18
 */
?>

<header class="mailbox-header">
    <div class="col-sm-6">
        <h1 class="mailbox-title text-light m-none" align="center">
           Pendaftaran Perusahaan
        </h1>
    </div>
</header>
<hr class="separator" />
<div class="nano">
<!--    <div class="nano-content">-->
        <div class="panel-body">
            <form action="<?= base_url() ?>auditor/tambahPerusahaan" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label class="col-md-3 control-label">Nama Perusahaan</label>
                    <div class="col-md-6">
                        <input type="text" name="name" class="form-control" placeholder="Nama Perusahaan" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">Alamat Perusahaan</label>
                    <div class="col-md-6">
                        <textarea name="alamat" rows="5" title="Alamat" class="form-control" placeholder="Alamat" required></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">Provinsi</label>
                    <div class="col-md-6">
                        <input type="text" name="provinsi" class="form-control" placeholder="Provinsi" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">Negara</label>
                    <div class="col-md-6">
                        <input type="text" name="negara" class="form-control" placeholder="Negara" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">Telp</label>
                    <div class="col-md-6">
                        <input type="text" name="Telp" class="form-control" placeholder="Telp" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">E-mail</label>
                    <div class="col-md-6">
                        <input type="text" name="email" class="form-control" placeholder="email" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">NPWP</label>
                    <div class="col-md-6">
                        <input type="text" name="npwp" class="form-control" placeholder="npwp" required/>
                    </div>
                </div>
                <hr class="separator" />
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
</div>
</div>
</div>
</section>
<!-- end: page -->
</section>
</div
