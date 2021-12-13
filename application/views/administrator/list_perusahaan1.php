 <header class="panel-heading">
            <h2 class="panel-title">Daftar Perusahaan</h2>
        </header>
 <div class="panel-body">
     <table class="table table-bordered table-striped" id="datatable-ajax">
                <thead>
                <tr>
                    <th>NO</th>
                    <th>Nama Perusahaan</th>
                    <th>Alamat</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php $n = 1; foreach ($tampil as $u){ ?>
                    <tr>
                        <td><?= $n++?></td>
                        <td><?= $u->nama_perusahaan;?></td>
                        <td><?= $u->alamat?></td>
                        <td>
                            <a class="btn btn-xs btn-success" href="<?= base_url() ?>administrator/form_audit/<?= $u->id_perusahaan ?>"><li class="fa fa-edit"></li></a>
                            <a class="btn btn-xs btn-primary" href="<?= base_url() ?>administrator/lihat/<?= $u->id_perusahaan ?>"><li class="fa fa-eye"></li></a>
                        </td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </section>
 </div>
