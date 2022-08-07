<?php

session_start();
require('actions/database.php');

// Validation du form
if(isset($_POST['validate'])){

    // Vérifie si l'user a complété tous les champs
    if(!empty($_POST['pseudo']) AND !empty($_POST['password'])){
        
        $user_pseudo = htmlspecialchars($_POST['pseudo']);
        $user_password = htmlspecialchars($_POST['password']);

        $checkIfUserExist = $bdd->prepare('SELECT * FROM users WHERE pseudo = ?');
        $checkIfUserExist->execute(array($user_pseudo));

        if($checkIfUserExist->rowCount()> 0){

            // Récup les données de l'user
            $usersInfos = $checkIfUserExist->fetch();

            // Vérifie si le password existe dans la BDD
            if(password_verify($user_password, $usersInfos['mdp'])){
                
                $_SESSION['auth'] = true;
                $_SESSION['id'] = $usersInfos['id'];
                $_SESSION['lastname'] = $usersInfos['nom'];
                $_SESSION['firstname'] = $usersInfos['prenom'];
                $_SESSION['pseudo'] = $usersInfos['pseudo'];

                header('Location: index.php');

            }else{
                $errorMsg ="Mot de passe incorrect. Assurez de navoir fait aucune erreur";
            }

        }else{
            $errorMsg ="Pseudo incorrect. Assurez de navoir fait aucune erreur";
        }

    }else{
        $errorMsg = "Veuillez compléter tous les champs...";
    }

}