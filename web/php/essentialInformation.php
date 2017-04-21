<?php 

header("Content-type: text/html; charset=utf-8");

require 'baseinfo.php';

session_start();

$user_name = $_SESSION['user_name'];

$conn=mysqli_connect($mysql_server_name,$mysql_username,$mysql_password,$mysql_database) or die("连接失败") ;
	 
mysqli_query($conn,"set names 'utf8'");
 
$sql = "select * from izz_essential_information where user_name='{$user_name}'";

$result = mysqli_query($conn,$sql);

if($result){

	while ($row = mysqli_fetch_array($result)) {

		echo json_encode($row);

	}

}

mysqli_close($conn);
?>