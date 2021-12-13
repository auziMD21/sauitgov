<?php
if(!defined('BASEPATH'))  exit('No Direct Script acces alloewd');
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 23/08/2019
 * Time: 18.56
 */
class Auditor_model extends CI_Model
{

    public function __construct()
    {
        $this->load->database();
        $this->load->library('session');
        $this->load->helper('url');
    }
    public function updatePartisipan($a){
        $query = $this->db->query("update cobitisasi set partisipan=(partisipan+1) WHERE id_perusahaan=$a order by id_c desc limit 1");
        return $query;
    }
    public function getMisi($id){
        $waktu = $_SESSION['id_waktu'];
        return $this->db->query("SELECT misi FROM cobitisasi WHERE id_perusahaan = '$id' and waktu_pelaksanaan='$waktu'")->row_array();
    }
    public function getMasalah($id){
        $waktu = $_SESSION['id_waktu'];
        return $this->db->query("SELECT masalah FROM cobitisasi WHERE id_perusahaan = '$id' and waktu_pelaksanaan='$waktu'")->row_array();
    }
    public function getMasalah1($id,$idc){
        return $this->db->query("SELECT masalah FROM cobitisasi WHERE id_perusahaan = '$id' and id_c='$idc'")->row_array();
    }
    public function getMisi1($id,$idc){
        return $this->db->query("SELECT misi FROM cobitisasi WHERE id_perusahaan = '$id' and id_c='$idc'")->row_array();
    }

    public function getBussinesGoal($id = FALSE){
      //  $waktu = $_SESSION['id_waktu'];
        if($id == FALSE){
                $this->db->select('*');
                $this->db->from('it_bussines');
               $query=$this->db->get();
            return $query->result_array();
        }
        return $this->db->get_where('it_bussines', ['nomor' => $id])->row_array();
    }

    public function getITGoals($id = FALSE){
        if($id == FALSE){
            return $this->db->get('it_goals')->result_array();
        }
        return $this->db->get_where('it_goals', ['nomor' => $id])->row_array();
    }

    public function getAudite($id){
        return $this->db->get_where('db_audite', ['id_perusahaan' => $id])->result_array();
    }

    public function getITP($id){
        $this->db->select("rid_ITP");
        $this->db->from("cobitisasi");
        $this->db->where("id_perusahaan",$id);
        $this->db->order_by("id_c","desc");
        $query = $this->db->get();
        return $query->row_array();
    }
    public function getITP1($id,$idc){
        $this->db->select("rid_ITP");
        $this->db->from("cobitisasi");
        $this->db->where("id_perusahaan",$id);
        $this->db->where("id_c",$idc);
        $this->db->order_by("id_c","desc");
        $query = $this->db->get();
        return $query->row_array();
    }

    public function maturiti($id,$idc){

        return $this->db->query("SELECT * FROM cobitisasi INNER join perusahaan on perusahaan.id_perusahaan=cobitisasi.id_perusahaan WHERE cobitisasi.id_perusahaan= $id and cobitisasi.id_c=$idc")->row_array();
    }

    public function getSavedBussinesGoal(){
        $id = $_SESSION['id_perusahaan'];
        $waktu = $_SESSION['id_waktu'];
        return $this->db->query("SELECT rid_ITB, rid_ITG from cobitisasi WHERE id_perusahaan = '$id' and waktu_pelaksanaan= '$waktu'")->row_array();
    }
    public function getSavedBussinesGoal1($id,$idc){
        return $this->db->query("SELECT DISTINCT rid_ITB, rid_ITG from cobitisasi WHERE id_perusahaan = '$id' and id_c='$idc'")->row_array();
    }

    public function getHubITB_ITG($nomor){
        return $this->db->query("SELECT *, it_goals.keterangan as ket_itg, it_goals.nomor as nm_itg FROM hubungan_itb_itg JOIN it_goals ON hubungan_itb_itg.id_ITG = it_goals.id_ITG WHERE id_ITB = $nomor")->result_array();
    }
    public function getHubITG_ITP($nomor){
        return $this->db->query("SELECT *, it_proses.kode_subdomain as subdomain, it_proses.id_ITP as idITP FROM hubungan_itg_itp JOIN it_proses ON hubungan_itg_itp.id_ITP = it_proses.id_ITP WHERE id_ITG = $nomor")->result_array();

    }

