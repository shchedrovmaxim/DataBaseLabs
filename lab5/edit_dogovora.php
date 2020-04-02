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
if(isset($_POST['N1_dog']) && isset($_POST['D_dog']) && isset($_POST['S_dog'])){
 
    $N1_dog   = htmlentities(mysqli_real_escape_string($link, $_POST['N1_dog']));
    $D_dog = htmlentities(mysqli_real_escape_string($link, $_POST['D_dog']));
    $S_dog = htmlentities(mysqli_real_escape_string($link, $_POST['S_dog']));
     
    $query ="UPDATE dogovora SET D_dog='$D_dog', 
				S_dog='$S_dog'
	     WHERE N1_dog='$N1_dog'";
    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
 
    if($result)
        echo "<span style='color:blue;'>Данные обновлены</span>";
}
 
// если запрос GET
if(isset($_GET['N1_dog']))
{   
    $id = htmlentities(mysqli_real_escape_string($link, $_GET['number']));
     
    // создание строки запроса
    $query ="SELECT * FROM dogovora WHERE N1_dog = '$N1_dog';";
    // выполняем запрос
    $result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
    //если в запросе более нуля строк
    if($result && mysqli_num_rows($result)>=0) 
    {
        $row = mysqli_fetch_row($result); // получаем первую строку
        $D_dog = $row[1];
        $S_dog = $row[2];

        echo "<h2>Изменить договор</h2>
            <form method='POST'>
            <input type='hidden' name='N1_dog' value='$N1_dog' />

            <p>Введите дату создания:<br> 
            <input type='date' name='D_dog' value='$D_dog' /></p>

            <p>Сумма договора: <br> 
            <input type='text' name='S_dog' value='$S_dog' /></p>

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

