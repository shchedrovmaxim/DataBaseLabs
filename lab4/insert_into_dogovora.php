<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<?php
require_once 'connection.php'; // подключаем скрипт
 
if(isset($_POST['N1_dog']) && isset($_POST['D_dog']) && isset($_POST['S_dog'])){
     // подключаемся к серверу
    $link = mysqli_connect($host, $user, $password, $database) 
        or die("Ошибка " . mysqli_error($link)); 
     
    // экранирования символов для mysql
    $N1_dog   = htmlentities(mysqli_real_escape_string($link, $_POST['N1_dog']));
    $D_dog = htmlentities(mysqli_real_escape_string($link, $_POST['D_dog']));
    $S_dog = htmlentities(mysqli_real_escape_string($link, $_POST['S_dog']));
   
    
    // создание строки запроса
    $query ="INSERT INTO Dogovora (N1_dog, D_dog, S_dog) 
	     VALUES (1, '2017-12-31', 1000);";
     
    // выполняем запрос
    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
    if($result)
    {
        echo "<span style='color:blue;'>Данные добавлены</span>";
    }
    // закрываем подключение
    mysqli_close($link);
}
?>
<h2>Добавить нового договора</h2>
<form method="POST">

<p>Введите номер договора:<br> 
<input type="text" name="N1_dog" /></p>

<p>Введите дату создания договора: <br> 
<input type="date" name="D_dog" /></p>

<p>Введите сумму договора: <br> 
<input type="text" name="S_dog" /></p>

<input type="submit" value="Добавить">
</form>
</body>
</html>
