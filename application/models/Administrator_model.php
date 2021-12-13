<?php

/**
 * Created by PhpStorm.
 * User: Lenovo
 * Date: 29/06/2018
 * Time: 13.14
 */
class Administrator_model extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
        $this->load->library('session');
        $this->load->helper('url');
    }


    public function getAdmin()
    {

        $username = $this->input->post('username');
        $password = $this->input->post('pass');

        $query = $this->db->get_where('user', array('username' => $username, 'pwd' => $password));
        $data = $query->row_array();
        $row = $query->num_rows();

        if ($row == 1) {
            $dataSession = [
                'username' => $data['username'],
                'loginAdmin' => TRUE
            ];

            $this->session->set_userdata($dataSession);

            redirect(base_url() . 'administrator/home');
        }
        else {
            echo "<script>alert('Username/password salah'); window.location.href='.'</script>";

        }
    }
    public function robahperusahaan($id){
        //data yang dikirim
        $namaperusahaan = $this->input->post('name');
        $alamat = $this->input->post('alamat');
        $provinsi = $this->input->post('provinsi');
        $negara = $this->input->post('negara');
        $telp = $this->input->post('Telp');
        $email = $this->input->post('email');
        $npwp= $this->input->post('npwp');
        $data = array(
            'nama_perusahaan' => $namaperusahaan,
            'alamat' => $alamat,
            'provinsi' => $provinsi,
            'negara' => $negara,
            'telp' => $telp,
            'email' => $email,
            'npwp' => $npwp,
            'status_validasi'=>0,

        );
        $this->db->where('id_perusahaan',$id);
        return $this->db->update('perusahaan', $data);


    }
    public function insertauditor(){
            $namaperusahaan = $this->input->post('name');
            $alamat = $this->input->post('alamat');
            $telp = $this->input->post('Telp');
            $email = $this->input->post('email');
            $username = $this->input->post('username');
            $password= $this->input->post('pass');


            $data = array(
                'nama_lengkap' => $namaperusahaan,
                'alamat' => $alamat,
                'no_hp' => $telp,
                'email' => $email,
                'username'=>$username,
                'pw'=>$password

            );

            $this->db->insert('db_auditor', $data);
            return true;
        }
    public function insertpertanyaan(){
        //data yang dikirim
        $pertanyaan = $this->input->post('pertanyaan');
        $id_itp = $this->input->post('kode_subdomain');
        $data = array(
            'pertanyaan' => $pertanyaan,
            'Id_ITP' => $id_itp,

        );

        $this->db->insert('db_quisioner', $data);
        return true;
    }
    public function robahpertanyaan($id){
        //data yang dikirim
        $pertanyaan = $this->input->post('pertanyaan');
        $id_itp = $this->input->post('kode_subdomain');
        $data = array(
            'pertanyaan' => $pertanyaan,
            'Id_ITP' => $id_itp,

        );
        $this->db->where('id_quisioner',$id);
        $this->db->update('db_quisioner', $data);
        return true;
    }

    public function tampilperusahaan(){
        $query = $this->db->query("SELECT * FROM perusahaan ORDER BY id_perusahaan DESC ");
        return $query;
    }
    public function tampilauditor(){
        $query = $this->db->query("SELECT * FROM db_auditor ORDER BY id_auditor DESC ");
        return $query;
    }
    public function tampilpertanyaan(){
        $query = $this->db->query("SELECT * FROM db_quisioner INNER join it_proses on it_proses.Id_ITP=db_quisioner.Id_ITP ORDER BY db_quisioner.Id_ITP");
        return $query;
    }
    public function Progres(){
        $this->db->select('*');
        $this->db->from('cobitisasi');
        $this->db->join('perusahaan', 'cobitisasi.id_perusahaan= perusahaan.id_perusahaan');
        $query = $this->db->get();
        return $query;
    }
    public function detail_perusahaan($id){
        $query = $this->db->query("SELECT * FROM perusahaan  WHERE id_perusahaan=$id ")->row_array();
        return $query;
    }
    public function detailpertanyaan($id){
        $query = $this->db->query("SELECT * FROM db_quisioner  INNER join it_proses on it_proses.Id_ITP=db_quisioner.Id_ITP WHERE id_quisioner=$id ")->row_array();
        return $query;
    }
    public function it_bussines(){
        $query = $this->db->query("SELECT * FROM it_bussines");
        return $query;
    }
    public function it_prosess(){
        $query = $this->db->query("SELECT * FROM it_proses");
        return $query;
    }
    public function it_goals(){
        $query = $this->db->query("SELECT * FROM it_goals");
        return $query;
    }
    public function hapus_pertanyaan($id){
        $this->db->where('id_quisioner',$id);
        $this->db->delete('db_quisioner');

    }
    public function updatestatus($id , $jenis){
        $query = $this->db->query("update perusahaan set status_validasi=$jenis WHERE id_perusahaan=$id");
        return $query;
    }
    public function dataaudit(){
        $this->db->select('*');
        $this->db->from('cobitisasi');
        $this->db->join('perusahaan', 'cobitisasi.id_perusahaan= perusahaan.id_perusahaan');
        $this->db->join('db_auditor', 'perusahaan.id_auditor= db_auditor.id_auditor');
        $query = $this->db->get();
        return $query;
    }
    public function data(){
        $query = $this->db->query("SELECT * FROM cobitisasi INNER join perusahaan on perusahaan.id_perusahaan=cobitisasi.id_perusahaan ORDER BY cobitisasi.waktu_pelaksanaan");
        return $query;
    }
    public function hitungperusahaan(){
        $query = $this->db->query('SELECT COUNT(id_perusahaan) as total FROM perusahaan WHERE  status_validasi=1');
        return $query;
    }
    public function hitungaudit(){
        $query = $this->db->query('SELECT COUNT(id_c) as total FROM cobitisasi ');
        return $query;
    }
    public function hitungaudite(){
        $query = $this->db->query('SELECT COUNT(id) as total FROM db_audite ');
        return $query;
    }
    public function hitungpertanyaan(){
        $query = $this->db->query('SELECT COUNT(id_quisioner) as total FROM db_quisioner');
        return $query;
    }
    public function detail_auditor($id){
        $query = $this->db->query("SELECT * FROM db_auditor  WHERE id_auditor=$id ")->row_array();
        return $query;
    }
}