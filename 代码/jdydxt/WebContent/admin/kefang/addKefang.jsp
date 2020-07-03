<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>	
<%	
	String path = request.getContextPath();	
	String basePath = request.getScheme() + "://"	
			+ request.getServerName() + ":" + request.getServerPort()	
			+ path + "/";	
%>	
	
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">	
<html>	
	<head>	
		<base href="<%=basePath%>">	
	
		<title>客房添加</title>	
	
		<META http-equiv=Content-Type content="text/html; charset=UTF-8">	
		<LINK href="css/admin.css" type="text/css" rel="stylesheet">	
		<script type="text/javascript" src="<%=path%>/My97DatePicker/WdatePicker.js"></script>	
		<style type="text/css">	
<!--	
.STYLE3 {	
	font-size: 16px	
}	
-->	
</style>	
	</head>	
	
	<body>	
		<p>	
			&nbsp;	
		</p>	
		<p>	
			&nbsp;	
		</p>	
		<form action="AddKefangAction" method="post">	
			<table width="39%" border="0" align="center" cellspacing="1"	
				bordercolor="#000000" bgcolor="#0000CC">	
				<tr>	
					<td width="28%" bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							名称：	
						</div>	
					</td>	
					<td width="72%" bgcolor="#FFFFFF">	
						<label>	
							<input name="name" type="text" id="name">	
							<input name="jid" type="hidden" value="<%=request.getParameter("jid") %>" id="name">	
						</label>	
					</td>	
				</tr>	
				<tr>	
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							床位：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						<input name="chuang" type="text" id="chuang">	
					</td>	
				</tr>	
				<tr>	
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							人数：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						<select name="ren">
						  <option value="1人">1人</option>
						  <option value="2人">2人</option>
						  <option value="3人">3人</option>
						  <option value="4人">4人</option>
						  <option value="4人以上">4人以上</option>
						  
						</select>
					</td>	
				</tr>	
				<tr>	
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							价格：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						<input name="price" type="text" id="price"   >	
					</td>	
				</tr>	
				<tr>	
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							早餐：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						
						<select name="type">
						  <option value="无早">无早</option>
						  <option value="有早">有早</option>
						
						  
						</select>	
					</td>	
				</tr>	
				<tr>	
					<td colspan="2" bgcolor="#FFFFFF">	
						<label>	
							<div align="center">	
								<input type="submit" name="Submit" value="提交">	
								<input type="reset" name="Submit2" value="重置">	
							</div>	
						</label>	
					</td>	
				</tr>	
			</table>	
		</form>	
	</body>	
</html>	