    public function saveMisi(){
        $misi = $_POST['misi'];
        $dataMisi = '';
        $misiCounter = count($_POST['misi']);
        for($i = 0; $i < $misiCounter; $i++){
            $dataMisi .= $misi[$i];
            if($i != ($misiCounter - 1)){
                $dataMisi .= "$";
            }
        }
        $id = $_SESSION['id_perusahaan'];
        $myQ = null;
        if ($_SESSION['id_waktu'] == "0"){
            $myQ = $this->db->get_where('cobitisasi', ['id_perusahaan' => 0]);
        }
        else{
            $myQ = $this->db->get_where('cobitisasi', ['id_perusahaan' => $id]);
        }

        //exit($myQ->num_rows());
        if($myQ->num_rows() > 0){
            $waktu = $_SESSION['id_waktu'];
            return $this->db->query("UPDATE cobitisasi SET misi = '$dataMisi' WHERE id_perusahaan = '$id' AND waktu_pelaksanaan = '$waktu'");
        }else{
            date_default_timezone_set("Asia/Jakarta");
            $dataSession = [
                'username' => $_SESSION['username'],
                'nama_perusahaan' => $_SESSION['nama_perusahaan'],
                'loginAdmin' => TRUE,
                'id_perusahaan' => $_SESSION['id_perusahaan'],
                'id_waktu' => date("Y-m-d H:i:s")
            ];
            $this->session->set_userdata($dataSession);
            return $this->db->query("INSERT INTO cobitisasi (id_perusahaan,indikator, misi, waktu_pelaksanaan) VALUES ('$id','Top Down' ,'$dataMisi', NOW())");
        }
    }
    public function saveMasalah(){
        $masalah = $_POST['masalah'];
        $dataMasalah = '';
        $masalahCounter = count($_POST['masalah']);
        for($i = 0; $i < $masalahCounter; $i++){
            $dataMasalah .= $masalah[$i];
            if($i != ($masalahCounter - 1)){
                $dataMasalah .= "$";
            }
        }
        $id = $_SESSION['id_perusahaan'];
        $myQ = null;
        if ($_SESSION['id_waktu'] == "0"){
            $myQ = $this->db->get_where('cobitisasi', ['id_perusahaan' => 0]);
        }
        else{
            $myQ = $this->db->get_where('cobitisasi', ['id_perusahaan' => $id]);
        }

        //exit($myQ->num_rows());
        if($myQ->num_rows() > 0){
            $waktu = $_SESSION['id_waktu'];
            return $this->db->query("UPDATE cobitisasi SET misi = '$dataMasalah' WHERE id_perusahaan = '$id' AND waktu_pelaksanaan = '$waktu'");
        }else{
            date_default_timezone_set("Asia/Jakarta");
            $dataSession = [
                'username' => $_SESSION['username'],
                'nama_perusahaan' => $_SESSION['nama_perusahaan'],
                'loginAdmin' => TRUE,
                'id_perusahaan' => $_SESSION['id_perusahaan'],
                'id_waktu' => date("Y-m-d H:i:s")
            ];
            $this->session->set_userdata($dataSession);
            return $this->db->query("INSERT INTO cobitisasi (id_perusahaan,indikator, masalah, waktu_pelaksanaan) VALUES ($id,'Buttom Up' ,'$dataMasalah', NOW())");
        }

    }

    public function updateITG($data){
        $id = $_SESSION['id_perusahaan'];
        $waktu = $_SESSION['id_waktu'];
        return $this->db->query("UPDATE cobitisasi SET rid_ITG = '$data' WHERE id_perusahaan = '$id' AND waktu_pelaksanaan = '$waktu'");
    }

    public function updateITP($data){
        $id = $_SESSION['id_perusahaan'];
        $waktu = $_SESSION['id_waktu'];
        return $this->db->query("UPDATE cobitisasi SET rid_ITP  = '$data' WHERE id_perusahaan = '$id' AND waktu_pelaksanaan = '$waktu'");
    }
    public function Progres(){
        $id = $_SESSION['id_auditor'];
        $query = $this->db->query("SELECT * FROM cobitisasi INNER join perusahaan on perusahaan.id_perusahaan=cobitisasi.id_perusahaan WHERE perusahaan.id_auditor= $id ORDER BY cobitisasi.waktu_pelaksanaan DESC ");
        return $query;
    }

    public function tg(){
        $id = $_SESSION['id_auditor'];
        $query = $this->db->query("SELECT * FROM perusahaan WHERE id_auditor= $id ORDER by id_perusahaan DESC ");
        $query = $this->db->query("SELECT * FROM perusahaan WHERE id_auditor= $id ORDER by id_perusahaan DESC ");
        return $query;
    }

