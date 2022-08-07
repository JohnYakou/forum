<?php

require('actions/database.php');

// Validation du form
if(isset($_POST['validate'])){

    // Vérifie sur l'user a complété tous les champs
    if(!empty($_POST['pseudo']) AND !empty($_POST['password'])){
        
        $user_pseudo = htmlspecialchars($_POST['pseudo']);
        $user_password = htmlspecialchars($_POST['password']);

        $checkIfUserExist = $bdd->prepare('SELECT * FROM users WHERE pseudo = ?');
        $checkIfUserExist->execute(array($user_pseudo));

        if($checkIfUserExist->rowCount()> 0){

        }else{
            $errorMsg ="Pseudo incorrect. Assurez de navoir fait aucune erreur";
        }

    }else{
        $errorMsg = "Veuillez compléter tous les champs...";
    }

}