<?php
defined('BASEPATH') OR exit('No Direct Script acces alloewd');
/**
 * Created by PhpStorm.
 * User: USER
 * Date: 23/08/2019
 * Time: 18.57
 */
class Auditor extends CI_Controller
{
    public function __construct(){
        parent::__construct();
        $this->load->library('session');
        $this->load->model('Auditor_model');
        $this->load->model('Administrator_model');
        $this->load->model('Audite_model');

    }
    public function index(){
        $this->load->view('auditor/login');
    }
    public function detail_grafik($id){
        $data['riwayat'] = $this->Auditor_model->getRiwayatByCobitisasi($id)->result();
        $this->load->view('auditor/header1');
        $this->load->view('auditor/chart1',$data);
        $this->load->view('auditor/footer1');
    }
    public function rafik($id){
        $data['tampil'] = $this->Auditor_model->grafikpeningkatan($id)->result();
        $this->load->view('auditor/header_home');
        $this->load->view('auditor/chart',$data);
        $this->load->view('auditor/footer');

    }
    public function tambahPerusahaan()
    {
        $id= $_SESSION['id_auditor'];
        if($this->Auditor_model->insertperusahaan($id)){
            redirect('auditor/audit');
        }else{
            print_r($this->upload->errors());
            exit();
        }
    }
    public function rekap_hasil($id,$idc){
        //indikator
      ob_start();
        $data['misi'] = '';
        $misi = $this->Auditor_model->getMisi1($id,$idc);
        $misiExplode = explode("$", $misi['misi']);
        foreach($misiExplode as $x){
            $data['misi'][] = $x;
        }
        $data['masalah'] = '';
        $masalah = $this->Auditor_model->getMasalah1($id,$idc);
        $masalahExplode = explode("$", $masalah['masalah']);
        foreach($masalahExplode as $x){
            $data['masalah'][] = $x;
        }
//bissnisgoal
        $itBussines = $this->Auditor_model->getSavedBussinesGoal1($id,$idc);
        $expITB = explode(",", $itBussines['rid_ITB']);
        $data['isiTable'] = '';
        $nmItg = [];
        foreach($expITB as $exp){
            $companyItBussines = $this->Auditor_model->getBussinesGoal($exp);
            $hubITB_ITG = $this->Auditor_model->getHubITB_ITG($exp);
            $data['isiTable'] .= "<tr>"
                ."<td>"
                ." - "
                .$companyItBussines['keterangan']
                ."</td>"
                ."<td>";

            foreach($hubITB_ITG as $item){
                $data['isiTable'] .= "";
                array_push($nmItg, $item['nm_itg']);
            }
            $data['isiTable'] .= "<br></td>"
                ."</tr>";
        }
        //it goals
        $itGoals = $this->Auditor_model->getSavedBussinesGoal1($id,$idc);
        $expITB = explode(",", $itGoals['rid_ITG']);
        $expITB = array_unique($expITB);
        $data['isiTable1'] = '';
        $nmItp = [];
        foreach($expITB as $exp){
            $companyItBussines = $this->Auditor_model->getITGoals($exp);
            $hubITB_ITG = $this->Auditor_model->getHubITG_ITP($exp);
            $data['isiTable1'] .= "<tr>"
                ."<td>"
                .""
                .$companyItBussines['keterangan']
                ."</td>"
                ."<td>";
            foreach($hubITB_ITG as $item){
                $data['isiTable1'] .= $item['subdomain'].", ";
                array_push($nmItp, $item['idITP']);
            }
            $data['isiTable1'] .= "</td>"
                ."</tr>";
        }

        $itp = $this->Auditor_model->getITP1($id,$idc);
        $tampil = $this->Audite_model->tampilpertanyaan1($itp['rid_ITP'])->result();
        $data['tampil']=$tampil;
        $data['riwayat'] = $this->Auditor_model->getRiwayatByCobitisasi($idc)->result();
        $data['maturity'] = $this->Auditor_model->maturiti($id,$idc);
        $this->load->view('auditor/rekaphasil',$data);

//    $html=ob_get_contents();
//    ob_end_clean();
//    require_once('./assets/html2pdf/html2pdf.class.php');
//    $pdf= new HTML2PDF('P','A4','en');
//    $pdf->WriteHTML($html);
//    $pdf->Output('document_laporan.pdf','D');
//    $mpdf= new \Mpdf\Mpdf();
//    $html= $this->load->view('perusahaan/rekaphasil',$data,true);
//    $mpdf->Write($html);
//    $mpdf->Output();
//        $
    }

