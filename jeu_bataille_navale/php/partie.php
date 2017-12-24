<?php
	include('./init.php');
	include('./end.php');
 	require_once('function.php');
?>
<!-- Partie : page pour jouer -->
	<article id="jouer1">
		<form method='POST' action='./index.php?page=partie.php'>
			<label for="nomT">Nom de la table</label>
			<input id="nomT" name="nomTable" type="text" value="<?php if (isset($_POST['nomTable'])){echo $_POST['nomTable'];} ?>"placeholder="Nom de la table" />
			<input id="initT" name='initTable' type="submit" value="Initialiser" />
			<input id="affiche" name='affTab' type="submit" value="Afficher" /><br />
			
			<label for="nomT">Poser un bateau</label>
			<input id="taille" name="taille" type="text" placeholder="Sa taille" />
			<input id="x" name="x" type="text" placeholder="Son x" />
			<input id="y" name="y" type="text" placeholder="Son y" />
			<input type="radio" name="position" value="h"/>Horizontal 
    		<input type="radio" name="position" value="v"/>Vertical
			<input id="pose" name='pose' type="submit" value="Pose !" /><br />
			
			<label for="nomT">Tirer un bateau</label>
			<input id="x_tire" name="x_tire" type="text" placeholder="Son x" />
			<input id="y_tire" name="y_tire" type="text" placeholder="Son y" />
			<input id="tire" name='tire' type="submit" value="Tirer !" /><br />
			
			
		</form>
	
		<!--
		<form method='POST' action='./index.php?page=partie.php'>
			<label for="nomT">Afficher ?</label>
			<input id="nomTab" name="nomTabl" type="text" placeholder="Nom de la table à afficher" />
			<input id="affiche" name='affTab' type="submit" value="Afficher" />
		</form>
		-->
		
		
		<form method='POST' action='./index.php?page=partie.php'>

		</form>
		
		<?php
			//Ok ici on doit mettre les fonctions mysteres qui permettent de créer la map
			//Si on clique alors, on recupere le nom de la table et on crée la table


			//Doit etre fait une fois quand une partie demarre. Puisque stock l'état du jeu dans cette base
			if (isset($_POST["initTable"]))
			{
				$table = $_POST["nomTable"];
				CreeEtPeuple();
			}

			//Permet d'afficher
			if (isset($_POST["affTab"]))
			{
				//Je n'arrive pas recuperer cette variable
				$table = $_POST["nomTable"];
				affiche();
			}
			
			
			/*
				//$s = h ou v / $t = {1,2,3,4}
				//placeBateau($t, $s, $x, $y)
				placeBateau(2, 'h', 5, 5);
			*/
			if (isset($_POST["pose"]))
			{
					$table = $_POST["nomTable"];
					$x = $_POST["x"];
					$y = $_POST["y"];
					$t = $_POST["taille"];
					$s = $_POST['position'];
					
					placeBateau($t, $s, $x, $y);
					
					//Ne trouve pas $table
					affiche();
					
			}
			
			if (isset($_POST["tire"]))
			{
				$table = $_POST["nomTable"];
				$x =  $_POST["x_tire"];
				$y =  $_POST["y_tire"];
				tireBateau($x, $y);	
				affiche();		
			}
		?>
	</article>



