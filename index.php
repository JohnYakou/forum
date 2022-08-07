<?php 
    // require('actions/users/securityAction.php');
    session_start();
    require('actions/questions/showAllQuestionsAction.php');
?>

<!DOCTYPE html>
<html lang="en">

<?php include 'includes/head.php'; ?>

<body>

    <?php include 'includes/navbar.php' ?>
    
    <br><br>

    <div class="container">
        <!-- FORM DE RECHERHCHE DEBUT -->
        <form method="GET">
            <div class='form-group row'>
                <div class="col-8">
                    <input type="search" name="search" class="form-control">
                </div>
                <div class="col-4">
                    <button class="btn btn-success" type="submit">Rechercher</button>
                </div>

            </div>
        </form>
        <!-- FORM DE RECHERCHE FIN -->

        <br>

        <?php
            while($question = $getAllQuestions->fetch()){
                ?>
                    <div class="card m-5">
                        <div class="card-header">
                            <?= $question['titre']; ?>
                        </div>

                        <br>

                        <div class="card-body"><?= $question['description']; ?></div>

                        <br>

                        <div class="card-footer">Question posée par <?= $question['pseudo_auteur']; ?> le <?= $question['date_publication']; ?></div>
                    </div>
                <?php
            }
        ?>



    </div>
</body>
</html>