<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pasien extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('status') != 'Login') {
            redirect(base_url());
        }
    }

    public function index()
    {
        $data['pasien'] = $this->m_vic->get_data('pasien');
        $this->mylib->view('pasien', $data);
    }

    public function pasien_detail($id = 0)
    {
        if ($id == 0) {
            $this->session->set_flashdata('error', "Data tidak ditemukan");
            redirect('Pasien?notif=error');
        } else {
            $data['pasien'] = $this->m_vic->edit_data(['id' => $id], 'pasien')->row();
            $data['gejala'] = $this->m_vic->edit_data(['pasien_id' => $id], 'pasien_gejala');
            $this->mylib->view('pasien_detail', $data);
        }
    }
}
