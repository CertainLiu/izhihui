<?php

header("Content-type: text/html; charset=utf-8");

require 'baseinfo.php';

session_start();

$uid = $_SESSION['uid'];

$conn=mysqli_connect($mysql_server_name,$mysql_username,$mysql_password,$mysql_database) or die("连接失败") ;
	 
mysqli_query($conn,"set names 'utf8'");
 
$sql = "select * from izz_user_infomation where uid='{$uid}'";

$result = mysqli_query($conn,$sql);

if($result){

	while ($row = mysqli_fetch_array($result)) {

		echo json_encode($row);

	}

}

mysqli_close($conn);

 ?>