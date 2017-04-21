<?php 

header("Content-type: text/html; charset=utf-8");

require 'baseinfo.php';

session_start();

$name = $_SESSION['user_name'];

$p = $_POST["p"];

$tag = $_POST["tag"];

$page_start = $p-1;

$page_num = 5; 

$conn=mysqli_connect($mysql_server_name,$mysql_username,$mysql_password,$mysql_database) or die("连接失败") ;
	 
mysqli_query($conn,"set names 'utf8'");

$sql_count = "select count(*) from izz_resource where user_name='{$name}' AND tag='{$tag}'";

$count_result = mysqli_query($conn,$sql_count);

$count_num = "";

$result_text = "";

if($count_result){

	while ( $row_count = mysqli_fetch_array($count_result)) {

		$count_num = $row_count[0];

	}

}

$sql = "select * from izz_resource where user_name='{$name}' AND tag='{$tag}' limit {$page_start},{$page_num}";

$result = mysqli_query($conn,$sql);

if($result){

	$num = mysqli_num_rows($result);

	if($num<=0){

		echo "<p style='text-align: center;'>此标签下没有数据，请联系管理员上传</p>";

	}else{

		while ($row = mysqli_fetch_array($result)) {

			$result_text.="<ul>
							<li>".$row['title']."</li>
							<li><a href='".$row['website']."' class='gray'>".$row['website']."</a></li>
							<hr />
						</ul>";

		}

		$arr = [];

		$arr['text'] = $result_text;

		$arr['num'] = ceil($count_num/5);

		$result_data = json_encode($arr);

		echo $result_data;

	}

}

mysqli_close($conn);
?>