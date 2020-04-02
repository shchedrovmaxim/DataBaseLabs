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
if(isset($_POST['number']) && isset($_POST['nameDoctor']) &&isset($_POST['position']) &&
   isset($_POST['number_cabinet']) && isset($_POST['timeVisit']) && isset($_POST['salary']) && isset($_POST['N_dog'])){
 
    $nameDoctor = htmlentities(mysqli_real_escape_string($link, $_POST['nameDoctor']));
    $position = htmlentities(mysqli_real_escape_string($link, $_POST['position']));
    $number_cabinet = htmlentities(mysqli_real_escape_string($link, $_POST['number_cabinet']));
    $timeVisit = htmlentities(mysqli_real_escape_string($link, $_POST['timeVisit']));
    $salary = htmlentities(mysqli_real_escape_string($link, $_POST['salary']));
    $N_dog = htmlentities(mysqli_real_escape_string($link, $_POST['N_dog']));
    $number = htmlentities(mysqli_real_escape_string($link, $_POST['number']));
     
    $query ="UPDATE doctors SET nameDoctor='$nameDoctor', 
				position='$position',
				number_cabinet='$number_cabinet',
				timeVisit='$timeVisit',
				salary='$salary',
				N_dog='$N_dog'
	     WHERE number='$number'";
    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
 
    if($result)
        echo "<span style='color:blue;'>Данные обновлены</span>";
}
 
// если запрос GET
if(isset($_GET['number']))
{   
    $id = htmlentities(mysqli_real_escape_string($link, $_GET['number']));
     
    // создание строки запроса
    $query ="SELECT * FROM doctors WHERE number = '$number'";
    // выполняем запрос
    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
    //если в запросе более нуля строк
    if($result && mysqli_num_rows($result)>=0) 
    {
        $row = mysqli_fetch_row($result); // получаем первую строку
        $nameDoctor = $row[1];
        $position = $row[2];
        $number_cabinet = $row[3];
	$timeVisit = $row[4];
	$salary = $row[5];
	$N_dog = $row[6];

        echo "<h2>Изменить врача</h2>
            <form method='POST'>
            <input type='hidden' name='number' value='$number' />

            <p>Введите имя врача:<br> 
            <input type='text' name='nameDoctor' value='$nameDoctor' /></p>

            <p>Должность: <br> 
            <input type='text' name='position' value='$position' /></p>

	    <p>Номер кабинета: <br> 
            <input type='text' name='number_cabinet' value='$number_cabinet' /></p>
	    
	    <p>Время приема: <br> 
            <input type='text' name='timeVisit' value='$timeVisit' /></p>

	    <p>Зарплата: <br> 
            <input type='text' name='salary' value='$salary' /></p>

	    <p>Номер договора: <br> 
            <input type='text' name='N_dog' value='$N_dog' /></p>

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

