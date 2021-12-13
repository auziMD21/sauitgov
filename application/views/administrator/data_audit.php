<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 12/09/2019
 * Time: 17.36
 */?>
<header class="panel-heading">
    <h2 class="panel-title">Data Audit</h2>
</header>
<div class="panel-body">
    <table class="table table-bordered table-striped" id="datatable-ajax">
        <thead>
        <tr>
            <th>NO</th>
            <th>Nama Perusahaan</th>
            <th>Auditor</th>
            <th>Waktu Audit</th>
            <th>Maturity Level</th>
            <th>Data Audit</th>
        </tr>
        </thead>
        <tbody>
        <?php $n = 1; foreach ($tampil as $u){ ?>
            <tr>
                <td><?= $n++?></td>
                <td><?= $u->nama_perusahaan?></td>
                <td><?= $u->nama_lengkap?></td>
                <td><?= $u->waktu_pelaksanaan?></td>
                <td><?=round(($u->rid_quisioner / $u->partisipan),1)?></td>
                <td><a href="<?= base_url()?>auditor/rekap_hasil/<?=$u->id_perusahaan?>/<?=$u->id_c?>" class="btn btn-primary">Lihat</a></td>
            </tr>
        <?php } ?>
        </tbody>
    </table>
</div>
</section>
</div>

