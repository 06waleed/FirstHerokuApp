<?php
	session_start();
	$isValid = $_SESSION['Isvalid'];
	if(!$isValid)
	{
		header("Location:index.php");
	}	
?>