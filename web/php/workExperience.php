<?php 

header("Content-type: text/html; charset=utf-8");

require 'baseinfo.php';

session_start();

$user_name = $_SESSION['user_name'];

$conn=mysqli_connect($mysql_server_name,$mysql_username,$mysql_password,$mysql_database) or die("连接失败") ;
	 
mysqli_query($conn,"set names 'utf8'");

$sql = "select * from izz_work_experience where user_name='{$user_name}'";

$result = mysqli_query($conn,$sql);

if($result){

	$text = '';

	while ($row = mysqli_fetch_array($result)) {

		$text = "<div class='right_main'>
					<ul>
						<li>时间：<span>".$row['start_time']." 到 ".$row['end_time']."</span></li>
						<li>公司：<span>".$row['company_name']."</span></li>
						<li>部门：<span>".$row['department']."</span></li>
						<li>职位：<span>".$row['position']."</span></li>
						<li>工作描述：<span>".$row['describe']."</span></li>
					</ul>
				</div>";
				
		echo $text;

	}

}

mysqli_close($conn);
?>