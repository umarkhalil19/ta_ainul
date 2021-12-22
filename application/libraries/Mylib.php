<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Mylib
{

	/*fungsi membuat menampilkan halaman tertentu*/
	// function dview($view, $data = array())
	// {
	// 	$ci = &get_instance();
	// 	if (!array_key_exists('title', $data)) {
	// 		$data['title'] = 'BKD - Beban Kerja Dosen Universitas Malikussaleh';
	// 	}
	// 	$data['menu'] = $ci->uri->segment(3);
	// 	$ci->load->view('dosen/template/v_header', $data);
	// 	$ci->load->view('dosen/template/v_navbar', $data);
	// 	if ($data) {
	// 		$ci->load->view('dosen/' . $view, $data);
	// 	} else {
	// 		$ci->load->view($view);
	// 	}
	// 	$ci->load->view('dosen/template/v_footer', $data);
	// }

	function view($view, $data = array())
	{
		$ci = &get_instance();
		if (!array_key_exists('title', $data)) {
			$data['title'] = 'Naive Bayes';
		}
		if ($ci->session->userdata('level') == 99) {
			$ci->load->view('admin/v_header', $data);
			$ci->load->view('admin/v_navbar', $data);
			if ($data) {
				$ci->load->view('pages/' . $view, $data);
			} else {
				$ci->load->view($view);
			}
			$ci->load->view('admin/v_footer', $data);
		} elseif ($ci->session->userdata('level') == 1) {
			$ci->load->view('user/v_header', $data);
			$ci->load->view('user/v_navbar', $data);
			if ($data) {
				$ci->load->view('pages/' . $view, $data);
			} else {
				$ci->load->view($view);
			}
			$ci->load->view('user/v_footer', $data);
		} else {
			$ci->load->view('home/header', $data);
			$ci->load->view('home/sidebar', $data);
			if ($data) {
				$ci->load->view('pages/' . $view, $data);
			} else {
				$ci->load->view($view);
			}
			$ci->load->view('home/footer', $data);
		}
	}

	// function hview($view, $data = array())
	// {
	// 	$ci = &get_instance();
	// 	if (!array_key_exists('title', $data)) {
	// 		$data['title'] = 'Naive Bayes';
	// 	}
	// 	$ci->load->view('home/header', $data);
	// 	$ci->load->view('home/sidebar', $data);
	// 	if ($data) {
	// 		$ci->load->view('pages/' . $view, $data);
	// 	} else {
	// 		$ci->load->view($view);
	// 	}
	// 	$ci->load->view('home/footer', $data);
	// }

	function autoCode($field_code, $initial = 'SMBRG', $tabel)
	{
		$ci = &get_instance();
		$ci->db->order_by($field_code, 'DESC');
		$res = $ci->db->get($tabel);
		$data = $res->row_array();
		if ($data) {
			$value = $data[$field_code];
			$result = substr($value, 4, 8);
			$result = (int)$result;
			$result = $result + 1;
			$coderesult = $initial . "-" . STR_PAD($result, 6, "0", STR_PAD_LEFT);
		} else {
			$coderesult = $initial . "-" . "000001";
		}
		return $coderesult;
	}
}
