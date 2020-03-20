<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<?php
require_once 'connection.php'; // подключаем скрипт
     
if(isset($_POST['number'])){
 
$link = mysqli_connect($host, $user, $password, $database) 
            or die("Ошибка " . mysqli_error($link)); 
    $number = mysqli_real_escape_string($link, $_POST['number']);
     
    $query ="DELETE FROM doctors WHERE number = '$number'";
    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
 
    mysqli_close($link);
    // перенаправление на скрипт index.php
    header('Location: index.php');
}
 
if(isset($_GET['number']))
{   
    $number = htmlentities($_GET['number']);
    echo "<h2>Удалить врача?</h2>
        <form method='POST'>
        <input type='hidden' name='number' value='$number' />
        <input type='submit' value='Удалить'>
        </form>";
}
?>
</body>
</html>
