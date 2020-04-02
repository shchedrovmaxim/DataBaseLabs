<meta charset="utf-8">
<?php
require_once 'connection.php';
 
$link = mysqli_connect($host, $user, $password, $database) 
    or die("Ошибка " . mysqli_error($link));
 
$query ="DROP TABLE doctors";
$result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
if($result)
{
    echo "Удаление таблицы прошло успешно";
}
 
mysqli_close($link);
?>
