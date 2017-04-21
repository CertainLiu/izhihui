<?php 
	header("Content-type: text/html; charset=utf-8");

	$mysql_server_name='121.196.192.119'; 
	 
	$mysql_username='root';
	 
	$mysql_password='root';

	$mysql_database='izhihui';

	$conn=mysqli_connect($mysql_server_name,$mysql_username,$mysql_password);

	if($conn){
		echo "连接成功";
	}else{
		echo "连接失败";
	}
 ?>