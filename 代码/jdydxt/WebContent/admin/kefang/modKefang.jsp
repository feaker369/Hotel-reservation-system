<%@ page language="java"	
	import="java.util.*,java.sql.*,com.biyeseng.db.*"	
	pageEncoding="UTF-8"%>	
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
	
		<title>客房修改</title>	
	
		<META http-equiv=Content-Type content="text/html; charset=UTF-8">	
		<script type="text/javascript" src="<%=path%>/My97DatePicker/WdatePicker.js"></script>	
		<LINK href="css/admin.css" type="text/css" rel="stylesheet">	
		<style type="text/css">	
<!--	
.STYLE3 {	
	font-size: 16px	
}	
-->	
</style>	
	</head>	
	
	<body>	
		<p>r&nbsp;	 
		</p>	
		<p>	
			&nbsp;	
		</p>	
		<form action="ModKefangAction" method="post">	
			<%	
				DBManager dbm = new DBManager();	
				Connection conn = dbm.getConnection();	
				String id = request.getParameter("id");	
				String sql = "select * from kefang where id='" + id + "'";	
				PreparedStatement stat = conn.prepareStatement(sql);	
				ResultSet rs = stat.executeQuery();	
				rs.next();	
			%>	
			<table width="39%" border="0" align="center" cellspacing="1"	
				bordercolor="#000000" bgcolor="#0000CC">	
				<input name="id" type="hidden" id="name" value='<%=id%>'>	
				<tr>	
					<td width="28%" bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							名称：	
						</div>	
					</td>	
					<td width="72%" bgcolor="#FFFFFF">	
						<label>	
							<input name="name" type="text" id="name" value="<%=rs.getString("name") %>">	
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
						<input name="chuang" type="text" id="chuang"  value="<%=rs.getString("chuang") %>">	
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
						<input name="price" type="text" id="price"   value="<%=rs.getString("price") %>" >	
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
					<td bgcolor="#FFFFFF">	
						<div align="right" class="STYLE3">	
							状态：	
						</div>	
					</td>	
					<td bgcolor="#FFFFFF">	
						
						<select name="state">
						  <option value="订满">订满</option>
						  <option value="">可以预订</option>
						
						  
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
			<%	
				if (rs != null)	
					rs.close();	
				if (stat != null)	
					stat.close();	
				if (conn != null)	
					conn.close();	
			%>	
		</form>	
	</body>	
</html>	
