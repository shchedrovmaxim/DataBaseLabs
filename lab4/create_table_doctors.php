<?php
require_once 'connection.php';
 
$link = mysqli_connect($host, $user, $password, $database) 
    or die("Ошибка " . mysqli_error($link));
 
$query ="CREATE TABLE IF NOT EXISTS doctors (
  number INT(11) NOT NULL,
  nameDoctor VARCHAR(45) NULL DEFAULT NULL,
  position VARCHAR(45) NULL DEFAULT NULL,
  number_cabinet INT(11) NULL DEFAULT NULL,
  timeVisit TIME NULL DEFAULT NULL,
  salary INT NULL,
  N_dog INT NULL,
  PRIMARY KEY (number))";
$result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
if($result)
{
    echo "Создание таблицы прошло успешно";
}
 mysqli_close($link);
?>
