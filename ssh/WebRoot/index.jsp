<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="themes/default/easyui.css" />
	<link rel="stylesheet" type="text/css" href="themes/icon.css" />
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js" ></script>
	<script language="JavaScript">
		$(document).ready(function () {
		});

		function addTab(title, url){
			
			if ($('#tt').tabs('exists', title)){
				$('#tt').tabs('select', title);
			} else {
				var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
				$('#tt').tabs('add',{
					title:title,
					content:content,
					closable:true
				});
			}
		}
	</script>
<style>
	.footer {
		width: 100%;
		text-align: center;
		line-height: 35px;
		}
	.top-bg {
		background-color: #d8e4fe;
		height: 80px;
	}
	 #menu .mybutton a {  
		 display: block; 
		 background-color: #00a6ac; 
		 color: #fff; 
		 padding: 5px; 		
		 text-decoration: none; 
		 line-height: 20px;
	  	 margin-bottom: 1px;
	  	 text-align: center;
	 } 
	 #menu  a:hover { 
	 	background-color: #008792; 
	 } 
	
</style>
</head>
<body class="easyui-layout">
	<div data-options="region:'east',title:'East',split:true" style="width:200px;"></div>

	<div region="north" border="true" split="true" style="overflow: hidden; height: 80px;">
		<div class="top-bg"></div>
	</div>
	
	<div region="south" border="true" split="true" style="overflow: hidden; height: 40px;">
		<div class="footer">版权所有：软件最终解释权归本公司所有</div>
	</div>
	
	<div region="west" split="true" title="导航菜单" style="width: 200px;" selected="true">
		<div id="menu" class="easyui-accordion" style="position: absolute; top: 27px; left: 0px; right: 0px; bottom: 0px;" data-options="fit:true">
			<c:forEach items="${fqxlist}" var="fqx">					
					<div title="${fqx.xtmingcheng }" iconcls="icon-save" style="overflow: auto; padding: 1px;">
					<c:forEach items="${sqxlist}" var="sqx">
						<c:if test="${sqx.shangjiid==fqx.xitongquanxianid && sqx.liulan==1}">	
							<span class="mybutton"><a href="#"  onclick="addTab('${sqx.xtmingcheng}','${sqx.url}')">${sqx.xtmingcheng}</a></span>	
						</c:if>
					</c:forEach>
					</div>
			</c:forEach>
		</div>
	</div>
	<div id="mainPanle" region="center" style="overflow: hidden;">
	
		<div id="tt" class="easyui-tabs" style="width:100%;height:100%;">
		
			<div title="Home">
				<div style="margin-bottom:10px">
					
				</div>
			</div>
		</div>

</div>
</body>
</html>
