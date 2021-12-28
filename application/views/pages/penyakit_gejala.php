<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Bread crumb and right sidebar toggle -->
    <!-- ============================================================== -->
    <div class="page-breadcrumb">
        <div class="row">
            <div class="col-12 d-flex no-block align-items-center">
                <h4 class="page-title">Data Gejala Pada Penyakit : <?= $gejala_id->nama ?></h4>
                <div class="ms-auto text-end">
                    <nav aria-label="breadcrumb">
                        <a href="<?= base_url('Penyakit') ?>" class="float-right btn btn-md btn-dark"><i class="mdi mdi-arrow-left-bold-circle"> </i>Kembali</a>
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
                        <?php
                        if ($gejala_id->gejala_id) {
                            $gp = $this->m_vic->edit_data(['penyakit_id' => $gejala_id->id], 'gejala_bobot');
                        ?>
                            <h5 class="card-title mb-0">Data gejala pada penyakit : <?= $gejala_id->nama ?></h5>
                            <hr>
                            <table id="zero_config" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Gejala</th>
                                        <th>Kode</th>
                                        <th>Bobot</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;
                                    foreach ($gp->result() as $p) : ?>
                                        <tr>
                                            <td><?= $no++ ?></td>
                                            <td><?= $p->gejala_nama ?></td>
                                            <td><?= $p->gejala_kode ?></td>
                                            <td><?= $p->bobot ?></td>
                                        </tr>
                                    <?php endforeach ?>
                                </tbody>
                            </table>
                        <?php
                        } else {
                        ?>
                            <?= form_open('Penyakit/penyakit_gejala_act') ?>
                            <input type="hidden" name="id" value="<?= $gejala_id->id ?>">
                            <h5 class="card-title mb-0">Form Tambah Data Gejala Pada Penyakit : <?= $gejala_id->nama ?></h5>
                            <hr>
                            <small class="text-danger">* Silahkan isi nilai bobot untuk gejala yang ingin anda tambahkan sebagai gejala penyakit <?= $gejala_id->nama ?></small>
                            <?php foreach ($gejala->result() as $g) : ?>
                                <div class="form-group mt-3">
                                    <label><?= $g->nama ?> Kode : <?= $g->kode ?></label>
                                    <input type="text" class="form-control" name="bobot_<?= $g->id ?>" value="0">
                                    <?= form_error('nama', '<small><span class="text-danger">', '</span></small>'); ?>
                                </div>
                            <?php
                            endforeach; ?>
                            <div class="form-group" align="right">
                                <button class="btn btn-md btn-primary" type="submit" value="submit"><i class="mdi mdi-check-circle"> </i>Simpan</button>
                            </div>
                            <?= form_close() ?>
                        <?php } ?>
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