<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Grid</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/themes/default/easyui.css" />
	<link rel="stylesheet" type="text/css" href="<%=path%>/themes/icon.css" />
	<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery.easyui.min.js" ></script>
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
		//加载页面时显示数据
		$('#dg').datagrid({
			url:"jiaoseliebiao_action", 	//远程请求数据的url路径
			pagination:true, 			//显示底部分页栏
			pageSize:5,					//默认每页记录数
			pageList:[5,10,15], 			//显示列表记录数的下拉框选项
			columns:[[
				{field:'ck',checkbox:true},
				{field:'jsname',title:'角色姓名',width:265},
				{field:'jsbeizhu',title:'角色备注',width:260,align:'center'},
				{field:'jsquanxian',title:'角色权限',width:345,align:'center'}
			]],
			singleSelect:true,
			rownumbers:true,
			iconCls: 'icon-search',
			fitColumns:false,
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
		//工具栏点击“添加”按钮
		function newUser(){
			$('#dlg').dialog('open').dialog('setTitle','新角色');
			$('#fm').form('clear');
			
		}
		//工具栏点击“修改”按钮
		function editUser(){
			var row = $('#dg').datagrid('getSelected');
			
			if (row){
				$('#dlg').dialog('open').dialog('setTitle','修改信息');
				$('#fm').form('load',row);
				$("#hidejsid").val(row.id);
			}
		}
		//工具栏点击“删除”按钮
		function removeUser(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$.messager.confirm('Confirm','Are you sure you want to remove this user?',function(r){
					if (r){
						$.post("deletejiaoseliebiao_action",{id:row.id},function(result){
							if (result.res==true){
								$.messager.show({
									title: ' ',
									msg: result.msg
								});
								$('#dg').datagrid('reload');	// reload the user data
							} else {
								$.messager.show({	// show error message
									title: 'Error',
									msg: result.msg
								});
							}
						},'json');
					}
				});
			}
		}
		
		//弹出的编辑对话框中点击“保存”按钮
		function savejiaose(){
			$('#fm').form('submit',{
				url: "savejiaoseliebiao_action",
				onSubmit: function(){
					return $(this).form('validate');
				},
				success: function(result){
					var result = eval('('+result+')');
					if (result.res==true){
						$.messager.show({
								title: ' ',
								msg: result.msg
							});
						$('#dlg').dialog('close');		// close the dialog
						$('#dg').datagrid('reload');	// reload the user data
					} else {
						$.messager.show({
							title: 'Error',
							msg: result.msg
						});
					}
				}
			});
		}
		
</script>
</head>

<body>
	<div style="width:800px;height:5px;"><p></div>
	<!--页面工具条和按钮 -->
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add"  onclick="newUser()">添加角色</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit"  onclick="editUser()">修改角色</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove"  onclick="removeUser()">删除角色</a>
	</div>
	<!--页面数据表格 -->
	<div style="width:800px;height:10px;"></div>
	<table id="dg" title="角色列表" class="easyui-grid" style="width:930px;height:500px;">	
			
	</table> 
	
	<!--弹出的编辑对话框 -->
	<div id="dlg" class="easyui-dialog" style="width:400px;height:330px;padding:10px 20px"
			closed="true" buttons="#dlg-buttons">
		<div class="ftitle">编辑窗口</div>
		<form id="fm" method="post" novalidate>
		<input type="hidden" id="hidejsid" name="hidejsid"/>
			<div class="fitem" style="margin-top:20px;">
				<label >角色姓名：</label>
				<input name="jsname" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem"style="margin-top:30px;">
				<label>角色备注：</label>
				<input name="jsbeizhu" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem"style="margin-top:30px;">
				<label>角色权限：</label>
				<input name="jsquanxian" class="easyui-validatebox" required="true">
			</div>
			
		</form>
	</div>
	<!--弹出的编辑对话框的按钮 -->
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton"  onclick="savejiaose()">保存</a>
		<a href="#" class="easyui-linkbutton"  onclick="javascript:$('#dlg').dialog('close')">取消</a>
	</div>
	<!--弹出的编辑对话框样式风格 -->
	
</body>
</html>