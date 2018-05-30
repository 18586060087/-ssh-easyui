<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'quanxiansheding.jsp' starting page</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/themes/default/easyui.css" />
	<link rel="stylesheet" type="text/css" href="<%=path%>/themes/icon.css" />
	<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery.easyui.min.js" ></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div class="easyui-tabs" data-options="tabWidth:112" style="width:700px;height:250px;margin-top:80px;margin-left:120px;">
		<c:forEach items="${fqxlist}" var="fqx">	
		<div title="${fqx.xtmingcheng }" style="padding:10px">
			<c:forEach items="${sqxlist}" var="sqx">
				<c:if test="${sqx.shangjiid==fqx.xitongquanxianid}">
					<p>${sqx.xtmingcheng}  浏览：
						<c:if test="${sqx.liulan==1}">
							<input type="checkbox"checked="checked"/>
						</c:if>
						<c:if test="${sqx.liulan==0}">
							<input type="checkbox"/>
						</c:if>
					</p>
				</c:if>
			</c:forEach>
		</div>
		</c:forEach>
	</div>	
  </body>
</html>
