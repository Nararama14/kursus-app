<div class="container-fluid">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title fw-semibold mb-4">Data-Data Kursus</h5>
            
            <hr>
            <table class="table table-hover table-bordered table-striped" style="border: 1px;">
                <thead>
                    <tr style="text-align: center" >
                        <th>No</th>
                        <th>Nama Kursus</th>
                        <th>Deskripsi Kursus</th>
                        <th>Durasi Kursus</th>
                        <th>Nama Materi</th>
                        <th>Deskripsi Materi</th>
                        <th>Link Materi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    $query = mysqli_query($konek, "select k.nama, k.deskripsi AS deskripsi, k.durasi AS durasi, mt.nama AS nama, mt.deskripsi AS deskripsi, mt.link FROM nama_kursus AS k INNER JOIN materi_kursus AS mt ON k.id = mt.id");
                    while ($data = mysqli_fetch_array($query)) { ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $data['nama'] ?></td>
                            <td><?= $data['deskripsi'] ?></td>
                            <td><?= $data['durasi'] ?></td>
                            <td><?= $data['nama'] ?></td>
                            <td><?= $data['deskripsi'] ?></td>
                            <td><a href="<?= $data['link'] ?>" target="_blank"><?= $data['link'] ?></a></td>

                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
