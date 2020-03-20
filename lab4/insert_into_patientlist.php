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
    $number_of_card  = htmlentities(mysqli_real_escape_string($link, $_POST['number_of_card']));
    $patient_full_name = htmlentities(mysqli_real_escape_string($link, $_POST['patient_full_name']));
    $homeAdress = htmlentities(mysqli_real_escape_string($link, $_POST['homeAdress']));
    $MedPolis = htmlentities(mysqli_real_escape_string($link, $_POST['MedPolis']));
    $phoneNumber = htmlentities(mysqli_real_escape_string($link, $_POST['phoneNumber']));
    $gender = htmlentities(mysqli_real_escape_string($link, $_POST['gender']));
    
    // создание строки запроса
    $query ="INSERT INTO patientlist (number_of_card, patient_full_name, homeAdress, MedPolis, phoneNumber, gender) 
     VALUES ($number_of_card, $patient_full_name, $homeAdress ,$MedPolis ,$phoneNumber , $gender );";
     
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
<h2>Добавить нового пациента</h2>
<form method="POST">

<p>Введите имя пациента:<br> 
<input type="text" name="patient_full_name" /></p>

<p>Введите номер карточки пациента: <br> 
<input type="text" name="number_of_card" /></p>

<p>Введите домашний адресс пациента: <br> 
<input type="text" name="homeAdress" /></p>

<p>Введите мед полис пациента: <br> 
<input type="text" name="MedPolis" /></p>


<p>Введите мобильный номер пациента: <br> 
<input type="text" name="phoneNumber" /></p>


<p>Введите пол пациента: <br> 
<input type="text" name="gender" /></p>

<input type="submit" value="Добавить">
</form>
</body>
</html>
