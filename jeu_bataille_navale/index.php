<!DOCTYPE html>
<html>
<head>
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<meta charset="utf-8" />
		<title> Bataille navale </title>
		<?php
			include("php/init.php");
			
		?>
</head>

<body>
	<?php 
		include('static/header.php'); 
		include('static/menu.php'); 
	?>
	<div id="contenu">
		<?php //permet d'inclure plus facilement tout notre php
			$nomPage = 'static/accueil.php';
			if(isset($_GET['page'])) { 
				if(file_exists(addslashes('php/'.$_GET['page']))) 
					$nomPage = addslashes('php/'.$_GET['page']);
			}
			include($nomPage); 
		?>
	</div>
	

	<?php include('static/footer.php'); ?>
</body>
<?php
include("php/end.php");
?>
</html>


