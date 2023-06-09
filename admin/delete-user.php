<?php
    $id=$_GET['MNV'];
    include("../connect.php"); 
    $query = "DELETE FROM NHANVIEN WHERE MNV='$id'";
    $query_run = mysqli_query($connect, $query);
    if($query_run){
        echo "<script> alert('Xóa thành công!') </script>";
        header('Location: home.php');
    }else{
        echo "<script> alert('Xóa không thành công!') </script>";
        header('Location: home.php');
    }  
    mysqli_close($conn); 
?>  