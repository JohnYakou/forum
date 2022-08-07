<?php 
    // require('actions/users/securityAction.php');
    require('actions/questions/myQuestionsAction.php');
?>

<!DOCTYPE html>
<html lang="en">

<?php include 'includes/head.php' ?>

<body>
<?php include 'includes/navbar.php' ?>

<div class="container">

<?php 
    while($question = $getAllMyQuestions->fetch()){
        ?>

        <div class="card m-5">
            <h5 class="card-header"><?php echo $question['titre']; ?></h5>
            <div class="card-body">
                <p class="card-text"><?= $question['description']; ?>

                <br><br>
                <a href="#" class="btn btn-primary">Accèder à la question</a>
                <a href="editQuestion.php?id=<?= $question['id']; ?>" class="btn btn-warning">Modifier</a>
            </div>
        </div>

        <?php
    }
?>
</div>
    
</body>
</html>