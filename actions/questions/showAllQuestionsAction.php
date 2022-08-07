<?php

require('actions/database.php');

// RECUPERER LES QUESTIONS PAR DEFAUT SANS RECHERCHE
$getAllQuestions = $bdd->query('SELECT id, id_auteur, titre, description, pseudo_auteur, date_publication FROM questions ORDER BY id DESC LIMIT 0,5');

// SI UNE RECHERCHE A ETE RENTRE PAR L'USER
if(isset($_GET['search']) AND !empty($_GET['search'])){
    // LA RECHERCHE
    $userSearch = $_GET['search'];

    // RECUP TOUTES LES QUESTIONS QUI CORRESPONDENT A LA RECHERCHE (EN FONCTION DU TITRE)
    $getAllQuestions = $bdd->query('SELECT id, id_auteur, titre, description, pseudo_auteur, date_publication FROM questions WHERE titre LIKE "%'.$userSearch.'%" ORDER BY id DESC');
}