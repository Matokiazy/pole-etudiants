<?php
include ("bdd.php");

$sql = "SELECT * FROM `collaborateurs`";
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
                <th>collaborateurID</th>
                <th>nom_collaborateur</th>
                <th>prenom_collaborateur</th>
                <th>attribution</th>
                <th>email</th>
                <th>contact</th>
            </tr>
            
            <?php
                //Affichage des données dans la base de donné
                while($row = mysqli_fetch_assoc($res)){
                    echo "
                        <tr>
                            <td>$row[collaborateurID]</td>
                            <td>$row[nom_collaborateur]</td>
                            <td>$row[prenom_collaborateur]</td>
                            <td>$row[attribution]</td> 
                            <td>$row[email]</td>
                            <td>$row[contact]</td>
                        </tr>
                    ";
                }

            ?>
        </table>
    </div>
</body>
</html>