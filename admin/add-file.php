
<div class="modal fade" id="addFile" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form action="add-file.php" method="POST" enctype="multipart/form-data">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Thêm file</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">x</button>
            </div>
            <div class="modal-body">
                <div class="input-group mb-3">
                    <div class="input-group-append">
                        <span class="input-group-text h">Chọn file</span>
                    </div>
                    <input type="file" class="form-control" name="import_file">
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
<?php
    include '../connect.php';
    require '../vendor/autoload.php';
    use PhpOffice\PhpSpreadsheet\Spreadsheet;
    use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
    if(isset($_POST['submit']))
    {
        $fileName = $_FILES['import_file']['name'];
        $file_ext = pathinfo($fileName, PATHINFO_EXTENSION);

        $allowed_ext = ['xls','csv','xlsx'];

        if(in_array($file_ext, $allowed_ext))
        {
            $inputFileNamePath = $_FILES['import_file']['tmp_name'];
            $spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load($inputFileNamePath);
            $data = $spreadsheet->getActiveSheet()->toArray();
            $count = "0";
            foreach($data as $row)
            {
                if($count > 0)
                {
                    $mnv = $row['0'];
                    $cccd = $row['1'];
                    $bh = $row['2'];
                    $ht = $row['3'];
                    $ns = $row['4'];
                    $nnv = $row['5'];
                    $nnbh = $row['6'];
                    $kyten = $row['7'];
                    $ghichu = $row['8'];
                    $role = $row['9'];
                    $query = "INSERT INTO NHANVIEN (MNV,CCCD,SOBAOHIEM,HOTEN,NGAYSINH,NGAYNGHIVIEC,NGAYNHAN,KYTEN,GHICHU,ROLE) 
                    VALUES ('$mnv','$cccd','$bh','$ht','$ns','$nnv','$nnbh','$kyten','$ghichu','$role')";
                    $result = mysqli_query($connect, $query);
                    $msg = true;
                }
                else
                {
                    $count = "1";
                }
            }

            if(isset($msg))
            {
                $_SESSION['message'] = "Thành công";
                header('Location: home.php');
                exit(0);
            }
            else
            {
                $_SESSION['message'] = "File không tồn tại";
                header('Location: home.php');
                exit(0);
            }
        }
        else
        {
            $_SESSION['message'] = "Lỗi";
            header('Location: home.php');
            exit(0);
        }
    }
?>

