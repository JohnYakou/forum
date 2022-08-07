<?php

session_start();
if($_SESSION['auth']){
    header("Location: ../../login.php");
}

require('../database.php');

if(isset($_GET['id']) AND !empty($_GET['id'])){

    $idOfTheQuestion = $_GET['id'];

    $checkIfQuestionExists = $bdd->prepare('SELECT id_auteur FROM questions WHERE id = ?');
    $checkIfQuestionExists->execute(array($idOfTheQuestion));

    if($checkIfQuestionExists->rowCount() > 0){
        $questionsInfos = $checkIfQuestionExists->fetch();
        if($questionsInfos['id_auteur'] == $_SESSION['id']){

            $deletethisQuestion = $bdd->prepare('DELETE FROM questions WHERE id = ?');
            $deletethisQuestion->execute(array($idOfTheQuestion));

            header('Location: ../../my_questions.php');

        }else{
            echo "Vous n'avez pas le droit de supprimer une question qui ne vous appartient pas !";
        }
    }else{
        echo "Aucune question n'a été trouvée";
    }

}else{
    echo "Aucune question n'a été trouvée";
}