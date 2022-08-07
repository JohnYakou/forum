<?php
    session_start();
    require('actions/questions/showQuestionContentAction.php');
?>

<!DOCTYPE html>
<html lang="en">

<?php include 'includes/head.php'; ?>

<body>

    <?php include 'includes/navbar.php'; ?>

    <br><br>

    <div class="container">


        <?php
            if(isset($errorMsg)){
                echo $errorMsg;
            }

            if(isset($question_publication_date)){
                ?>
                    <h3><?= $question_title; ?></h3>
                    <hr>
                    <p><?= $question_contenu; ?></p>
                    <hr>
                    <small>Par <?= $question_pseudo_author . ' le ' . $question_publication_date; ?></small>
                <?php
            }
        ?>

    </div>
    
</body>
</html>