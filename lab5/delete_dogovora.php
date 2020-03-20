<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<?php
require_once 'connection.php'; // подключаем скрипт
     
if(isset($_POST['N1_dog'])){
 
$link = mysqli_connect($host, $user, $password, $database) 
            or die("Ошибка " . mysqli_error($link)); 
    $N1_dog = mysqli_real_escape_string($link, $_POST['N1_dog']);
     
    $query ="DELETE FROM dogovora WHERE number_of_card = '$N1_dog'";
    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
 
    mysqli_close($link);
    // перенаправление на скрипт index.php
    header('Location: index.php');
}
 
if(isset($_GET['N1_dog']))
{   
    $N1_dog = htmlentities($_GET['N1_dog']);
    echo "<h2>Удалить договор?</h2>
        <form method='POST'>
        <input type='hidden' name='N1_dog' value='$N1_dog' />
        <input type='submit' value='Удалить'>
        </form>";
}
?>
</body>
</html>
