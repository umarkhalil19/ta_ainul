<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Diagnosa extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        // if ($this->session->userdata('level') != 99) {
        //     redirect(base_url());
        // }
    }

    public function index()
    {
        $data['pasien'] = $this->m_vic->get_data('pasien');
        $this->mylib->view('diagnosa', $data);
    }

    public function data_pasien()
    {
        $this->mylib->view('data_pasien');
    }

    public function data_pasien_act()
    {
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
        $this->form_validation->set_rules('umur', 'Umur', 'required|trim');
        $this->form_validation->set_rules('jenis_kelamin', 'Jenis Kelamin', 'required|trim');
        if ($this->form_validation->run() != true) {
            $this->data_pasien();
        } else {
            $data = [
                'nama' => $this->input->post('nama'),
                'usia' => $this->input->post('umur'),
                'jenis_kelamin' => $this->input->post('jenis_kelamin')
            ];
            $this->m_vic->insert_data($data, 'pasien');
            $id = $this->db->insert_id();
            redirect('Diagnosa/data_gejala/' . $id);
        }
    }

    public function data_gejala($id = 0)
    {
        if ($id == 0) {
            redirect('Diagnosa');
        } else {
            $data['id'] = $id;
            $data['gejala'] =  $this->m_vic->get_data('gejala');
            $this->mylib->view('data_gejala', $data);
        }
    }

    public function naive_bayes($id = 0)
    {
        if ($id) {
            $gejala = $this->m_vic->get_data('gejala');
            foreach ($gejala->result() as $g) :
                $status = $this->input->post('status_' . $g->id);
                if ($status == 'Ada') {
                    $data = [
                        'pasien_id' => $id,
                        'gejala_kode' => $g->kode,
                        'gejala_nama' => $g->nama,
                    ];
                    $this->m_vic->insert_data($data, 'pasien_gejala');
                }
            endforeach;
            $penyakit = $this->m_vic->get_data('penyakit');
            $array_penyakit = array();
            $array_total = array();
            foreach ($penyakit->result() as $p) {
                $array_bobot = array();
                $array_e = array();
                $array_bayes = array();
                $gejala = $this->db->select('gejala_kode')->get_where('pasien_gejala', ['pasien_id' => $id]);
                foreach ($gejala->result() as $g) {
                    $n = $this->db->select('bobot')->get_where('gejala_bobot', ['penyakit_id' => $p->id, 'gejala_kode' => $g->gejala_kode])->row();
                    if ($n) {
                        array_push($array_bobot, $n->bobot);
                    } else {
                        array_push($array_bobot, 0);
                    }
                }
                // $cek_0 = in_array(0, $array_bobot, true);
                // if ($cek_0 == false) {
                $sum = array_sum($array_bobot);
                for ($i = 0; $i < count($array_bobot); $i++) {
                    $nilai_e = $array_bobot[$i] / $sum;
                    $nilai_e = $nilai_e * $array_bobot[$i];
                    array_push($array_e, $nilai_e);
                }
                $sum = array_sum($array_e);
                for ($i = 0; $i < count($array_e); $i++) {
                    $nilai_bayes = $array_e[$i] / $sum;
                    $nilai_bayes = $nilai_bayes * $array_bobot[$i];
                    array_push($array_bayes, $nilai_bayes);
                }
                array_push($array_total, array_sum($array_bayes) * 100);
                array_push($array_penyakit, $p->id);
                // } else {
                //     continue;
                // }
            }

            $max = array_keys($array_total, max($array_total));
            $index = $max[0];
            $nama = $this->db->select('nama')->get_where('penyakit', ['id' => $array_penyakit[$index]])->row();
            $data = [
                'nilai_diagnosa' => $array_total[$index],
                'penyakit' => $nama->nama
            ];
            $this->m_vic->update_data(['id' => $id], $data, 'pasien');
            $data['pasien'] = $this->m_vic->edit_data(['id' => $id], 'pasien')->row();
            $this->mylib->view('hasil_diagnosa', $data);
        } else {
            redirect('Diagnosa');
        }
    }
}
