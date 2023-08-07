<?php 
include ("bdd.php");
$sql = "SELECT *FROM `membres`";
$res = $con-> query($sql);
if(!$res){
    die("invalide query");
}
mysqli_close($con);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>LISTE DE TOUS LES MEMBRES</h1>
    <table>
            <tr>
                <th>membreID</th>
                <th>nom_membre</th>
                <th>prenom_membre</th>
                <th>CIN</th>
                <th>Ajouter</th>
                <th>Supprimer</th>

            </tr>
            
            <?php
                //Affichage des données dans la base de donné
                while($row = mysqli_fetch_assoc($res)){
                    echo "
                        <tr>
                            <td>$row[membreID]</td>
                            <td>$row[nom_membre]</td>
                            <td>$row[prenom_membre]</td>
                            <td>$row[CIN]</td>
                            <td><a href=\"modifier.php?membreID=$row[membreID]\">modifier</a></td>
                            <td><a href=\"supprimer.php?membreID=$row[membreID]\">Supprimer</a></td>
                        </tr>
                    ";
                }

            ?>
        </table>
</body>
</html>