<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	
<script>
	$(function(){
		//加载页面时显示数据
		$('#dg').datagrid({
			url:"yonghuliebiao_action", 	//远程请求数据的url路径
			pagination:true, 			//显示底部分页栏
			pageSize:5,					//默认每页记录数
			pageList:[5,10,15], 			//显示列表记录数的下拉框选项
			columns:[[
				{field:'ck',checkbox:true},
				{field:'yname',title:'用户姓名',width:265},
				{field:'ybeizhu',title:'用户备注',width:260,align:'center'},
				{field:'jsname',title:'所属角色',width:345,align:'center'}
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
			
			$('#dlg').dialog('open').dialog('setTitle','新用户');
			$('#fm').form('clear');
			var data = $("#selectyjs").combobox("getData");
			$("#selectyjs").combobox("select",data[0].value);
		}
		//工具栏点击“修改”按钮
		function editUser(){
			var row = $('#dg').datagrid('getSelected');
			var data = $("#selectyjs").combobox("getData");
			$("#selectyjs").combobox("select",row.jsname);
			$("#hidyid").val(row.yid);
			$("#hidyjsid").val(row.yjsid);
			if (row){
				$('#dlg').dialog('open').dialog('setTitle','修改信息');
				$('#fm').form('load',row);
				
			}
		}
		//工具栏点击“删除”按钮
		function removeUser(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$.messager.confirm('Confirm','Are you sure you want to remove this user?',function(r){
					if (r){
						$.post("deleteyonghuliebiao_action",{yid:row.yid},function(result){
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
		function saveUser(){
			$('#fm').form('submit',{
				url: "saveyonghuliebiao_action",
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
		<a href="#" class="easyui-linkbutton" iconCls="icon-add"  onclick="newUser()">添加用户</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit"  onclick="editUser()">修改用户</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove"  onclick="removeUser()">删除用户</a>
	</div>
	<!--页面数据表格 -->
	<div style="width:800px;height:10px;"></div>
	<table id="dg" title="用户列表" class="easyui-grid" style="width:930px;height:500px;">
		
	</table> 
	
	<!--弹出的编辑对话框 -->
	<div id="dlg" class="easyui-dialog" style="width:400px;height:380px;padding:10px 20px"
			closed="true" buttons="#dlg-buttons">
		<div class="ftitle">编辑窗口</div>
		<form id="fm" method="post" novalidate>
		<input type="hidden"id="hidyid" name="yid"/> 
		<input type="hidden"id="hidyjsid" name="yjsid"/> 
			<div class="fitem"style="margin-top:20px;">
				<label>用户姓名:</label>
				<input name="yname" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem"style="margin-top:30px;">
				<label>用户密码:</label>
				<input name="ypwd" class="easyui-validatebox" required="true">
			</div>
			<div class="fitem"style="margin-top:30px;">
				<label>用户备注:</label>
				<input name="ybeizhu" class="easyui-validatebox" required="true">
			</div>
			
			<div class="fitem"style="margin-top:30px;">
				<label>所属角色</label>
				<select id="selectyjs" class="easyui-combobox" name="addyjsid" style="width:150px;">
					<option value="0"  >请选择</option>
					<c:forEach items="${result.rows}" var="js">
						<option value="${js.id}">${js.jsname }</option>
					</c:forEach>
				</select>
			</div>
			
				
		</form>
	</div>
	<!--弹出的编辑对话框的按钮 -->
	<div id="dlg-buttons">
		<a href="#" class="easyui-linkbutton"  onclick="saveUser()">保存</a>
		<a href="#" class="easyui-linkbutton"  onclick="javascript:$('#dlg').dialog('close')">取消</a>
	</div>
	<!--弹出的编辑对话框样式风格 -->
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
</body>
</html>