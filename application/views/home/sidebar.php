<aside class="left-sidebar" data-sidebarbg="skin5">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav" class="pt-4">
                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<?= base_url() ?>" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Dashboard</span></a></li>
                <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-format-list-bulleted"></i><span class="hide-menu">Master Data </span></a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item"><a href="<?= base_url('Gejala') ?>" class="sidebar-link"><i class="mdi mdi-heart"></i><span class="hide-menu"> Gejala
                                </span></a></li>
                        <li class="sidebar-item"><a href="<?= base_url('Penyakit') ?>" class="sidebar-link"><i class="mdi mdi-hospital"></i><span class="hide-menu"> Penyakit
                                </span></a></li>
                        <li class="sidebar-item"><a href="<?= base_url('Pasien') ?>" class="sidebar-link"><i class="mdi mdi-hotel"></i><span class="hide-menu"> Pasien
                                </span></a></li>
                    </ul>
                </li>
                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<?= base_url('Diganosa') ?>" aria-expanded="false"><i class="mdi mdi-check-all"></i><span class="hide-menu">Diagnosa</span></a></li>
                <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="<?= base_url('Users') ?>" aria-expanded="false"><i class="mdi mdi-account"></i><span class="hide-menu">Users</span></a></li>
            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>
<!-- ============================================================== -->
<!-- End Left Sidebar - style you can find in sidebar.scss  -->
<!-- ============================================================== -->