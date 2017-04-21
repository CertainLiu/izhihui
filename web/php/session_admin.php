<?php 
header("Content-type: text/html; charset=utf-8");

session_start();

if(isset($_SESSION['user_name'])){

	echo 1;

}else{

	echo 0;
	
}
?>