    public function form_audite($id){
        $data['audite'] = $this->Audite_model->detail_audite($id);
        $this->load->view('auditor/header_home');
        $this->load->view('auditor/form_audite',$data);

        }

    public function topdown($page = 'misi'){
        $id_perusahaan = $_SESSION['id_perusahaan'];

        //$data['audite'] = $this->Perusahaan_model->getAudite($id_perusahaan);
        switch($page){
            case 'misi':
                $data['misi'] = '';
                $misi = $this->Auditor_model->getMisi($id_perusahaan);
                $misiExplode = explode("$", $misi['misi']);
                foreach($misiExplode as $x){
                   $data['misi'][] = $x;
                }
                //exit(print_r($data['misi']));
                $view = 'auditor/misi';
                break;
            case 'bussines_goal':
                $data['misi'] = '';
                $misi = $this->Auditor_model->getMisi($id_perusahaan);
                $misiExplode = explode("$", $misi['misi']);
                foreach($misiExplode as $x){
                    $data['misi'][] = $x;
                }
                $data['it_bussines'] = $this->Auditor_model->getBussinesGoal();
                $view = 'auditor/bussines_goal';
                $this->load->view('auditor/footer');
                break;
            case 'it_goals':
                $itBussines = $this->Auditor_model->getSavedBussinesGoal();
                $expITB = explode(",", $itBussines['rid_ITB']);
                $data['isiTable'] = '';
                $nmItg = [];
                foreach($expITB as $exp){
                    $companyItBussines = $this->Auditor_model->getBussinesGoal($exp);
                    $hubITB_ITG = $this->Auditor_model->getHubITB_ITG($exp);
                    $data['isiTable'] .= "<tr>"
                        ."<td>"
                            .$companyItBussines['keterangan']
                        ."</td>"
                        ."<td>";

                            foreach($hubITB_ITG as $item){
                                $data['isiTable'] .= $item['nm_itg'].". ".$item['ket_itg']."<br>";
                                array_push($nmItg, $item['nm_itg']);
                            }
                        $data['isiTable'] .= "</td>"
                    ."</tr>";
                }
                $view = 'auditor/it_goals';

                $dataNmItg = '';
                $counterITG = count($nmItg);
                $no = 0;
                foreach($nmItg as $n){
                    $dataNmItg .= $n;
                    if($no < ($counterITG - 1)){
                        $dataNmItg .= ",";
                    }
                    $no++;
                }
                $this->Auditor_model->updateITG($dataNmItg);
                //exit(print_r(array_unique($nmItg)));
                $this->load->view('auditor/footer');
                break;
            case 'it_process':
                $itGoals = $this->Auditor_model->getSavedBussinesGoal();
                $expITB = explode(",", $itGoals['rid_ITG']);
                $data['isiTable'] = '';
                $nmItp = [];
                foreach($expITB as $exp){
                    $companyItBussines = $this->Auditor_model->getITGoals($exp);
                    $hubITB_ITG = $this->Auditor_model->getHubITG_ITP($exp);
                    $data['isiTable'] .= "<tr>"
                        ."<td>"
                        .$companyItBussines['keterangan']
                        ."</td>"
                        ."<td>";

                    foreach($hubITB_ITG as $item){
                        $data['isiTable'] .= $item['subdomain']."<br>";
                        array_push($nmItp, $item['idITP']);
                    }
                    $data['isiTable'] .= "</td>"
                        ."</tr>";
                }
                $view = 'auditor/it_process';
                $dataNmItp = '';
                $counterITP = count($nmItp);
                $no = 0;
                foreach($nmItp as $n){
                    $dataNmItp .= $n;
                    if($no < ($counterITP - 1)){
                        $dataNmItp .= ",";
                    }
                    $no++;
                }
                $this->Auditor_model->updateITP($dataNmItp);
                $this->load->view('auditor/footer');
                break;
        }

        $this->load->view('auditor/header_perusahaan');
        $this->load->view($view, $data);
    }

