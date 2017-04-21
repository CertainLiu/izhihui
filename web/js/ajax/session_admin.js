;(function($){

$.ajax({
		url:'../php/session_admin.php',
		type:'POST',
		success: function (data){
			if(data==1){
				return;
			}else if(data==0){
				alert("会话未启动");
				location.href = "/index.html";
			}
		}
	});

})(jQuery);