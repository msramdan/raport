<style type="text/css">
    .ctr {text-align: center}
    .nso {}
</style>
<div class="row">
    <div class="col-md-12">
        <p>
            <!--<a href="<?php echo base_url()."/".$url; ?>/cetak/<?php echo $this->uri->segment(3); ?>" class="btn btn-warning" target="_blank">Cetak</a>-->
        </p>
    </div>

    <div class="col-md-12">
        <div class="card">
            <div class="header">
                <h4 class="title">Cetak Raport PTS </h4>
            </div>
            <div class="content">  

                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th width="5%">No</th>
                            <th width="40%">Nama</th>
                            <th width="50%">Cetak</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php 

                        $no = 1;
                        if (!empty($siswa_kelas)) {
                            foreach ($siswa_kelas as $sk) {  
                        ?>
                            <tr>
                                <td><?php echo $no; ?></td>
                                <td><?php echo $sk['nama']; ?></td>
                                <td>
                                    <a href="<?php echo base_url().$url."/cetak/".$sk['id_siswa']."/".$tasm; ?>" class="btn btn-success btn-sm" target="_blank"><i  class="fa fa-print"></i> Raport</a>
                                </td>
                            </tr>
                        <?php 
                                $no++;
                            }
                        } else {
                            echo '<tr><td colspan="3">Belum ada data siswa</td></tr>';
                        }
                        ?>

                        
                        
                    </tbody>
                    
                </table>
            </div>
        </div>
    </div>

</div>