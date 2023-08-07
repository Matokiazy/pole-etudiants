<?php
$servername="localhost";
$username="root";
$mdp="";
$database="pole_etudiants";

$con = mysqli_connect($servername, $username, $mdp, $database);

if (!$con)
        {
                die('Could not connect: ' . mysqli_error());
        }
?>