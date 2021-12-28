<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Gejala extends CI_Controller
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
        $data['gejala'] = $this->m_vic->get_data('gejala');
        $this->mylib->view('gejala', $data);
    }

    public function gejala_add()
    {
        $this->mylib->view('gejala_add');
    }

    public function gejala_add_act()
    {
        $this->form_validation->set_rules('nama', 'Gejala', 'required|trim');
        $this->form_validation->set_rules('kode', 'Kode', 'required|trim');
        if ($this->form_validation->run() != true) {
            $this->gejala_add();
        } else {
            $data = [
                'nama' => $this->input->post('nama'),
                'kode' => $this->input->post('kode'),
            ];
            $this->m_vic->insert_data($data, 'gejala');
            $this->session->set_flashdata('suces', 'Data gejala berhasil ditambah');
            redirect('Gejala?notif=suces');
        }
    }

    public function gejala_edit($id = 0)
    {
        if ($id == 0) {
            $this->session->set_flashdata('error', 'Data yang anda maksud tidak ditemukan');
            redirect('Gejala?notif=error');
        } else {
            $data['gejala'] = $this->m_vic->edit_data(['id' => $id], 'gejala')->row();
            $this->mylib->view('gejala_edit', $data);
        }
    }

    public function gejala_update($id = 0)
    {
        $id = $this->input->post('id');
        $data = [
            'nama' => $this->input->post('nama'),
            'kode' => $this->input->post('kode')
        ];
        $this->m_vic->update_data(['id' => $id], $data, 'gejala');
        $this->session->set_flashdata('suces', 'Data gejala berhasil diubah');
        redirect('Gejala?notif=suces');
    }

    public function gejala_delete($id = 0)
    {
        if ($id == 0) {
            $this->session->set_flashdata('error', 'Data yang anda maksud tidak ditemukan');
            redirect('Gejala?notif=error');
        } else {
            $this->m_vic->delete_data(['id' => $id], 'gejala');
            $this->session->set_flashdata('suces', 'Data gejala berhasil dihapus');
            redirect('Gejala?notif=suces');
        }
    }
}
