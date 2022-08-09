<?php

require('actions/database.php');

// Recup. l'identifiant de l'user
if(isset($_GET['id']) AND !empty($_GET['id'])){

    $idOfUser = $_GET['id'];

    $checkIfUserExists = $bdd->prepare('SELECT * FROM users WHERE id = ? ORDER BY id DESC');
    $checkIfUserExists->execute(array($idOfUser));

    if($checkIfUserExists->rowCount() > 0){
        // Recup. toutes les données de l'user
        $usersInfos = $checkIfUserExists->fetch();
        
        $user_pseudo = $usersInfos['pseudo'];
        $user_lastname = $usersInfos['nom'];
        $user_firstname = $usersInfos['prenom'];

        // Recup. toutes les questions de l'user
        $getHisQuestions = $bdd->prepare('SELECT * FROM questions WHERE id_auteur = ?');
        $getHisQuestions->execute(array($idOfUser));
    }else{
        $errorMsg = "Aucun utilisateur trouvé";
    }

}else{
    $errorMsg = "Aucun utilisateur trouvé";
}