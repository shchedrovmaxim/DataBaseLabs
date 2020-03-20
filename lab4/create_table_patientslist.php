<?php
require_once 'connection.php';
 
$link = mysqli_connect($host, $user, $password, $database) 
    or die("Ошибка " . mysqli_error($link));
 
$query ="CREATE TABLE IF NOT EXISTS patientlist (
  number_of_card INT(11) NOT NULL,
  patient_full_name VARCHAR(45) NULL DEFAULT NULL,
  homeAdress VARCHAR(100) NULL DEFAULT NULL,
  MedPolis VARCHAR(45) NULL DEFAULT NULL,
  phoneNumber VARCHAR(45) NULL DEFAULT NULL,
  gender VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (number_of_card))";
$result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
if($result)
{
    echo "Создание таблицы прошло успешно";
}
 mysqli_close($link);
?>
