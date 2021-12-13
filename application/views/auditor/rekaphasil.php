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
    <!-- Web Fonts  -->
    <!-- Basic -->
    <meta charset="UTF-8">
    <title>Dashboard Perusahaan | Audit IT GOVENRANCE</title>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <!-- Web Fonts  -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/magnific-popup/magnific-popup.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/bootstrap-datepicker/css/datepicker3.css" />

    <!-- Specific Page Vendor CSS -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/jquery-ui/css/ui-lightness/jquery-ui-1.10.4.custom.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/morris/morris.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/select2/select2.css" />
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/jquery-datatables-bs3/assets/css/datatables.css" />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/stylesheets/theme.css" />

    <!-- Skin CSS -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/stylesheets/skins/default.css" />

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates//stylesheets/theme-custom.css">

    <!-- Head Libs -->
    <script src="<?= base_url() ?>assets/templates/vendor/modernizr/modernizr.js"></script>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/font-awesome/css/font-awesome.css" />

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="<?= base_url() ?>assets/templates/vendor/bootstrap/css/bootstrap.css" />
</head>
<body>
<style>

    #bungkus{
        padding-left: 10%;
        padding-right: 10%;
    }
    @media print{
        .hilang {
            display: none;

        }
        #bungkus{
            padding:0px;
        }
    }
</style>
<div id="bungkus">
<center>
        <img src="<?= base_url() ?>assets/templates/images/logo.png" height="35" alt="JSOFT Admin" />
        <p style="font-size: large" align="center">REKAP DATA AUDIT PERUSAHAAN</p>
        <p>-----------------------------------------------------------------------------------------------------------------------------------</p>
</center>
    <table style="margin-top: -50px">
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
<table border="2px">
    <thead>
    <tr>
        <b>IT Goals dan IT Proses Perusahaan</b>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th  style="text-align: center">IT Goals</th>
        <th  style="text-align: center">IT Process</th>
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
        $pegawai = $this->Auditor_model->getPegawai($key->id_audite)->row_array();
        ?>
        <p>Nama : <?= $pegawai['nama_audite']?></p>
        <p>Jabatan : <?= $pegawai['jabatan']?></p>
        <p>Waktu Pengisian : <?= date("d-m-Y",strtotime($key->waktu_pelaksanaan))?></p>
        <table border="2px">
            <tr>
                <th style="padding:3px; text-align: center">Pertanyaan</th>
                <th style="padding:3px;">0</th>
                <th style="padding:3px;">1</th>
                <th style="padding:3px;">2</th>
                <th style="padding:3px;">3</th>
                <th style="padding:3px;">4</th>
                <th style="padding:3px;">5</th>
            </tr>
            <?php
            foreach ($rincian as $key){
                $quisioner = $this->Auditor_model->getPertanyaan($key->id_q)->row_array();
                $dom = $this->Auditor_model->getPertanyaanDetail($key->id_q)->row_array();
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
    <button onclick="window.print()" class="hilang btn btn-primary fa fa-print" style="margin-left: 1000px">  cetak</button>
</div>
<br>
</body>
</html>
<!--<script>-->
<!--    window.print();-->
<!--</script>-->