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
            Formulir Pendaftaran  Auditor Baru
        </h1>
    </div>
</header>
<div class="nano">
<!--    <div class="nano-content">-->
        <div class="panel-body">
            <form action="<?= base_url() ?>administrator/tambahAuditor" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label class="col-md-3 control-label">Nama Lengkap</label>
                    <div class="col-md-6">
                        <input type="text" name="name" class="form-control" placeholder="Nama Lengkap" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">Alamat </label>
                    <div class="col-md-6">
                        <textarea name="alamat" rows="5" title="Alamat" class="form-control" placeholder="Alamat" required></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">No Telp</label>
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
                <hr class="separator" />
                <div class="form-group">
                    <label class="col-md-3 control-label">Username</label>
                    <div class="col-md-6">
                        <input type="text" name="username" class="form-control" placeholder="username" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 control-label">Password</label>
                    <div class="col-md-6">
                        <input type="password" name="pass" class="form-control" placeholder="password" required/>
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
</div>
</div>
</div>
</section>
<!-- end: page -->
</section>
</div>
