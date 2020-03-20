<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
</head>
<body>
<?php
require_once 'connection.php'; // подключаем скрипт
// подключаемся к серверу
$link = mysqli_connect($host, $user, $password, $database) 
        or die("Ошибка " . mysqli_error($link)); 
     
// если запрос POST 
if(isset($_POST['number_of_card']) && isset($_POST['patient_full_name']) &&
	isset($_POST['homeAdress']) && isset($_POST['MedPolis']) && 
	isset($_POST['phoneNumber']) && isset($_POST['gender'])){
 
    $number_of_card  = htmlentities(mysqli_real_escape_string($link, $_POST['number_of_card']));
    $patient_full_name = htmlentities(mysqli_real_escape_string($link, $_POST['patient_full_name']));
    $homeAdress = htmlentities(mysqli_real_escape_string($link, $_POST['homeAdress']));
    $MedPolis = htmlentities(mysqli_real_escape_string($link, $_POST['MedPolis']));
    $phoneNumber = htmlentities(mysqli_real_escape_string($link, $_POST['phoneNumber']));
    $gender = htmlentities(mysqli_real_escape_string($link, $_POST['gender']));
     
    $query ="UPDATE patientlist SET patient_full_name='$patient_full_name', 
				homeAdress='$homeAdress',
				homeAdress='$homeAdress',
				MedPolis='$MedPolis',
				phoneNumber='$phoneNumber',
				gender='$gender'
	     WHERE number_of_card='$number_of_card'";
    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
 
    if($result)
        echo "<span style='color:blue;'>Данные обновлены</span>";
}
 
// если запрос GET
if(isset($_GET['number_of_card']))
{   
    $id = htmlentities(mysqli_real_escape_string($link, $_GET['number']));
     
    // создание строки запроса
    $query ="SELECT * FROM patientlist WHERE number_of_card = '$number_of_card'";
    // выполняем запрос
    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
    //если в запросе более нуля строк
    if($result && mysqli_num_rows($result)>0) 
    {
        $row = mysqli_fetch_row($result); // получаем первую строку
        $patient_full_name = $row[1];
        $homeAdress = $row[2];
        $MedPolis = $row[3];
	$phoneNumber = $row[4];
	$gender = $row[5];


        echo "<h2>Изменить пациента</h2>
            <form method='POST'>
            <input type='hidden' name='patient_full_name' value='$patient_full_name' />

            <p>Введите домашний адресс:<br> 
            <input type='text' name='homeAdress' value='$homeAdress' /></p>

            <p>Мед полис: <br> 
            <input type='text' name='MedPolis' value='$MedPolis' /></p>

	    <p>Номер мобильного: <br> 
            <input type='text' name='phoneNumber' value='$phoneNumber' /></p>
	    
	    <p>Пол: <br> 
            <input type='text' name='gender' value='$gender' /></p>

            <input type='submit' value='Сохранить'>
            </form>";
         
        mysqli_free_result($result);
    }
}
// закрываем подключение
mysqli_close($link);
?>
</body>
</html>

