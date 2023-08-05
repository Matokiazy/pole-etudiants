<?php
include ("bdd.php");

$sql = "SELECT * FROM membres ORDER BY id ASC";
$res = $con-> query($sql);
if(!$res){
    die("invalide query");
}

mysqli_close($con);

?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des electeurs</title>
</head>
<body>
    <div>
        <div>
            <a href="verifier.php">Verifier</a>
        </div>
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
    </div>
</body>
</html>