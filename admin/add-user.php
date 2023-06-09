<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luxshare-ICT</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="modal fade" id="addUser" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
        <form action="add-user.php" method="POST" enctype="multipart/form-data">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Thêm người</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">x</button>
            </div>
            <div class="modal-body">
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <span class="input-group-text h">Mã nhân viên</span>
                    </div>
                    <input type="text" class="form-control" name="mnv">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <span class="input-group-text h">CCCD/CMT</span>
                    </div>
                    <input type="text" class="form-control" name="cccd">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <span class="input-group-text h">Số bảo hiểm</span>
                    </div>
                    <input type="text" class="form-control" name="sbh">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <span class="input-group-text h">Họ Tên</span>
                    </div>
                    <input type="text" class="form-control" name="hoten">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <span class="input-group-text h">Ngày Sinh</span>
                    </div>
                    <input type="text" class="form-control" name="ngaysinh" placeholder="Nhập thông tin tên ngày sinh dd/mm/yyyy">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <span class="input-group-text h">Ngày nghỉ việc</span>
                    </div>
                    <input type="text" class="form-control" name="ngaynv" placeholder="Nhập thông tin tên ngày nghỉ việc dd/mm/yyyy">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <span class="input-group-text h">Ngày nhận</span>
                    </div>
                    <input type="text" class="form-control" name="ngaynhan" placeholder="Nhập thông tin tên ngày nhận dd/mm/yyyy">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <span class="input-group-text h">Ký tên</span>
                    </div>
                    <input type="text" class="form-control" name="kyten" placeholder="Nhập thông tin tên người ký">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <span class="input-group-text h">Ghi chú</span>
                    </div>
                    <input type="text" class="form-control" name="ghichu">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</button>
                <button type="submit" class="btn btn-primary" name="submit">Lưu</button>
            </div>
            </div>
        </form>
        </div>
    </div>
</body>
</html>
<?php
    require '../connect.php';
    $err = "";
    if(isset($_POST["submit"])){
        $id =  $_POST["mnv"];
        $cccd =  $_POST["cccd"];
        $sbh =  $_POST["sbh"];
        $ht =  $_POST["hoten"];
        $ns =  $_POST["ngaysinh"];
        $nnv =  $_POST["ngaynv"];
        $ngaynhan =  $_POST["ngaynhan"];
        $kyten =  $_POST["kyten"];
        $gc =  $_POST["ghichu"];
        $query = "INSERT INTO `NHANVIEN`( `MNV`, `CCCD`, `SOBAOHIEM` ,`HOTEN`, `NGAYSINH`, `NGAYNGHIVIEC`, `NGAYNHAN` ,`KYTEN`, `GHICHU`, `ROLE`)
        VALUES (N'".$id."','".$cccd."','".$sbh."','".$ht."','".$ns."','".$nnv."','".$ngaynhan."','".$kyten."','".$gc."','0')";
        $result = mysqli_query($connect,$query); 
        if($result){
            echo "<script> alert('Thêm thành công!') </script>"; 
            header("Location: home.php");
        }
        else{
            echo "<script> alert('Thêm thất bại!') </script>"; 
            echo "Thất bại".mysql_error($connect);
        }
    }
?>

