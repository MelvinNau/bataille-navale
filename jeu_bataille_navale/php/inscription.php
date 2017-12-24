<?php  			// Ouverture de la connexion à la base de données du jeu
	include("./init.php") ;
?>

<article id="co">
	<form method="post" action="">
	    <legend>Inscription</legend><br />
	    <div class="form-group">
	      <label class="col-lg-2 control-label">Login</label>
	      <div class="col-lg-10">
	        <input type="text" class="form-control" name="pseudo" placeholder="Login">
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="col-lg-2 control-label">Mot de passe</label>
	      <div class="col-lg-10">
	        <input type="password" class="form-control" name="password1" placeholder="Mot de passe">
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="col-lg-2 control-label">Mot de passe</label>
	      <div class="col-lg-10">
	        <input type="password" class="form-control" name="password2" placeholder="Mot de passe">
	      </div>
	    </div>
	<br/>
	<center><button type="submit" name="submit" class="btn btn-primary">Inscription</button></center>
	</form>
</article>


<?php
	if (isset($_POST['submit']))
	{
		$pseudoPost = mysqli_real_escape_string($c, $_POST['pseudo']);
		$mdpPost1 = mysqli_real_escape_string($c, $_POST['password1']);
		$mdpPost2 = mysqli_real_escape_string($c, $_POST['password2']);

		if(!empty($_POST['pseudo']) && !empty($_POST['password1']) && !empty($_POST['password2']))
		{
			if ($mdpPost1 != $mdpPost2){
				echo '<body onLoad="alert(\'Mots de passes differents...\')">';
				echo '<meta http-equiv="refresh" content="0;URL=index.php?page=inscription.php">';
			}else{
				//Ici sql
				//$q = 'INSERT INTO Joueur VALUES ('', '\''.$mdpPost1.'\'','','','\''.$pseudoPost.'\'' ;
				//echo $q;
				//mysqli_query($c, $q); 

				echo '<body onLoad="alert(\'Inscription en cours... Vous pouvez vous connecter\')">';
				echo '<meta http-equiv="refresh" content="0;URL=index.php?page=connexion.php">';
			}
		}else{
			echo '<body onLoad="alert(\'Champs manquants...\')">';
			echo '<meta http-equiv="refresh" content="0;URL=index.php?page=inscription.php">';
		}
		
	}
?>




<?php			// Fermeture de la connexion à la base de données du jeu
	include("./end.php");
?>