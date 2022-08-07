<?php

require('actions/database.php');

// Vérifie si l'idée de la question est entrée dans l'URL
if(isset($_GET['id']) AND !empty($_GET['id'])){

    $idOfTheQuestion = $_GET['id'];

    // Vérifier si la question existe
    $checkIfQuestionExists = $bdd->prepare('SELECT * FROM questions WHERE id = ?');

    $checkIfQuestionExists->execute(array($idOfTheQuestion));

    if($checkIfQuestionExists->rowCount() > 0){

        // Récupérer les datas de la question
        $questionsInfos = $checkIfQuestionExists->fetch();

        // Stocker les datas de la question dans des variables
        $question_title = $questionsInfos['titre'];
        $question_contenu = $questionsInfos['contenu'];
        $question_id_author = $questionsInfos['id_auteur'];
        $question_pseudo_author = $questionsInfos['pseudo_auteur'];
        $question_publication_date = $questionsInfos['date_publication'];

    }else{
        $errorMsg = 'Aucune question trouvée';
    }
    
}else{
    $errorMsg = 'Aucune question trouvée';
}