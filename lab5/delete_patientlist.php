<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<?php
require_once 'connection.php'; // подключаем скрипт
     
if(isset($_POST['number_of_card'])){
 
$link = mysqli_connect($host, $user, $password, $database) 
            or die("Ошибка " . mysqli_error($link)); 
    $number_of_card = mysqli_real_escape_string($link, $_POST['number_of_card']);
     
    $query ="DELETE FROM patientlist WHERE number_of_card = '$number_of_card'";
    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
 
    mysqli_close($link);
    // перенаправление на скрипт index.php
    header('Location: index.php');
}
 
if(isset($_GET['number_of_card']))
{   
    $number_of_card = htmlentities($_GET['number_of_card']);
    echo "<h2>Удалить пациента?</h2>
        <form method='POST'>
        <input type='hidden' name='number_of_card' value='$number_of_card' />
        <input type='submit' value='Удалить'>
        </form>";
}
?>
</body>
</html>