    public function buttomup($page = 'masalah'){
        $id_perusahaan = $_SESSION['id_perusahaan'];
        //$data['audite'] = $this->Perusahaan_model->getAudite($id_perusahaan);
        switch($page){
            case 'masalah':
                $data['masalah'] = '';
                $masalah = $this->Auditor_model->getMasalah($id_perusahaan);
                $masalahExplode = explode("$", $masalah['masalah']);
                foreach($masalahExplode as $x){
                    $data['masalah'][] = $x;
                }
                //exit(print_r($data['misi']));
                $view = 'auditor/permasalahan';
                $this->load->view('auditor/footer');
                break;
            case 'bussines_goalbu':
                $data['masalah'] = '';
                $masalah = $this->Auditor_model->getMasalah($id_perusahaan);
                $masalahExplode = explode("$", $masalah['masalah']);
                foreach($masalahExplode as $x){
                    $data['masalah'][] = $x;
                }
                $data['it_bussines'] = $this->Auditor_model->getBussinesGoal();
                $this->load->view('auditor/footer');
                $view = 'auditor/bussines_goalbu';
                break;
            case 'it_goalsbu':
                $itBussines = $this->Auditor_model->getSavedBussinesGoal();
                $expITB = explode(",", $itBussines['rid_ITB']);
                $data['isiTable'] = '';
                $nmItg = [];
                foreach($expITB as $exp){
                    $companyItBussines = $this->Auditor_model->getBussinesGoal($exp);
                    $hubITB_ITG = $this->Auditor_model->getHubITB_ITG($exp);
                    $data['isiTable'] .= "<tr>"
                        ."<td>"
                        .$companyItBussines['keterangan']
                        ."</td>"
                        ."<td>";

                    foreach($hubITB_ITG as $item){
                        $data['isiTable'] .= $item['nm_itg'].". ".$item['ket_itg']."<br>";
                        array_push($nmItg, $item['nm_itg']);
                    }
                    $data['isiTable'] .= "</td>"
                        ."</tr>";
                }
                $view = 'auditor/it_goalsbu';

                $dataNmItg = '';
                $counterITG = count($nmItg);
                $no = 0;
                foreach($nmItg as $n){
                    $dataNmItg .= $n;
                    if($no < ($counterITG - 1)){
                        $dataNmItg .= ",";
                    }
                    $no++;
                }
                $this->Auditor_model->updateITG($dataNmItg);
                //exit(print_r(array_unique($nmItg)));
                $this->load->view('auditor/footer');
                break;
            case 'it_processbu':
                $itGoals = $this->Auditor_model->getSavedBussinesGoal();
                $expITB = explode(",", $itGoals['rid_ITG']);
                $data['isiTable'] = '';
                $nmItp = [];
                foreach($expITB as $exp){
                    $companyItBussines = $this->Auditor_model->getITGoals($exp);
                    $hubITB_ITG = $this->Auditor_model->getHubITG_ITP($exp);
                    $data['isiTable'] .= "<tr>"
                        ."<td>"
                        .$companyItBussines['keterangan']
                        ."</td>"
                        ."<td>";

                    foreach($hubITB_ITG as $item){
                        $data['isiTable'] .= $item['subdomain']."<br>";
                        array_push($nmItp, $item['idITP']);
                    }
                    $data['isiTable'] .= "</td>"
                        ."</tr>";
                }
                $view = 'auditor/it_processbu';
                $dataNmItp = '';
                $counterITP = count($nmItp);
                $no = 0;
                foreach($nmItp as $n){
                    $dataNmItp .= $n;
                    if($no < ($counterITP - 1)){
                        $dataNmItp .= ",";
                    }
                    $no++;
                }
                $this->Auditor_model->updateITP($dataNmItp);
                $this->load->view('auditor/footer');
                break;
        }

        $this->load->view('auditor/header_perusahaan');
        $this->load->view($view, $data);
        $this->load->view('auditor/footer');
    }

    public function saveMisi(){
        if($this->Auditor_model->saveMisi()){
            redirect('auditor/topdown/bussines_goal');
        }
    }
    public function saveMasalah(){
        if($this->Auditor_model->saveMasalah()){
            redirect('auditor/buttomup/bussines_goalbu');
        }
    }
    public function saveBussinesGoal(){
        if($this->Auditor_model->saveBussinesGoal()){
            redirect('auditor/topdown/it_goals');
        }
    }
    public function saveBussinesGoalBu(){
        if($this->Auditor_model->saveBussinesGoalBu()){
            redirect('auditor/buttomup/it_goalsbu');
        }
    }

