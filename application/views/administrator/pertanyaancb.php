<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 22/10/2019
 * Time: 21.06
 */?>

<table border="1">
    <thead>
    <tr>
        <th>NO</th>
        <th>Kode Subdomain</th>
        <th>Pertanyaan</th>
    </tr>
    </thead>
    <tbody>
    <?php $n = 1; foreach ($tampil as $u){ ?>
        <tr>
            <td><?= $n++?></td>
            <td><?= $u->kode_subdomain;?></td>
            <td><?= $u->pertanyaan?></td>
        </tr>
    <?php } ?>
    </tbody>
</table>
