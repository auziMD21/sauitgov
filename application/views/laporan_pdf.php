<?php
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 27/09/2019
 * Time: 15.02
 */
?>
<html>
<head>
    <title>Document Rekap Data Audit</title>
</head>
<body>
    <center>
        <img src="<?= base_url() ?>assets/templates/images/logo.png" height="35" alt="JSOFT Admin" />
        <p style="font-size: large" align="center">REKAP DATA AUDIT PERUSAHAAN</p>
        <p>-----------------------------------------------------------------------------------------------------------------------------------</p>
    </center>
<table>
    <tr>
        <td><b>Nama Perusahaan</b></td>
        <td>:<?= $maturity['nama_perusahaan'] ?></td>
    </tr>
    <br>
    <tr>
        <td><b>Nomor Telepon Perusahaan</b></td>
        <td>:<?= $maturity['telp'] ?></td>
    </tr>
    <br>
    <tr>
        <td><b>E-mail Perusahaan</b></td>
        <td>:<?= $maturity['email'] ?></td>
    </tr>
    <br>
    <tr>
        <td><b>Alamat Perusahaan</b></td>
        <td>:<?= $maturity['alamat'] ?></td>
    </tr>
    <tr>
        <td><b>Cara Audit</b></td>
        <td>:<?= $maturity['indikator'] ?></td>
    </tr>
    <tr>
        <td><b>Waktu Audit</b></td>
        <td>:<?= date("d-m-Y",strtotime($maturity['waktu_pelaksanaan']))?></td>
    </tr>
</table>
<br>
<table>
    <thead>
    <tr>
        <td><b>Indikator</b></td>
    </tr>
    </thead>
    <tbody>
    <?php
    if ($maturity['misi'] == null) {
        ?>
        <?php foreach ($masalah as $m): ?>
            <tr>
                <td> - <?= $m ?></td>
            </tr>
        <?php endforeach; ?>
    <?php } else { ?>
        <?php foreach ($misi as $m): ?>
            <tr>
                <td> - <?= $m ?></td>
            </tr>
        <?php endforeach; ?>
    <?php } ?>
    </tbody>
</table>
<br>
<table>
    <thead>
    <tr>
        <td><b>Bussines Goal Perusahaan</b></td>
    </tr>
    </thead>
    <tbody>
    <?= $isiTable ?>
    </tbody>
</table>
<br>
<table border="1px solid black">
    <thead>
    <tr>
        <tb><b>IT Goals dan IT Proses Perusahaan</b></tb>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th>IT Goals</th>
        <th>IT Process</th>
    </tr>
    <?= $isiTable1 ?>
    </tbody>
</table>
<br>

<br>
<td><b>Data Kuisioner</b></td>
<table>
    <?php
    $po = $ai = $ds = $me = 0;
    $jwbPO = 0;
    $jwbAI = 0;
    $jwbME = 0;
    $jwbDS = 0;
    foreach ($riwayat as $key){
        $rincian = json_decode($key->jawaban_quisioner);
        $pegawai = $this->Perusahaan_model->getPegawai($key->id_audite)->row_array();
        ?>
        <p>Nama : <?= $pegawai['nama_audite']?></p>
        <p>Jabatan : <?= $pegawai['jabatan']?></p>
        <p>Waktu Pengisian : <?= date("d-m-Y",strtotime($key->waktu_pelaksanaan))?></p>
        <table border="2px">
            <tr><th>Pertanyaan</th>
                <th>0</th>
                <th>1</th>
                <th>2</th>
                <th>3</th>
                <th>4</th>
                <th>5</th>
            </tr>
            <?php
            foreach ($rincian as $key){
                $quisioner = $this->Perusahaan_model->getPertanyaan($key->id_q)->row_array();
                $dom = $this->Perusahaan_model->getPertanyaanDetail($key->id_q)->row_array();
                switch($dom['domain']){
                    case "PO":
                        $po += 1;
                        $jwbPO += $key->jawaban;
                        break;
                    case "AI":
                        $ai += 1;
                        $jwbAI += $key->jawaban;
                        break;
                    case "ME":
                        $me += 1;
                        $jwbME += $key->jawaban;
                        break;
                    case "DS":
                        $ds += 1;
                        $jwbDS += $key->jawaban;
                        break;
                }

                ?>
                <tr>
                    <td><?= $quisioner['pertanyaan']?></td>
                    <td><?php if($key->jawaban==0){ echo "x";}?></td>
                    <td><?php if($key->jawaban==1){ echo "x";}?></td>
                    <td><?php if($key->jawaban==2){ echo "x";}?></td>
                    <td><?php if($key->jawaban==3){ echo "x";}?></td>
                    <td><?php if($key->jawaban==4){ echo "x";}?></td>
                    <td><?php if($key->jawaban==5){ echo "x";}?></td>
                </tr>
                <?php
            }
            ?>
        </table>
        <?php
    }
    ?>


</table>
<br>
<table>
    <thead>
    <h3>HASIL ANGKA MATURITY</h3>
    <tr>
        <th>Domain Plan and Organise</th>
        <th>: <?= @round($jwbPO / $po,1) ?></th>
    </tr>
    <tr>
        <th>Domain Acquire and Implement </th>
        <th>: <?= @round($jwbAI / $ai,1) ?></th>
    </tr>
    <tr>
        <th>Domain Deliver and Support </th>
        <th>: <?= @round($jwbDS / $ds,1) ?></th>
    </tr>
    <tr>
        <th>Domain Monitor and Evaluate</th>
        <th>: <?= @round($jwbME / $me,1)?></th>
    </tr>
    <tr>
        <th>Maturity Level</th>
        <th>:</th>
        <th><?= @round($maturity['rid_quisioner'] / $maturity['partisipan'],0) ?></th>
        <th>
            <?php
            if (@round($maturity['rid_quisioner'] / $maturity['partisipan'],0)== 5) {
                ?>
                (Optimised)
            <?php } else if (@round($maturity['rid_quisioner'] / $maturity['partisipan'],0) ==4) {
                ?>
              (Managed)
            <?php } else if (@round($maturity['rid_quisioner'] / $maturity['partisipan'],0)==3) {
                ?>
               (Defined)
            <?php } else if (@round($maturity['rid_quisioner'] / $maturity['partisipan'],0) == 2) {
                ?>
               (Repeatable)
            <?php } else if (@round($maturity['rid_quisioner'] / $maturity['partisipan'],0)== 1) {
                ?>
                (Initial)
            <?php } else {
                ?>
               (Non existent)
                <?php
            }
            ?>
        </th>
    </tr>
    </thead>
</table>
<br>
</body>
</html>
<script>
    window.print();
</script>