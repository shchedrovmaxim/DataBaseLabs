<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<?php
require_once 'connection.php'; // подключаем скрипт
 
if(isset($_POST['name']) && isset($_POST['company'])){
     // подключаемся к серверу
    $link = mysqli_connect($host, $user, $password, $database) 
        or die("Ошибка " . mysqli_error($link)); 
     
    // экранирования символов для mysql
    $nameDoctor = htmlentities(mysqli_real_escape_string($link, $_POST['nameDoctor']));
    $position = htmlentities(mysqli_real_escape_string($link, $_POST['position']));
    $number_cabinet = htmlentities(mysqli_real_escape_string($link, $_POST['number_cabinet']));
    $timeVisit = htmlentities(mysqli_real_escape_string($link, $_POST['timeVisit']));
    $salary = htmlentities(mysqli_real_escape_string($link, $_POST['salary']));
    $N_dog = htmlentities(mysqli_real_escape_string($link, $_POST['N_dog']));
    $number = htmlentities(mysqli_real_escape_string($link, $_POST['number']));
    // создание строки запроса
    $query ="INSERT INTO doctors (number, nameDoctor, position, number_cabinet, timeVisit, salary, N_dog) 
     VALUES ($number,$nameDoctor,$position,$number_cabinet,$timeVisit,$salary, $N_dog )";
     
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
<h2>Добавить нового врача</h2>
<form method="POST">
<p>Введите имя врача:<br> 
<input type="text" name="nameDoctor" /></p>
<p>Введите должность доктора: <br> 
<input type="text" name="position" /></p>

<p>Введите кабинет врача: <br> 
<input type="text" name="number_cabinet" /></p>

<p>Введите время приема: <br> 
<input type="text" name="timeVisit" /></p>


<p>Введите зарплату врача: <br> 
<input type="text" name="salary" /></p>


<p>Введите номер договора врача: <br> 
<input type="text" name="N_dog" /></p>


<p>Введите номер врача: <br> 
<input type="text" name="number" /></p>

<input type="submit" value="Добавить">
</form>
</body>
</html>
