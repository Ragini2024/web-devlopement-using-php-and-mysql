<?php
require_once('connection.php');
if (isset($_POST["submit"])) 
{
	$email = $_POST['usr'];
	$password = md5( $_POST['pwd']);
	$sql = "select * from login where email='$email' AND password='$password'";
	$query= mysql_query($sql);
	$total = mysql_num_rows($query);
	if ($total>0) {
		$detail_customer = mysql_fetch_array($query);
		session_start();
		$_SESSION['customer'] = $detail_customer;
		header("location:profileform.php");
	}
	else{
		echo "access denied";
	}
}






?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
	<form method="POST" width=70%;>
		<table border="1" align="center" width="50%">
			<tr>
				<td>
			<div class="form-group">
            <label for="usr">Name:</label>
            <input type="text" class="form-control" id="usr" name="usr">
            </div>
        </td></tr>
        <tr><td>
            <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" id="pwd" name="pwd">
            </div>
        </td></tr>
        <tr>
        	<td>
        		<input type="submit" class="btn" name="submit" id="submit">
        	</td>
        </tr>
		</table>
	</form>

</body>
</html>