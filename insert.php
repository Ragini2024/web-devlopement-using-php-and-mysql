<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
	
		table{
			border:1px solid #000;
		}
</style>
</head>
<body>
	<form  method="POST">
		<table>
		<h1>Registration Form</h1><tr>
		<th>id<td><input type="text" name="name" placeholder="enter your name.."></td></th><br><br>
		<th>name<td><input type="text" name="project" placeholder="your project name..."></td></th><br><br>
		<th>project name<td><input type="submit"  name="submit"></td></th></tr>
	</table>
</body>
</html>


<?php
include('dbconnect.php');
	if(isset($_POST['submit']))
	{
    $name=$_POST['name'];
    $project=$_POST['project'];
    
    if($name==""||$project=="")
    {
    echo "alert('please enter all field')";
    }
    else {
        
          $sql="insert into shalini(name,project) values('$name','$project')";
          
          $res=mysqli_query($connect, $sql);
          if($res)
          {
            echo"data submitted";
          }
          else
          {
           echo"data submitted failed";

          }
    }
}
?>
<?php
include('dbconnect.php');
	$sql="select * from shalini";
	$r=mysqli_query($connect,$sql);
	if($r)
	{
		$row=array();
		while($row=mysqli_fetch_assoc($r))
		{
			echo "<table><tr>
			<th>id</th><th>name</th><th>project</th></tr>
			<td>".$row['id']."</td>
			<td>".$row['name']."</td>
			<td>".$row['project']."</td>
	
			</table>
			";
		}
	}
?>