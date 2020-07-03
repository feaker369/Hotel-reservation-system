<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
<head>
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
-->
</style>
</head>

<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed">
  <tr>
    <td background="<%=path %>/images/main_40.gif" style="width:3px;">&nbsp;</td>
    <td width="177"  style="border-right:solid 1px #9ad452;">
       <iframe name="I2" height="100%" width="197" border="0" frameborder="0" src="left.jsp">
		   浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。
		</iframe>
	</td>
    <td valign="top">
       <iframe name="I1" height="100%" src="<%=path %>/admin/index/sysPro.jsp" width="100%" border="0" frameborder="0">
		  浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。
	   </iframe>
	</td>
    <td background="<%=path %>/images/main_42.gif" style="width:3px;">&nbsp;</td>
  </tr>
</table>
</body>
</html>
