<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
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
        $this->load->view('pages/login');
    }

    public function login_act()
    {
        $this->form_validation->set_rules('username', 'Username', 'required');
        $this->form_validation->set_rules('password', 'Password', 'required');
        if (!$this->form_validation->run()) {
            $this->index();
        } else {
            $uname = vic_slug_akun($this->input->post('username'));
            $pass = vic_slug_akun(str_mod($this->input->post('password')));
            $cek = $this->m_vic->edit_data(['username' => $uname, 'password' => $pass], 'users');
            if ($cek->num_rows() > 0) {
                $c = $cek->row();
                $data = [
                    'name' => $c->nama,
                    'email' => $c->email,
                    'status' => 'Login'
                ];
                $this->session->set_userdata($data);
                redirect('Home');
            } else {
                $this->session->set_flashdata('error', 'Username atau Password salah!!');
                redirect('Login?notif=error');
            }
        }
    }

    public function logout()
    {
        session_destroy();
        redirect('home');
    }
}
