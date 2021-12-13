<?php

/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 06/06/2018
 * Time: 22.40
 */
class Administrator extends CI_Controller{
    public function __construct(){
        parent::__construct();
        $this->load->library('session');
        $this->load->model('Administrator_model');

    }
    public function index(){
        $this->load->view('administrator/login');
    }
    public function home(){
        $data['perusahaan'] = $this->Administrator_model->hitungperusahaan()->result();
        $data['audit'] = $this->Administrator_model->hitungaudit()->result();
        $data['audite'] = $this->Administrator_model->hitungaudite()->result();
        $data['pertanyaan'] = $this->Administrator_model->hitungpertanyaan()->result();
        $this->load->view('administrator/header_home');
        $this->load->view('administrator/index',$data);
        $this->load->view('administrator/footer');
    }
    public function audit(){
        $tampil = $this->Administrator_model->tampilauditor()->result();
        $data['tampil'] = $tampil;
        $this->load->view('administrator/header_audit');
        $this->load->view('administrator/audit',$data);}
    public function pertanyaan(){
        $tampil=$this->Administrator_model->tampilpertanyaan()->result();
        $data['tampil']=$tampil;
        $this->load->view('administrator/header_audit');
        $this->load->view('administrator/pertanyaan',$data);
}
    public function pertanyaancoba(){
        $tampil=$this->Administrator_model->tampilpertanyaan()->result();
        $data['tampil']=$tampil;
        $this->load->view('administrator/pertanyaancb',$data);
    }
    public function form_pertanyaan($id=false){
        if ($id==false) {
            $this->load->view('administrator/header_audit');
            $this->load->view('administrator/form_pertanyaan');
        }
        else{
            $data['pertanyaan']=$this->Administrator_model->detailpertanyaan($id);
            $this->load->view('administrator/header_audit');
            $this->load->view('administrator/editform_pertanyaan',$data);
        }
    }
    public function verifikasi(){
        $tampil = $this->Administrator_model->tampilperusahaan()->result();
        $data['tampil'] = $tampil;
        $this->load->view('administrator/header_audit');
        $this->load->view('administrator/verifikasi_audit',$data);}
    public function progres(){
        $tampil = $this->Administrator_model->Progres()->result();
        $data['tampil'] = $tampil;
        $this->load->view('administrator/header_audit');
        $this->load->view('administrator/progres_audit',$data);}

    public function form_auditor($id =false){
    if($id==false) {
        $this->load->view('administrator/header_audit');
        $this->load->view('administrator/formulir_auditor');
        $this->load->view('administrator/footer');
    }
    else{
            $data['perusahaan'] = $this->Administrator_model->detail_perusahaan($id);
            $this->load->view('administrator/header_audit', $data);
            $this->load->view('administrator/editform_auditor', $data);
            $this->load->view('administrator/footer');

     }
    }
    public function form_audit($id =false){
        if($id==false) {
            $this->load->view('administrator/header_audit');
            $this->load->view('administrator/formulir_audit');
            $this->load->view('administrator/footer');
        }
        else{
            $data['perusahaan'] = $this->Administrator_model->detail_perusahaan($id);
            $this->load->view('administrator/header_audit', $data);
            $this->load->view('administrator/editform_audit', $data);
            $this->load->view('administrator/footer');

        }
    }
    public function adminLogin(){
        $this->Administrator_model->getAdmin();
    }
    public function logout(){
        $this->session->sess_destroy();
        redirect('administrator');
    }
    public function tambahAuditor()
    {
        if($this->Administrator_model->insertauditor()){
            redirect('administrator/audit');
        }else{
            print_r($this->upload->errors());
            exit();
        }
    }
    public function tambahpertanyaan()
    {
        if($this->Administrator_model->insertpertanyaan()){
            redirect('administrator/pertanyaan');
        }else{
            print_r($this->upload->errors());
            exit();
        }
    }
    public function list_perusahaan(){
        $tampil = $this->Administrator_model->tampilperusahaan()->result();
        $data['tampil'] = $tampil;
        $this->load->view('administrator/header_audit');
        $this->load->view('administrator/list_perusahaan',$data);

    }
    public function list_perusahaan1(){
        $tampil = $this->Administrator_model->dataaudit()->result();
        $data['tampil'] = $tampil;
        $this->load->view('administrator/header_home');
        $this->load->view('administrator/dataaudit',$data);

    }
    public function cobit(){
        $this->load->view('administrator/header_home');
        $this->load->view('administrator/cobit');
        $this->load->view('administrator/footer');
    }
    public function dataaudit(){
        $tampil = $this->Administrator_model->dataaudit()->result();
        $data['tampil'] = $tampil;
        $this->load->view('administrator/header_audit');
        $this->load->view('administrator/data_audit',$data);
        $this->load->view('administrator/footer');
    }
    public function lihat($id){
        $data['perusahaan'] = $this->Administrator_model->detail_perusahaan($id);
        $this->load->view('administrator/header_audit');
        $this->load->view('administrator/detail_perusahaan',$data);
    }
    public function editPerusahaan($id)
    {
        if($this->Administrator_model->robahperusahaan($id)){
            redirect('administrator/perusahaan');
        }else{
            print_r($this->upload->errors());
            exit();
        }

    }
    public function editpertanyaan($id)
    {
        if($this->Administrator_model->robahpertanyaan($id)){
            redirect('administrator/pertanyaan');
        }else{
            print_r($this->upload->errors());
            exit();
        }

    }
    public function perusahaan(){
        $tampil = $this->Administrator_model->tampilperusahaan()->result();
        $data['tampil'] = $tampil;
        $this->load->view('administrator/header_home');
        $this->load->view('administrator/list_perusahaan1',$data);
        $this->load->view('administrator/footer');
    }
    public function deletepertanyaan($id){
        $data['data']=$this->Administrator_model->hapus_pertanyaan($id);
        redirect('administrator/pertanyaan');
    }
    public function it_bussines(){
        $tampil = $this->Administrator_model->it_bussines()->result();
        $data['tampil'] = $tampil;
        $this->load->view('administrator/header_home');
        $this->load->view('administrator/it_bussines',$data);
        $this->load->view('administrator/footer');
    }
    public function it_prosess(){
        $tampil = $this->Administrator_model->it_prosess()->result();
        $data['tampil'] = $tampil;
        $this->load->view('administrator/header_home');
        $this->load->view('administrator/it_prosess',$data);
        $this->load->view('administrator/footer');
    }
    public function it_goals(){
        $tampil = $this->Administrator_model->it_goals()->result();
        $data['tampil'] = $tampil;
        $this->load->view('administrator/header_home');
        $this->load->view('administrator/it_goals',$data);
        $this->load->view('administrator/footer');
    }
    public function updateStatus($id , $jenis){
        if ($this->Administrator_model->updatestatus($id, $jenis)) {
            redirect('administrator/verifikasi');
        }
    }
    public function lihatauditor($id){
        $data['auditor'] = $this->Administrator_model->detail_auditor($id);
        $this->load->view('administrator/header_audit');
        $this->load->view('administrator/detail_auditor',$data);
    }
}