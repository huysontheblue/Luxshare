<?php
    session_start();
    include "../connect.php"; 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Luxshare-ICT</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/sb-admin-2.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script src="js/demo/datatables-demo.js"></script>
</head>
<body id="page-top">
    <div id="wrapper">
        <!-- Side bar -->
       <?php include 'sidebar.php' ?>
        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                <!-- Topbar -->
                <?php include 'topbar.php' ?>
                <div class="container-fluid">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Quản lý nhân viên nghỉ việc</h6>
                        </div>
                        <a href="#addUser" data-toggle="modal" class="btn btn-primary">
                            <i class="fas fa-plus"></i> Thêm bằng tay
                        </a>
                        <?php include 'add-user.php' ?>
                        <br/>
                        <a href="#addFile" data-toggle="modal" class="btn btn-success">
                            <i class="fas fa-plus"></i> Thêm bằng file
                        </a>
                        <?php include 'add-file.php' ?>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Mã nhân viên</th>
                                            <th>CCCD/CMT</th>
                                            <th>Số bảo hiểm</th>
                                            <th>Họ tên</th>
                                            <th>Ngày Sinh</th>
                                            <th>Ngày Nghỉ Việc</th>
                                            <th>Ngày nhận</th>
                                            <th>Ký tên</th>
                                            <th>Ghi chú</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                            include "../connect.php"; 
                                            $query = "SELECT * FROM NHANVIEN";     
                                            $values = mysqli_query ($connect, $query);   
                                            while($row = mysqli_fetch_array($values)){
                                        ?>
                                        <tr>
                                            <td><?php echo $row['MNV']; ?></td>
                                            <td><?php echo $row['CCCD']; ?></td>
                                            <td><?php echo $row['SOBAOHIEM']; ?></td>
                                            <td><?php echo $row['HOTEN']; ?></td>
                                            <td><?php echo $row['NGAYSINH']; ?></td>
                                            <td><?php echo $row['NGAYNGHIVIEC']; ?></td>
                                            <td><?php echo $row['NGAYNHAN']; ?></td>
                                            <td><?php echo $row['KYTEN']; ?></td>
                                            <td><?php echo $row['GHICHU']; ?></td>
                                            <td style="text-align:center;">
                                                <a href="delete-user.php?MNV=<?php echo $row['MNV']; ?>" class="btn btn-danger">
                                                    <i class="far fa-trash-alt"></i>
                                                </a>
                                            </td>
                                        <?php
                                            }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php include 'footer.php' ?>
        </div>
    </div>
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <?php include 'logout.php' ?>
</body>
</html>