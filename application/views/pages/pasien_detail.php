<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h4 class="page-title">Detail Pasien</h4>
                <div class="ms-auto text-end">
                    <nav aria-label="breadcrumb">
                        <a href="<?= base_url('Pasien') ?>" class="float-right btn btn-md btn-dark"><i class="mdi mdi-arrow-left-bold-circle"> </i>Kembali</a>
                    </nav>
                </div>
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
                                <div class="alert alert-success" role="alert">
                                    <h4 class="alert-heading">Hasil Pengujian Menggunakan Algoritma Naive Bayes</h4>
                                    <p>Data Pribadi Pasien :</p>
                                    <hr>
                                    <font style="margin-left: 1cm;">Nama : <?= $pasien->nama ?></font><br>
                                    <font style="margin-left: 1cm;">Usia : <?= $pasien->usia ?> Tahun</font><br>
                                    <font style="margin-left: 1cm;">Jenis Kelamin : <?= $pasien->jenis_kelamin ?></font>
                                    <hr>
                                    <p>Gejala-Gejala Yang Dialami Pasien :</p>
                                    <hr>
                                    <ol style="margin-left: 0.5cm">
                                        <?php
                                        foreach ($gejala->result() as $g) :
                                        ?>
                                            <li><?= $g->gejala_nama ?></li>
                                        <?php endforeach ?>
                                    </ol>
                                    <hr>
                                    <p>Hasil Uji Sistem :</p>
                                    <hr>
                                    <font style="margin-left: 1cm;">Persentase : <strong><?= number_format((float)$pasien->nilai_diagnosa, 2, '.', '') ?>%</strong></font><br>
                                    <font style="margin-left: 1cm;">Penyakit : <strong><?= $pasien->penyakit ?></strong></font>
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