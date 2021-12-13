<?php

/**
 * Created by PhpStorm.
 * User: USER
 * Date: 05/09/2019
 * Time: 20.50
 */
class Audite_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
        $this->load->library('session');
        $this->load->helper('url');
    }
    public function insertaudite(){
        //data yang dikirim
        $id = $this->input->post('id_perusahaan');
        $nama = $this->input->post('nama');
        $jabatan = $this->input->post('jabatan');
        $email = $this->input->post('email');
        $username = $this->input->post('username');
        $password= $this->input->post('pass');


        $data = array(
            'nama_audite' => $nama,
            'jabatan' => $jabatan,
            'email' => $email,
            'username'=>$username,
            'password'=>$password,
            'id_perusahaan'=>$id,
             'status'=>0

        );

        return $this->db->insert('db_audite', $data);

    }
    public function insert_rq($cobitisasi,$jawaban){

        $audite= $_SESSION['id'];

        $data = array(
            'id_audite' => $audite,
            'id_cobitisasi' => $cobitisasi,
            'jawaban_quisioner' => $jawaban,
        );

        return $this->db->insert('riwayat_quisioner', $data);

    }
    public function tampilaudite($id){
        $id_perusahaan=$id;
        return $query = $this->db->query("SELECT * FROM db_audite WHERE id_perusahaan='$id_perusahaan'");
    }
    public function auditetampil(){
        $id = $_SESSION['id'];
        return $query = $this->db->query("SELECT * FROM db_audite WHERE id_perusahaan=$id");
    }
    public function loginaudite()
    {

        $username = $this->input->post('username');
        $password = $this->input->post('pass');
        $query = $this->db->get_where('db_audite', array('username' => $username, 'password' => $password));
        $data = $query->row_array();
        $row = $query->num_rows();

        if ($row == 1) {
            $status = $data['status'];
            $dataSession = [
                'id'=>$data['id'],
                'username' => $data['username'],
                'nama_audite' => $data['nama_audite'],
                'id_perusahaan' => $data['id_perusahaan'],
                'loginAdmin' => TRUE
            ];

            if($status == 1){
                $this->session->set_userdata($dataSession);
                redirect(base_url() . 'audite/home');
            }else if($status == 0){
                $this->session->set_userdata($dataSession);
                redirect(base_url() . 'audite/selesai');
            }
        }
        else {
            echo "<script>alert('Username/password salah'); window.location.href='.'</script>";

        }
    }
    public function tampilpertanyaan($where){
        return $query = $this->db->query("select * from db_quisioner JOIN it_proses ON db_quisioner.Id_ITP = it_proses.Id_ITP WHERE db_quisioner.Id_ITP in ($where)");

    }
    public function tampilpertanyaan1($where){
        return $query = $this->db->query("select * from db_quisioner WHERE Id_ITP in ($where)");

    }
    public function updateCobitisasi($a,$data){
        $this->db->where('id_c',$a);
        $this->db->update('cobitisasi',$data);
    }
    public function getCobitisasi($a){
        $this->db->select('*');
        $this->db->from('cobitisasi');
        $this->db->where('id_perusahaan',$a);
        $this->db->order_by('id_c','desc');
        $query = $this->db->get();
        return $query->row_array();
    }
    public function saveQuisioner($a, $b){
        return $query = $this->db->query("UPDATE cobitisasi SET rid_quisioner = $b WHERE id_perusahaan = $a order by id_c desc limit 1");
    }

    public function totalAudite($id){
        return $query = $this->db->query("SELECT COUNT(id) as total FROM db_audite WHERE id_perusahaan = $id and status= 1")->row_array();
    }
    public function detail_audite($id){
        $query = $this->db->query("SELECT * FROM db_audite  WHERE id=$id ")->row_array();
        return $query;
    }
    public function robahaudite($id){
        //data yang dikirim
        $nama = $this->input->post('nama');
        $emali = $this->input->post('email');
        $jabatan = $this->input->post('jabatan');
        $username = $this->input->post('username');
        $password = $this->input->post('pass');
        $data = array(
            'nama_audite' => $nama,
            'email' => $emali,
            'jabatan' => $jabatan,
            'username' => $username,
            'password' => $password,

        );
        $this->db->where('id',$id);
        $this->db->update('db_audite', $data);
        return true;
    }
    public function updatestatusaudite($id,$jenis){
        $query = $this->db->query("update db_audite set status=$jenis WHERE id=$id");
        return $query;
    }
    public function updatestatus($id,$jenis){
        $query = $this->db->query("update db_audite set status=$jenis WHERE id=$id");
        return $query;
    }
    public function getbyaudite($id_perusahaan){
        $this->db->select("*");
        $this->db->from("db_audite");
        $this->db->where("id_perusahaan",$id_perusahaan);
        $this->db->where("status","1");
        $query = $this->db->get();
        return $query;
    }

}