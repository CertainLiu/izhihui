<?php

header("Content-type: text/html; charset=utf-8");

require 'baseinfo.php';

session_start();

$name = $_SESSION['user_name'];

$conn=mysqli_connect($mysql_server_name,$mysql_username,$mysql_password,$mysql_database) or die("连接失败") ;
	 
mysqli_query($conn,"set names 'utf8'");
 
$sql = "select * from izz_resource_tag where user_name='{$name}'";

$result = mysqli_query($conn,$sql);

if($result){

	while ($row = mysqli_fetch_array($result)) {

		echo "<li>".$row['tag']."</li>";

	}

}

mysqli_close($conn);

 ?>
 