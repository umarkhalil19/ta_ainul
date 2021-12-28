<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h4 class="page-title">Ubah Data Gejala</h4>
                <div class="ms-auto text-end">
                    <nav aria-label="breadcrumb">
                        <a href="<?= base_url('Gejala') ?>" class="float-right btn btn-md btn-dark"><i class="mdi mdi-arrow-left-bold-circle"> </i>Kembali</a>
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
        <!-- ============================================================== -->
        <!-- Start Page Content -->
        <!-- ============================================================== -->
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <?= form_open('Gejala/gejala_update') ?>
                        <h5 class="card-title mb-0">Form Ubah Data Gejala</h5>
                        <hr>
                        <div class="form-group mt-3">
                            <label>Gejala</label>
                            <input type="hidden" name="id" value="<?= $gejala->id ?>">
                            <input type="text" class="form-control" name="nama" value="<?= $gejala->nama ?>">
                            <?= form_error('nama', '<small><span class="text-danger">', '</span></small>'); ?>
                        </div>
                        <div class="form-group mt-3">
                            <label>Kode</label>
                            <input type="text" class="form-control" name="kode" value="<?= $gejala->kode ?>">
                            <?= form_error('kode', '<small><span class="text-danger">', '</span></small>'); ?>
                        </div>
                        <div class="form-group" align="right">
                            <button class="btn btn-md btn-primary" type="submit" value="submit"><i class="mdi mdi-check-circle"> </i>Simpan</button>
                        </div>
                        <?= form_close() ?>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End PAge Content -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Right sidebar -->
        <!-- ============================================================== -->
        <!-- .right-sidebar -->
        <!-- ============================================================== -->
        <!-- End Right sidebar -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- footer -->
    <!-- ============================================================== -->
    <footer class="footer text-center">
        All Rights Reserved by Matrix-admin. Designed and Developed by Mahasiswa <a href="https://informatika.unimal.ac.id/">Teknik Informatika </a>Unimal.
    </footer>S
    <!-- ============================================================== -->
    <!-- End footer -->
    <!-- ============================================================== -->
</div>