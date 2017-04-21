<?php

header("Content-type: text/html; charset=utf-8");

require 'baseinfo.php';

session_start();

$user_name = $_POST['username'];

if(isset($user_name)&&!empty($user_name)&&($user_name=='刘意定' || $user_name=='赵智慧')){

	$conn=mysqli_connect($mysql_server_name,$mysql_username,$mysql_password,$mysql_database) or die("连接失败") ;
	 
	mysqli_query($conn,"set names 'utf8'");
	 
	$sql = "select * from izz_user_infomation where user_name='{$user_name}'";

	$result = mysqli_query($conn,$sql);

	if($result){

		 while ( $row = mysqli_fetch_array($result)) {

		 	$_SESSION['uid'] = $row['uid'];

		 	$_SESSION['user_name'] = $row['user_name'];

		 }

		 echo 1;

	}

	mysqli_close($conn);

}else{

	echo "请输入正确的Token值";

}
?>