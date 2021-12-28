<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h4 class="page-title">Hasil Diagnosa</h4>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <!-- column -->
                            <div class="col-lg-12">
                                <br>
                                <div class="alert alert-warning" role="alert">
                                    <h4 class="alert-heading">Hasil Diagnosa</h4>
                                    <p>Berdasarkan Hasil Diagnosa Sistem, Pasien Dengan Data Berikut :</p>
                                    <hr>
                                    <font style="margin-left: 1cm;">Nama : <?= $pasien->nama ?></font><br>
                                    <font style="margin-left: 1cm;">Usia : <?= $pasien->usia ?> Tahun</font><br>
                                    <font style="margin-left: 1cm;">Jenis Kelamin : <?= $pasien->jenis_kelamin ?></font>
                                    <hr>
                                    <p class="mb-0">Dengan Kemungkinan Sebesar <strong><?= number_format((float)$pasien->nilai_diagnosa, 2, '.', '') ?>%</strong> Menderita Penyakit <strong><?= $pasien->penyakit ?></strong></p>
                                </div>
                            </div>
                            <!-- column -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- footer -->
    <!-- ============================================================== -->
    <footer class="footer text-center">
        All Rights Reserved by Matrix-admin. Designed and Developed by Mahasiswa <a href="https://informatika.unimal.ac.id/">Teknik Informatika </a>Unimal.
    </footer>
    <!-- ============================================================== -->
    <!-- End footer -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Page wrapper  -->
<!-- ============================================================== -->