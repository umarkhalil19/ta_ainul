<?php

function show_alert()
{
	if (isset($_GET['alert'])) {
		$alert = $_GET['alert'];
		if ($alert == "add") {
			echo "<div class='alert alert-success alert-dah'>Data Berhasil Di Tambah. </div>";
		} else if ($alert == "delete") {
			echo "<div class='alert alert-success alert-dah'>Data Berhasil Di Hapus. </div>";
		} else if ($alert == "update") {
			echo "<div class='alert alert-success alert-dah'>Data Berhasil Di Update. </div>";
		} else if ($alert == "login-failed") {
			echo "<div class='alert alert-danger alert-dah'>Login Gagal !</div>";
		} else if ($alert == "setting-update") {
			echo "<div class='alert alert-success alert-dah'>Pengaturan Berhasil Di Ubah.</div>";
		} else if ($alert == "page-saved") {
			echo "<div class='alert alert-success alert-dah'>Halaman Berhasil Di Simpan.</div>";
		} else if ($alert == "page-delete") {
			echo "<div class='alert alert-success alert-dah'>Halaman Berhasil Di Hapus.</div>";
		} else if ($alert == "post-saved") {
			echo "<div class='alert alert-success alert-dah'>Post Berhasil Di Simpan.</div>";
		} else if ($alert == "post-delete") {
			echo "<div class='alert alert-success alert-dah'>Post Berhasil Di Hapus Permanen.</div>";
		} else if ($alert == "post-trash") {
			echo "<div class='alert alert-success alert-dah'>Post Berhasil Di Pindahkan Ke Tong Sampah.</div>";
		} else if ($alert == "menu-saved") {
			echo "<div class='alert alert-success alert-dah'>Menu Berhasil Di Simpan.</div>";
		} else if ($alert == "menu-delete") {
			echo "<div class='alert alert-success alert-dah'>Menu Berhasil Di Hapus.</div>";
		} else if ($alert == "widget-delete") {
			echo "<div class='alert alert-success alert-dah'>Widget Berhasil Di Hapus.</div>";
		} else if ($alert == "user-add") {
			echo "<div class='alert alert-success alert-dah'>User Berhasil Di Tambah.</div>";
		} else if ($alert == "user-update") {
			echo "<div class='alert alert-success alert-dah'>Data User Berhasil Di Update.</div>";
		} else if ($alert == "user-duplikat") {
			echo "<div class='alert alert-danger alert-dah'>Data Sudah Ada.</div>";
		} else if ($alert == "user-daftar") {
			echo "<div class='alert alert-success alert-dah'>Pendaftaran Sukses. Silakan login dengan:<br> Username = No Identitas Anda <br> Password = No Identitas Anda</div>";
		} else if ($alert == "user-kirim") {
			echo "<div class='alert alert-success alert-dah'>Data Berhasil Di Kirim.<br> Pengajuan Anda Akan Segera Ditindaklanjuti. <br> Terima Kasih </div>";
		} else if ($alert == "upload-gagal") {
			echo "<div class='alert alert-danger alert-dah'>Upload Data Gagal. </div>";
		} else if ($alert == "reset-pass") {
			echo "<div class='alert alert-success alert-dah'>Reset Password Berhasil. </div>";
		} else if ($alert == "ganti-pass") {
			echo "<div class='alert alert-success alert-dah'>Password Berhasil Diubah. </div>";
		} else if ($alert == "gagal-pass") {
			echo "<div class='alert alert-danger alert-dah'>Password Gagal Diubah. </div>";
		} else if ($alert == "aktif-add") {
			echo "<div class='alert alert-success alert-dah'>Akun Berhasi Diaktifkan. </div>";
		} else if ($alert == "aktif-add2") {
			echo "<div class='alert alert-success alert-dah'>Akun Berhasi Dinonaktifkan. </div>";
		}
	}
}

function create_slug($string)
{
	// $a = trim($string);
	// $slug = preg_replace('/[^A-Za-z0-9-]+/', '-', $a);
	return strtolower(url_title($string));
}

function display_sub($parent, $mother)
{
	$query = mysql_query("select * from vic_menu where menu_parent='$parent' and menu_mother='$mother'");
	echo "<ul parent='" . $parent . "' id='" . $mother . "'>";
	// echo "<li class='list-menu-kosong'></li>";
	while ($row = mysql_fetch_assoc($query)) {
		if (count($query) > 0) {
			echo "<li id='menu_" . $row['menu_id'] . "' ini='" . $row['menu_id'] . "'><div>" . $row['menu_name'] . "<small>  " . $row['menu_url'] . "  </small> <a class='pull-right' href=" . base_url() . 'admin/menu_item_delete/' . $row['menu_id'] . "> Delete </a><a class='pull-right' href=" . base_url() . 'admin/menu_item_edit/' . $row['menu_id'] . "> Edit </a></div>";
			display_sub($row['menu_id'], $row['menu_mother']);
			echo "</li>";
		} else {
			echo "<li id='menu_" . $row['menu_id'] . "' ini='" . $row['menu_id'] . "'>" . $row['menu_name'] . "<small>  " . $row['menu_url'] . "  </small> <a class='pull-right' href=" . base_url() . 'admin/menu_item_delete/' . $row['menu_id'] . "> Delete</a> <a class='pull-right' href=" . base_url() . 'admin/menu_item_edit/' . $row['menu_id'] . "> Edit </a></li>";
		}
	}
	echo "</ul>";
}

