<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Penyakit extends CI_Controller
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
        $data['penyakit'] = $this->m_vic->get_data('penyakit');
        $this->mylib->view('penyakit', $data);
    }

    public function penyakit_add()
    {
        $this->mylib->view('penyakit_add');
    }

    public function penyakit_add_act()
    {
        $this->form_validation->set_rules('nama', 'Nama Penyakit', 'required|trim');
        if ($this->form_validation->run() != true) {
            $this->penyakit_add();
        } else {
            $data = [
                'nama' => $this->input->post('nama')
            ];
            $this->m_vic->insert_data($data, 'penyakit');
            $this->session->set_flashdata('suces', 'Data penyakit berhasil ditambah');
            redirect('Penyakit?notif=suces');
        }
    }

    public function penyakit_edit($id = 0)
    {
        if ($id == 0) {
            $this->session->set_flashdata('error', 'Data yang anda maksud tidak ditemukan');
            redirect('Penyakit?notif=error');
        } else {
            $data['penyakit'] = $this->m_vic->edit_data(['id' => $id], 'penyakit')->row();
            $this->mylib->view('penyakit_edit', $data);
        }
    }

    public function penyakit_update()
    {
        $id = $this->input->post('id');
        $data = [
            'nama' => $this->input->post('nama')
        ];
        $this->m_vic->update_data(['id' => $id], $data, 'penyakit');
        $this->session->set_flashdata('suces', 'Data penyakit berhasil diubah');
        redirect('Penyakit?notif=suces');
    }

    public function penyakit_delete($id = 0)
    {
        if ($id == 0) {
            $this->session->set_flashdata('error', 'Data yang anda maksud tidak ditemukan');
            redirect('Penyakit?notif=error');
        } else {
            $this->m_vic->delete_data(['id' => $id], 'penyakit');
            $this->session->set_flashdata('suces', 'Data penyakit berhasil dihapus');
            redirect('Penyakit?notif=suces');
        }
    }

    public function penyakit_gejala($id = 0)
    {
        if ($id == 0) {
            $this->session->set_flashdata('error', 'Data yang anda maksud tidak ditemukan');
            redirect('Penyakit?notif=error');
        } else {
            $data['gejala_id'] = $this->db->select('gejala_id,nama,id')->get_where('penyakit', ['id' => $id])->row();
            $data['gejala'] = $this->m_vic->get_data('gejala');
            $this->mylib->view('penyakit_gejala', $data);
        }
    }

    public function penyakit_gejala_act()
    {
        $gejala_id = "";
        $id = $this->input->post('id');
        $gejala = $this->m_vic->get_data('gejala');
        foreach ($gejala->result() as $g) {
            $bobot = $this->input->post('bobot_' . $g->id);
            if ($bobot) {
                $gejala_id .= ',' . $g->kode;
                $data = [
                    'penyakit_id' => $id,
                    'gejala_kode' => $g->kode,
                    'gejala_nama' => $g->nama,
                    'bobot' => $bobot
                ];
                $this->m_vic->insert_data($data, 'gejala_bobot');
            }
        }
        $gejala_id = substr($gejala_id, 1);
        $this->m_vic->update_data(['id' => $id], ['gejala_id' => $gejala_id], 'penyakit');
        $this->session->set_flashdata('suces', 'Data gejala penyakit berhasil ditambah');
        redirect('Penyakit?notif=suces');
    }
}
