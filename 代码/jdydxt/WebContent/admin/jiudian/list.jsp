<%@ page language="java" import="java.util.*,java.sql.*,com.biyeseng.db.*"
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
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>酒店管理</title>
		<LINK href="css/admin.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="Js/CheckActivX.js">
</script>
		<script charset="utf-8" src="kindeditor/kindeditor-min.js">
</script>
	
	</head>
	<body leftmargin="8" topmargin="8"'>

		<!--  快速转换位置按钮  -->
		<!--  内容列表   -->
		<form name="form2">
			<div id="printTable">
				<table width="98%" border="0" cellpadding="2" cellspacing="1"
					bgcolor="#3333FF" align="center" style="margin-top: 8px">
					<tr bgcolor="#E7E7E7">
						<td height="24" colspan="10" background="admin/images/tbg.gif">
							&nbsp;酒店列表&nbsp;
						</td>
					</tr>
					<tr align="center" bgcolor="#FAFAF1" height="22">
						<td width="6%">
							ID
						</td>
						<td width="5%">
							酒店名
						</td>
						<td width="5%">
							星级
						</td>
						<td width="5%">
							地址
						</td>

					

						<td width="15%">
							酒店图片
						</td>

						<td width="15%">
							电话
						</td>







						<td width="10%">
							操作
						</td>
					</tr>


					<%
						DBManager dbm = new DBManager();
						Connection conn = dbm.getConnection();
						String queryName = request.getParameter("queryName");
						String sql = "select * from jiudian";
						if (queryName != null) {
							sql = "select * from jiudian where name like '%" + queryName
									+ "%'";
						}
						PreparedStatement pstmt = conn.prepareStatement(sql);
						ResultSet rs = pstmt.executeQuery();

						while (rs.next()) {
							String id = rs.getString("id");
					%>

					<tr align='center' bgcolor="#FFFFFF"
						onMouseMove="javascript:this.bgColor='#FCFDEE';"
						onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						<td><%=id%>
						</td>
						<td><%=rs.getString("name")%>

						</td>
						<td><%=rs.getString("style")%>

						</td>
						<td align="left">
							<%=rs.getString("dizhi")%>
						</td>




						

						<td align="left">
							<div align="center">
								<img alt="" width="120px" height="70px"
									src="<%=rs.getString("pic")%>">

							</div>
						</td>

						<td align="left">
							<div align="center">
								<%=rs.getString("tel")%>

							</div>
						</td>




						<td>
							<a href="admin/jiudian/modJiudian.jsp?id=<%=id%>">编辑</a> |
							<a href="DelJiudianAction?id=<%=id%>">删除</a>|
							<a href="admin/kefang/list.jsp?jid=<%=id%>">管理房源</a> 
						</td>
					</tr>

					<%
						}
						if (rs != null)
							rs.close();
						if (pstmt != null)
							pstmt.close();
						if (conn != null)
							conn.close();
					%>

					<tr bgcolor="#FAFAF1">
						<td height="28" colspan="10">
							&nbsp;
							
							<a href="admin/jiudian/addJiudian.jsp"><strong>酒店添加</strong>
							</a>
						</td>
					</tr>

				</table>
			</div>
		</form>

		<!--  搜索表单  -->
		<form action="admin/jing/list.jsp" method="post">

			<table width='98%' border='0' cellpadding='1' cellspacing='1'
				bgcolor='#CBD8AC' align="center" style="margin-top: 8px">
				<tr bgcolor='#EEF4EA'>
					<td align='center'>

						<table width="469" border='0' cellpadding='0' cellspacing='0'>
							<tr>
								<td width='129'>
									请输入酒店名：
								</td>
								<td width='170'>
									<input type='text' name='queryName' value=''
										style='width: 150px' />
								</td>
								<td width='86'>
									<input name="imageField" type="submit" border="0" class="np"
										value='查询' />
								</td>
								<td width="84">
									&nbsp;

								</td>
							</tr>
						</table>

					</td>
				</tr>
			</table>
		</form>
	</body>
</html>