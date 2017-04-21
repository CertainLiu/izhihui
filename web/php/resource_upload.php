<?php 
header("Content-type: text/html; charset=utf-8");

require 'baseinfo.php';

$name = $_POST['name'];

$title = $_POST['title'];

$tag = $_POST['tag'];

$website = $_POST['website'];

if(!empty($name)&&!empty($title)&&!empty($title)&&!empty($title)){

	$conn=mysqli_connect($mysql_server_name,$mysql_username,$mysql_password,$mysql_database) or die("连接失败") ;
	 
	mysqli_query($conn,"set names 'utf8'");

	$sql = "INSERT izz_resource (user_name,title,tag,website) VALUES ('{$name}','{$title}','{$tag}','{$website}')";

	$result = mysqli_query($conn,$sql);

	if($result){

		echo "添加成功！";

	}

	mysqli_close($conn);

}else{

	echo "信息不完整";

}
?>