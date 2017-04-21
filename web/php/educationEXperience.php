<?php 

header("Content-type: text/html; charset=utf-8");

require 'baseinfo.php';

session_start();

$user_name = $_SESSION['user_name'];

$conn=mysqli_connect($mysql_server_name,$mysql_username,$mysql_password,$mysql_database) or die("连接失败") ;
	 
mysqli_query($conn,"set names 'utf8'");

$sql = "select * from izz_education_experience where user_name='{$user_name}'";

$result = mysqli_query($conn,$sql);

if($result){

	$text = '';

	while ($row = mysqli_fetch_array($result)) {

		$text = "<div class='right_main'>
					<ul>
						<li>时间：<span>".$row['start_time']." 到 ".$row['end_time']."</span></li>
						<li>学校名称：<span>".$row['school_name']."</span></li>
						<li>专业：<span>".$row['major']."</span></li>
						<li>毕业学历：<span>".$row['graduate_degree']."</span></li>
						<li>描述：<span>".$row['describe']."</span></li>
					</ul>
				</div>";

		echo $text;

	}

}

mysqli_close($conn);
?>