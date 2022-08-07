<?php

require('actions/database.php');

// Validation du form
if(isset($_POST['validate'])){

    // Vérifie sur l'user a complété tous les champs
    if(!empty($_POST['pseudo']) AND !empty($_POST['lastname']) AND !empty($_POST['firstname']) AND !empty($_POST['password'])){
        
        $user_pseudo = htmlspecialchars($_POST['pseudo']);
        $user_lastname = htmlspecialchars($_POST['lastname']);
        $user_firstname = htmlspecialchars($_POST['firstname']);
        $user_password = password_hash($_POST['password'], PASSWORD_DEFAULT);

        $checkIfUserAlreadyExists = $bdd->prepare('SELECT pseudo FROM users WHERE pseudo = ?');
        $checkIfUserAlreadyExists->execute(array($user_pseudo));

        if($checkIfUserAlreadyExists->rowCount() == 0){
            $insertUserOnWebsite = $bdd->prepare('INSERT INTO users(pseudo, nom, prenom, mdp)VALUES(?, ?, ?, ?)');
            $insertUserOnWebsite->execute(array($user_pseudo, $user_lastname, $user_firstname, $user_password));
        }else{
            $errorMsg = "L'utilisateur existe déjà";
        }

        // Récup les infos de l'user
        $getInfosOfThisUserReq = $bdd->prepare('SELECT id, pseudo, nom, prenom FROM users WHERE nom = ? AND prenom = ? AND pseudo = ?');
        $getInfosOfThisUserReq->execute(array($user_lastname, $user_firstname, $user_pseudo));

        $usersInfos = $getInfosOfThisUserReq->fetch();

        // Authentifié l'user et recup ses données
        $_SESSION['auth'] = true;
        $_SESSION['id'] = $usersInfos['id'];
        $_SESSION['lastname'] = $usersInfos['nom'];
        $_SESSION['firstname'] = $usersInfos['prenom'];
        $_SESSION['pseudo'] = $usersInfos['pseudo'];

        // Redirection
        header('Location: index.php');

    }else{
        $errorMsg = "Veuillez compléter tous les champs...";
    }

}