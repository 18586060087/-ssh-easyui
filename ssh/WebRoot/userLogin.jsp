<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录界面</title>
	<link rel="stylesheet" type="text/css" href="themes/icon.css">
	<link rel="stylesheet" type="text/css" href="themes/gray/easyui.css">
	<link rel="stylesheet" type="text/css" href="css/color.css">
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<link rel="stylesheet" type="text/css" href="css/mylogin.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/mylogin.js"></script>
	
	<style type="text/css" scoped="scoped">
		.w-content{
			padding:5px 10px;
		}
	#divlogin{position:absolute; top:2px; right:0; bottom:0; left:0; margin:auto }/*把整个屏幕真正撑开--而且能自己实现居中*/
	.main_content{background:url(images/main_bg.png) repeat; margin-left:auto; margin-right:auto; text-align:left; float:none; border-radius:8px;}
	</style>
</head>
<body style="background:url(images/bg.jpg) no-repeat;">
	<center><span id="spantitle" >欢迎使用XX公司管理系统</span></center>

	<div class="main_content" style="height:450px;width:100%;max-width:400px;" id="divlogin">
		<form id="frmlogin">
		<p><div id="divspanlogin"><center><span id="spanlogin">用户登录</span></center></div>
		<div style="margin-bottom:10px;">
			<input id="txtusername" name="txtusername" class="easyui-textbox" style="width:90%;height:40px;padding:12px" data-options="prompt:'Username'">
		</div>
		<div style="margin-bottom:30px">
			<input id="txtuserpwd" name="txtuserpwd" class="easyui-textbox" type="password" style="width:90%;height:40px;padding:12px" data-options="prompt:'Password'">
		</div>
		
		<div>
			<a onclick="return clickbtnlogin()" href="" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="margin-left:20px;padding:5px 0px;width:90%;">
				<span style="font-size:14px;" id="spanbtnlogin">登录</span>
			</a>
		</div>
		</form>
	</div>
	<div style="margin:20px 0;" id="divresult">
		
	</div>
	<script type="text/javascript">
		$(document).ready(function(){  
	        $(".window").css("display","none");  
	        $(".window-shadow").css("display","none");  
    	});
				$('.easyui-window').window({
			collapsible: false,
			minimizable: false,
			maximizable: false,
			closable: false
		});
	</script>
	
</body>
</html>