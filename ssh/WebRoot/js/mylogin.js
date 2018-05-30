function clickbtnlogin(){
	var data=$("#frmlogin").serialize();
	$.ajax({
	  	url : "checklogin",                                 //要提交的URL路径
		type : "post",                          //发送请求的方式
		data : data,                           //要发送到服务器的数据
		dataType : "json",                //指定传输的数据格式
		success : function(result) {//请求成功后要执行的代码
			if(result.res==true){
				$.messager.alert({
					title:result.msg,
					msg:"<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎使用XX公司管理系统</h4>",
					fn:function(){
						location.href="indexaction";
					}	
				});  
				$('.panel-tool-close').hide();
			}else{
				$.messager.alert('erro',result.msg,'error');
				
				 $(".window-shadow").show();
			}
		},
		error : function() { //请求失败后要执行的代码
		}
	});
	
	return false;
}