    public function Home(){
        $id = $_SESSION['id_auditor'];
        $data['perusahaan'] = $this->Auditor_model->hitungperusahaan($id)->result();
        $data['audit'] = $this->Auditor_model->hitungaudit($id)->result();
        $data['audite'] = $this->Auditor_model->hitungaudite($id)->result();
        $data['pertanyaan'] = $this->Auditor_model->hitungpertanyaan()->result();
        $this->load->view('auditor/header_home');
        $this->load->view('auditor/home',$data);
        $this->load->view('auditor/footer');

    }
    public function progres(){
        $tampil = $this->Auditor_model->Progres()->result();
        $data['tampil'] = $tampil;
        $this->load->view('auditor/header_home');
        $this->load->view('auditor/progres_audit',$data);
    }
    public function tambah_perusahaan($id=false){
            if($id==false) {
                $this->load->view('auditor/header_home');
                $this->load->view('auditor/formulir_perusahaan');
                $this->load->view('auditor/footer');
            }
            else{
                $data['perusahaan'] = $this->Administrator_model->detail_perusahaan($id);
                $this->load->view('auditor/header_home', $data);
                $this->load->view('auditor/editform_auditor', $data);
                $this->load->view('auditor/footer');

            }
    }
    public function audit(){
        $id= $_SESSION['id_auditor'];
        $tampil = $this->Auditor_model->data_perusahaan($id)->result();
        $data['tampil'] = $tampil;
        $this->load->view('auditor/header_home');
        $this->load->view('auditor/audit',$data);
    }

    public function mulai_audit($id){
        $idp['id_perusahaan'] = $id;

        $dataSession = [
            'id_perusahaan' => $idp['id_perusahaan'],
        ];
        $this->session->set_userdata($dataSession);

        $audite = $this->Audite_model->getbyaudite($id)->num_rows();
        if ($audite >0){
            $id= $_SESSION['id_auditor'];
            $tampil = $this->Auditor_model->data_perusahaan($id)->result();
            $data['tampil'] = $tampil;
          //  $tampil = $this->Auditor_model->Progres($id)->result();
           // $data['tampil'] = $tampil;
            $this->session->set_flashdata("msg",$audite." audite belum menyelesaikan pengisian kuisioner");
            $this->load->view('auditor/header_home',$data);
            $this->load->view('auditor/audit');
        }
        else{
            $this->load->view('auditor/header_perusahaan');
            $this->load->view('auditor/mulai_audit',$idp);
        }
    }
    public function getLogin(){
        $this->Auditor_model->loginAuditor();
    }
    public function logout(){
        $this->session->sess_destroy();
        redirect('auditor');
    }
    public function not(){
        $this->load->view('perusahaan/header_perusahaan');
        $this->load->view('perusahaan/not_verifikasi');
    }
    public function insert_audite($id){
        $data['id_perusahaan']=$id;
        $this->load->view('auditor/header_perusahaan');
        $this->load->view('auditor/insert_audite',$data);
    }
    public function lihataudite($id){
        $data['audite'] = $this->Audite_model->detail_audite($id);
        $this->load->view('auditor/header_home');
        $this->load->view('audite/detail_audite',$data);
    }
    public function lhaudite($id){
        $data['id_perusahaan']=$id;
        $tampil=$this->Audite_model->tampilaudite($id)->result();
        $data['tampil']=$tampil;
        $this->load->view('auditor/header_home');
        $this->load->view('auditor/tampil_audite',$data);
    }
    public function audite(){
        $id= $_SESSION['id_auditor'];
        $tampil = $this->Auditor_model->data_perusahaan($id)->result();
        $data['tampil'] = $tampil;
        $this->load->view('auditor/header_home');
        $this->load->view('auditor/audite',$data);
    }
    public function histori_audit(){
        $tampil = $this->Auditor_model->Progres()->result();
        $data['tampil'] = $tampil;
        $this->load->view('auditor/header_home');
        $this->load->view('auditor/histori',$data);
    }
    public function grafik(){
        $tampil = $this->Auditor_model->tg()->result();
        $data['tampil'] = $tampil;
        $this->load->view('auditor/header_home');
        $this->load->view('auditor/Grafik',$data);
    }
    public function updateAudite($id){
        if($this->Audite_model->robahaudite($id)){

            redirect('auditor/audite');
        }else{
            print_r($this->upload->errors());
            exit();
        }
    }
    public function rekap_hasil_siddiq($idp,$idc){

        $data['riwayat'] = $this->Perusahaan_model->getRiwayatByCobitisasi($idc)->result();
        $this->load->view('perusahaan/rekaphasilsiddiq',$data);
    }
}