<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 22/08/2019
 * Time: 11.34
 */?>
<header class="panel-heading">
    <h2 class="panel-title">IT Bussines COBIT 4.1</h2>
</header>
<div class="panel-body">
    <table class="table table-bordered table-striped" id="datatable-ajax">
        <thead>
        <tr>
            <th>NO</th>
            <th>Nama Perusahaan</th>
            <th>keterangan</th>
        </tr>
        </thead>
        <tbody>
        <?php $n = 1; foreach ($tampil as $u){ ?>
            <tr>
                <td><?= $n++?></td>
                <td><?= $u->kategori;?></td>
                <td><?= $u->keterangan?></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
</div>
</section>
</div>

