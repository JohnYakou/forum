<?php 
    require('actions/questions/publishQuestionAction.php');
    require('actions/users/securityAction.php');
?>

<!DOCTYPE html>
<html lang="en">

<?php include 'includes/head.php' ?>
<body>

    <?php include 'includes/navbar.php' ?>
    
    <br><br>

    <!-- DEBUT FORM BT -->
<form class="container" method="POST">
    
    <?php 
        if(isset($errorMsg)){
            echo '<p>'.$errorMsg.'</p>';
        }elseif(isset($successMsg)){
            echo '<p>'.$successMsg.'</p>';
        }
    ?>

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Titre</label>
    <input type="text" class="form-control" name="title">
  </div>

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Description de la question</label>
    <textarea class="form-control" name="description"></textarea>
  </div>

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Contenu de la question</label>
    <textarea type="text" class="form-control" name="content"></textarea>
  </div>

  <button type="submit" class="btn btn-primary" name="validate">Publier la question</button>

  </form>
<!-- FIN FORM BT -->
</body>
</html>