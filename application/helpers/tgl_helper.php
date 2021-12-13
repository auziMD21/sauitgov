<?php
/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 11/09/2018
 * Time: 13.32
 */

function tgl($tgl){
    //pecahkan tanggal, per tanda '-'
    $tanggal = explode('-',$tgl);

    //hasil pecahan tanggal
    $tahun = $tanggal[0];
    $bulan = $tanggal[1];
    $hari = $tanggal[2];

    $bulanArr = [
        '01' => 'Januari',
        '02' => 'Februari',
        '03' => 'Maret',
        '04' => 'April',
        '05' => 'Mei',
        '06' => 'Juni',
        '07' => 'Juli',
        '08' => 'Agustus',
        '09' => 'September',
        '10' => 'Oktober',
        '11' => 'November',
        '12' => 'Desember'
    ];

    return $hari.'-'.$bulanArr[$bulan].'-'.$tahun;
}