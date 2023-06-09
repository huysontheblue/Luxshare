 <?php
    session_start();
    require 'connect.php';
    if(isset($_SESSION["CCCCD"])){
        
    }
?>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luxshare-ICT</title>
</head>
<body>
    <?php
        include 'user.php';
    ?>
</body>
</html>