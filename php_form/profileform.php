<?php

session_start();
//echo "<pre>";
//print_r($_SESSION['customer']);
if (empty($_SESSION['customer'])) {
	header("location:index.php");
}

?>
hello<?php
echo $_SESSION['customer']['name']; 
?><a href="logout.php">logout</a>



?>