    public function saveBussinesGoal(){
        $id = $_SESSION['id_perusahaan'];
        $itb = '';
        $itbCount = count($_POST);
        $x = 0;
        foreach($_POST as $i){
            $itb .= $i;
            if($x < ($itbCount - 1)){
                $itb .= ",";
            }
            $x++;
        }
        $waktu = $_SESSION['id_waktu'];
        return $this->db->query("UPDATE cobitisasi SET rid_ITB = '$itb' WHERE id_perusahaan = '$id' AND waktu_pelaksanaan = '$waktu'");
    }
    public function saveBussinesGoalBu(){
        $id = $_SESSION['id_perusahaan'];
        $itb = '';
        $itbCount = count($_POST);
        $x = 0;
        foreach($_POST as $i){
            $itb .= $i;
            if($x < ($itbCount - 1)){
                $itb .= ",";
            }
            $x++;
        }
        return $this->db->query("UPDATE cobitisasi SET rid_ITB = '$itb' WHERE id_perusahaan = '$id'");
    }

    public function loginAuditor()
    {

        $username = $this->input->post('username');
        $password = $this->input->post('pass');

        $query = $this->db->get_where('db_auditor', array('username' => $username, 'pw' => $password));
        $data = $query->row_array();
        $row = $query->num_rows();

        if ($row == 1) {
            $dataSession = [
                'username' => $data['username'],
                'nama_lengkap' => $data['nama_lengkap'],
                'loginAdmin' => TRUE,
                'id_auditor' => $data['id_auditor'],
                'id_waktu' =>"0",
            ];
                $this->session->set_userdata($dataSession);
                redirect(base_url() . 'auditor/home');

        }
        else {
            echo "<script>alert('Username/password salah '); window.location.href='.'</script>";

        }
    }

    public function getRiwayatByCobitisasi($a){
        $this->db->select('*');
        $this->db->from('riwayat_quisioner');
        $this->db->where('id_cobitisasi',$a);
        $this->db->order_by('id_rq','desc');
        $query = $this->db->get();
        return $query;
    }
    public function grafikpeningkatan($a){
        $this->db->select('*');
        $this->db->from('cobitisasi');
        $this->db->where('id_perusahaan',$a);
        $query = $this->db->get();
        return $query;
    }
    public function getPegawai($id_pegawai){
        $this->db->select("*");
        $this->db->from("db_audite");
        $this->db->where("id",$id_pegawai);
        $query = $this->db->get();
        return $query;
    }
    public function getPertanyaan($id_pertanyaan){
        $this->db->select("*");
        $this->db->from("db_quisioner");
        $this->db->where("id_quisioner",$id_pertanyaan);
        $query = $this->db->get();
        return $query;
    }

    public function getPertanyaanDetail($id){
        $this->db->select("domain");
        $this->db->from("db_quisioner");
        $this->db->join('it_proses', 'db_quisioner.Id_ITP = it_proses.id_ITP');
        $this->db->where("id_quisioner",$id);
        $query = $this->db->get();
        return $query;
    }
    public function data_perusahaan($id){
        $query = $this->db->query("SELECT *  FROM perusahaan WHERE  id_auditor='$id' ORDER  BY  id_perusahaan DESC ");
        return $query;
    }
    public function hitungperusahaan($id){
        $query = $this->db->query("SELECT COUNT(id_perusahaan) as total FROM perusahaan WHERE  id_auditor='$id'");
        return $query;
    }
    public function hitungaudit($id){
        $query = $this->db->query("SELECT COUNT(id_c) as total FROM cobitisasi c INNER JOIN perusahaan p on c.id_perusahaan=p.id_perusahaan WHERE p.id_auditor='$id'");
        return $query;
    }
    public function hitungaudite($id){
        $query = $this->db->query("SELECT COUNT(id) as total FROM db_audite a INNER join perusahaan p on a.id_perusahaan=p.id_perusahaan WHERE p.id_auditor='$id'");
        return $query;
    }
    public function hitungpertanyaan(){
        $query = $this->db->query('SELECT COUNT(id_quisioner) as total FROM db_quisioner');
        return $query;
    }
    public function insertperusahaan($id){
        //data yang dikirim
        $namaperusahaan = $this->input->post('name');
        $alamat = $this->input->post('alamat');
        $provinsi = $this->input->post('provinsi');
        $negara = $this->input->post('negara');
        $telp = $this->input->post('Telp');
        $email = $this->input->post('email');
        $npwp= $this->input->post('npwp');
        $username = $this->input->post('username');
        $password= $this->input->post('pass');
        $data = array(
            'nama_perusahaan' => $namaperusahaan,
            'alamat' => $alamat,
            'provinsi' => $provinsi,
            'negara' => $negara,
            'telp' => $telp,
            'email' => $email,
            'npwp' => $npwp,
            'status_validasi'=>0,
             'id_auditor'=>$id

        );

        $this->db->insert('perusahaan', $data);
        return true;
    }

}