<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Grid</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="themes/default/easyui.css" />
	<link rel="stylesheet" type="text/css" href="themes/icon.css" />
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js" ></script>
	<style type="text/css">
		#fm{
			margin:0;
			padding:10px 30px;
		}
		.ftitle{
			font-size:14px;
			font-weight:bold;
			color:#666;
			padding:5px 0;
			margin-bottom:10px;
			border-bottom:1px solid #ccc;
		}
		.fitem{
			margin-bottom:5px;
		}
		.fitem label{
			display:inline-block;
			width:80px;
		}
	</style>
<script>
	$(function(){
		$('#dg').datagrid({
			url:'demo10_server.jsp', 	//远程请求数据的url路径
			pagination:true, 			//显示底部分页栏
			pageSize:5,					//默认每页记录数
			pageList:[5,10,15], 			//显示列表记录数的下拉框选项
			columns:[[
				{field:'ck',checkbox:true},
				{field:'title',title:'投票标题',width:308},
				{field:'options',title:'备选项数',width:260,align:'center'},
				{field:'participants',title:'参与人数',width:360,align:'center'}
			]],
			singleSelect:true,
			rownumbers:true,
			iconCls: 'icon-search',
			fitColumns:true,//自适应宽度，防止水平滚动
			striped:true,//隔行变色
			loadMsg:"正努力为您加载中......"
		});
	});
	
	function myStyler(value,row,index){
		if (value < 5){
			return 'background-color:#ffee00;color:red;';
		}else if(value > 15){
			return 'color:green;';
		}
	}
	
	var url;
		function newUser(){
			$('#dlg').dialog('open').dialog('setTitle','New User');
			$('#fm').form('clear');
			url = 'save_user.php';
		}
		function editUser(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$('#dlg').dialog('open').dialog('setTitle','Edit User');
				$('#fm').form('load',row);
				url = 'update_user.php?id='+row.id;
			}
		}
</script>
</head>

<body>
	<div id="tb" style="padding:5px;height:auto">
		<div style="margin-bottom:5px">
			<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true"></a>
			<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"></a>
		</div>
		<div>
			Date From: <input class="easyui-datebox" style="width:80px">
			To: <input class="easyui-datebox" style="width:80px">
			Language: 
			<input class="easyui-combobox" style="width:100px"
					url="data/combobox_data.json"
					valueField="id" textField="text">
			<a href="#" class="easyui-linkbutton" iconCls="icon-search">Search</a>
		</div>
	</div>


	<div><p></div>
	<table id="dg" title="投票列表" class="easyui-grid" style="width:1000px;height:515px;"  
		title="DataGrid - Complex Toolbar" toolbar="#tb"
		singleSelect="true" fitColumns="true">
	</table> 
	
	<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
			closed="true" buttons="#dlg-buttons">
		<div class="ftitle">User Information</div>
		<form id="fm" method="post" novalidate>
			<div class="fitem">
				<label>First Name:</label>
				<input name="firstname" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>Last Name:</label>
				<input name="lastname" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem">
				<label>Phone:</label>
				<input name="phone">
			</div>
			<div class="fitem">
				<label>Email:</label>
				<input name="email" class="easyui-validatebox" validType="email">
			</div>
		</form>
	</div>
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
	</div>
	
</body>
</html>