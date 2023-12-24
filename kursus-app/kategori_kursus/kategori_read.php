<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title fw-semibold mb-4">Data Kursus</h5>
            <a href="?page=kategori_add" class="btn btn-primary"><i class="ti ti-plus"></i> Tambah Data</a>
            <hr>
            <table class="table table-hover table-bordered table-striped" style="border: 1px;">
                <thead>
                    <tr style="text-align: center" >
                        <th>No</th>
                        <th>Nama Kursus</th>
                        <th>Alamat kursus</th>
                        <th>Deskripsi</th>
                        <th>Durasi</th>
                        <th>AKSI</th>

                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    $query = mysqli_query($konek, "select * from nama_kursus");
                    while ($data = mysqli_fetch_array($query)) { ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $data['nama'] ?></td>
                            <td><?= $data['alamat'] ?></td>
                            <td><?= $data['deskripsi'] ?></td>
                            <td><?= $data['durasi'] ?></td>
                            <td>
                            <a href="?page=kategori_edit&id=<?= $data[0];?>" class="btn btn-sm btn-warning"><i class="ti ti-edit"></i>Ubah</a>
                            <a href="?page=kategori_delete&id=<?= $data[0];?>" class="btn btn-sm btn-danger" onclick="return confirm('Yakin Ingin mengahapus data???')" ><i class="ti ti-trash"></i>Hapus</a>
                        </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>