function display_sub_navigation($parent, $mother)
{
	$query = mysql_query("select * from vic_menu where menu_parent='$parent' and menu_mother='$mother'");
	$cek = mysql_num_rows($query);
	if ($cek > 0) {
		echo "<ul>";
		while ($row = mysql_fetch_assoc($query)) {

			if ($row['menu_tab'] == "1") {
				$tab = "target='_blank'";
			} else {
				$tab = "";
			}


			if (count($query) > 0) {
				echo '<li><a ' . $tab . ' href=' . $row['menu_url'] . '>' . $row['menu_name'] . '</a>';
				display_sub_navigation($row['menu_id'], $row['menu_mother']);
				echo "</li>";
			} else if (count($query) == 0) {
				echo '<li><a ' . $tab . ' href=' . $row['menu_url'] . '>' . $row['menu_name'] . '</a></li>';
			}
		}
		echo "</ul>";
	}
}


function menu_navigation($menu_name)
{
	echo '<div class="menu-responsif"><span class="glyphicon glyphicon-list"></span> MENU</div>';
	echo '<div class=' . $menu_name . '>';
	echo '<ul classs=main-' . $menu_name . '>';

	$CI = &get_instance();
	$data = $CI->m_vic->get_menu_item($menu_name);
	$item = $data->result();
	$jumlah = $data->num_rows();
	foreach ($item as $i) {
		$query = mysql_query("select * from vic_menu where menu_parent='$i->menu_id' and menu_mother='$i->menu_mother'");
		$q = mysql_num_rows($query);
		if ($i->menu_tab == "1") {
			$tab = "target='_blank'";
		} else {
			$tab = "";
		}
		if ($q > 0) {
			echo '<li><a ' . $tab . ' href=' . $i->menu_url . '>' . $i->menu_name . ' <span class="caret"></span> </a>';
			display_sub_navigation($i->menu_id, $i->menu_mother);
			echo "</li>";
		} else if ($q == 0) {
			echo '<li><a ' . $tab . ' href=' . $i->menu_url . '>' . $i->menu_name . '</a></li>';
		}
	}

	echo '</ul>';
	echo '</div>';
}

// DAHCODE WIDGET

function post_content($text, $numb)
{
	if (strlen($text) > $numb) {
		$text = str_replace("  ", "", $text);
		$text = substr($text, 0, $numb);
		$text = substr($text, 0, strrpos($text, " "));
		$etc = " ...";
		$text = $text . $etc;
	}
	return $text;
}


function get_option($option_name)
{
	$CI = $CI = &get_instance();
	return $CI->m_vic->get_option($option_name);
}

// function save_visitor_data(){
// 	$CI=&get_instance();
// 	if ($CI->agent->is_mobile()){
// 		$device = $CI->agent->mobile();
// 	}else{
// 		$device = 'Unidentified';
// 	}

// 	// referrer
// 	if ($CI->agent->is_referral()){
// 		$referrer = $CI->agent->referrer();
// 	}else{
// 		$referrer = "";
// 	}

// 	$data = array(
// 		'time_visit' => date('Y-m-d H:i:s'),
// 		'user_ip' => $_SERVER['REMOTE_ADDR'],
// 		'user_browser' => $CI->agent->browser(),
// 		'user_os' => $CI->agent->platform(),
// 		'user_device' => $device,
// 		'page' => base_url(),
// 		'user_referrer' => $referrer
// 		);

// 	$CI->m_vic->insert_data($data,'vic_visitor');

// }


function TanggalIndo($date)
{
	$HariIndo = array("Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu");
	$BulanIndo = array("Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");

	$tahun = substr($date, 0, 4);
	$bulan = substr($date, 5, 2);
	$tgl   = substr($date, 8, 2);

	$result = $tgl . " " . $BulanIndo[(int)$bulan - 1] . " " . $tahun;
	//$result = $HariIndo[(int)$tgl-1] . ", ". $tgl . " " . $BulanIndo[(int)$bulan-1] . " ". $tahun;  //pakai hari
	return ($result);
}

function hariIndo($date)
{
	$tanggal = $date;
	$day = date('D', strtotime($tanggal));
	$dayList = array(
		'Sun' => 'Minggu',
		'Mon' => 'Senin',
		'Tue' => 'Selasa',
		'Wed' => 'Rabu',
		'Thu' => 'Kamis',
		'Fri' => 'Jumat',
		'Sat' => 'Sabtu'
	);
	//echo "Tanggal {$tanggal} adalah hari : " . $dayList[$day];
	$result = $dayList[$day];
	return ($result);
}

function _getIpaddress()
{
	$ipaddress = '-';
	if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
		$ipaddress = $_SERVER['HTTP_CLIENT_IP'];
	} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
		$ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
	} else {
		$ipaddress = $_SERVER['REMOTE_ADDR'];
	}
	return $ipaddress;
}
