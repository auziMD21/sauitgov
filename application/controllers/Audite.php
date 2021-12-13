<?php

/**
 * Created by PhpStorm.
 * User: USER
 * Date: 05/09/2019
 * Time: 20.51
 */
class Audite extends CI_Controller{
    public function __construct(){
        parent::__construct();
        $this->load->library('session');
        $this->load->model('Audite_model');
        $this->load->model('Auditor_model');
    }
    public function index(){
        $this->load->view('audite/login');
    }
    public function selesai(){
        $this->load->view('audite/header_audite');
        $this->load->view('audite/selesai');
    }
    public function home(){
        $itp = $this->Auditor_model->getITP($_SESSION['id_perusahaan']);
        $tampil = $this->Audite_model->tampilpertanyaan($itp['rid_ITP'])->result();
        $data['audite'] = $this->Audite_model->detail_audite($_SESSION['id']);
        $data['tampil'] = $tampil;
        $this->load->view('audite/header_audite');
        $this->load->view('audite/index',$data);
    }
    public function auditeLogin(){
        $this->Audite_model->loginaudite();
    }
    public function logout(){
        $this->session->sess_destroy();
        redirect('audite');
    }
    public function tambahaudite(){
        if($this->Audite_model->insertaudite()){
            redirect('auditor/audite');
        }else{
            print_r($this->upload->errors());
            exit();
        }
    }
    public function rekapAudit(){
        //print_r($_POST);
        $a=null;
//        $a['jawaban'] = null;
        $hasil = 0;
        $soal = 0;
        $cobitisasi = $this->Audite_model->getCobitisasi($_SESSION['id_perusahaan']);
        foreach($_POST as $p){
            $pecah = explode("@",$p);
            $a[] = array("id_q"=>$pecah[0],
                "jawaban"=>$pecah[1]);
            $hasil += $pecah[1];
            $soal++;
        }
        $rid_q = $hasil / $soal;
        $total = $cobitisasi['rid_quisioner']+$rid_q;
        $id_perusahaan = $_SESSION['id_perusahaan'];
//        $audite = $this->Audite_model->totalAudite($_SESSION['id_perusahaan']);
//        $cobitisasi = $this->Audite_model->getCobitisasi($id_perusahaan);
//        $pembagi=$rid_q/$cobitisasi['partisipan'];
        $id = $_SESSION['id'];
        if($this->Audite_model->saveQuisioner($id_perusahaan, $total) && $this->Audite_model->updatestatusaudite($id,0)){
            $this->Audite_model->insert_rq($cobitisasi['id_c'],json_encode($a));
            redirect('audite/selesai');
        }
    }
    public function lihat($id){
        $data['audite'] = $this->Audite_model->detail_audite($id);
        $this->load->view('perusahaan/header_home');
        $this->load->view('audite/detail_audite',$data);
    }
    public function updateStatus($id,$data,$idperusahaan){
    if ($this->Audite_model->updatestatus($id, $data)) {
        $cobitisasi = $this->Audite_model->getCobitisasi($_SESSION['id_perusahaan']);
        $data = array('partisipan'=>$cobitisasi['partisipan']+1);
        $this->Audite_model->updateCobitisasi($cobitisasi['id_c'],$data);
        redirect('auditor/lhaudite/'.$idperusahaan);
    }
    }
}