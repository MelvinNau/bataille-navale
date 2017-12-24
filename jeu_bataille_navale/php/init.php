<?php
	$bd = ; 
	$user = ;
	$passwd = ;
	$machine = ;

	$c = mysqli_connect($machine, $user, $passwd, $bd);
	if(mysqli_connect_errno ()){
		printf("Echec de la connexion : %s ", mysqli_connect_error ());
	}else{
		printf("Connexion réussie! ");
	}

	$table = NULL;
?>
<br/>
