<?php
require('actions/database.php');

if(isset($_GET['id'])AND !empty($_GET['id'])){
    $idOfQuestion = $_GET['id'];

    $checkIfQuestionExist = $bdd->prepare('SELECT * FROM questions WHERE id = ?');
    $checkIfQuestionExist->execute(array($idOfQuestion));

    if($checkIfQuestionExist->rowCount() > 0){

        $questionInfos = $checkIfQuestionExist->fetch();

        if($questionInfos['id_auteur'] == $_SESSION['id']){

            $question_title = $questionInfos['titre'];
            $question_description = $questionInfos['description'];
            $question_content = $questionInfos['contenu'];

            // Fonctino de PHP permettant de remplacent les <br> par du vide
            $question_description = str_replace(
                '<br />', '',
                $question_description
            );
            $question_content = str_replace(
                '<br />', '',
                $question_content
            );

        }else{
            $errorMsg = "Vous n'êtes pas l'auteur de cette question";
        }

    }else{
        $errorMsg = "Aucune question n'a été trouvée";
    }

}else{
    $errorMsg = "Aucune question n'a été trouvée";
}