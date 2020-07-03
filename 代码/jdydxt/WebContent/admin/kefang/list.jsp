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
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
		<title>客房管理</title>	
		<LINK href="css/admin.css" type="text/css" rel="stylesheet">	
		<script language="javascript" src="Js/CheckActivX.js"></script>	
		<script type="text/javascript" src="<%=path%>/My97DatePicker/WdatePicker.js"></script>	
		
	
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
							&nbsp;客房列表&nbsp;	
						</td>	
					</tr>	
					<tr align="center" bgcolor="#FAFAF1" height="22">	
						<td width="6%">	
							名称	
						</td>	
						<td width="14%">	
							床位	
						</td>	
						<td width="10%">	
							人数
						</td>	
						<td width="10%">	
							价格	
						</td>	
						<td width="20%">	
							早餐	
						</td>	
						<td width="20%">	
							状态
						</td>
	
						<td width="10%">	
							操作	
						</td>	
					</tr>	
	
	
					<%	
						DBManager dbm = new DBManager();	
						Connection conn = dbm.getConnection();	
						String queryName = request.getParameter("queryName");	
						String jid=request.getParameter("jid");
						String sql = "select * from kefang where jid="+jid;	
						if (queryName != null) {	
							sql = sql+ " and name like '%" + queryName	
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
						<td><%=rs.getString("name")%>	
						</td>	
						<td><%=rs.getString("chuang")%>	
	
						</td>	
						<td align="left">	
							<div align="center">	
								<%=rs.getString("ren")%>	
	
							</div>	
						</td>	
						<td>	
							<%=rs.getString("price")%>	
						</td>	
							
						<td>	
							<%=rs.getString("type")%>	
						</td>	
						
						<td>	
							<%=rs.getString("state")%>	
						</td>
	
						<td>	
							<a href="admin/kefang/modKefang.jsp?id=<%=id %>&jid=<%=jid %>">编辑</a> |	
							<a href="DelKefangAction?id=<%=id %>&jid=<%=jid %>">删除</a>	
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
								
							  <a href="admin/kefang/addKefang.jsp?jid=<%=jid %>"><strong>添加客房</strong></a> </td>	
					</tr>	
	
				</table>	
			</div>	
		</form>	
	
		<!--  搜索表单  -->	
		<form action="admin/kefang/list.jsp?jid=<%=jid %>" method="post">	
	
			<table width='98%' border='0' cellpadding='1' cellspacing='1'	
				bgcolor='#CBD8AC' align="center" style="margin-top: 8px">	
				<tr bgcolor='#EEF4EA'>	
					<td align='center'>	
	
						<table width="469" border='0' cellpadding='0' cellspacing='0'>	
							<tr>	
								<td width='129'>	
									请输入客房名称：	
								</td>	
								<td width='170'>	
									<input type='text' name='queryName' value=''	
										style='width: 150px' />	
								</td>	
								<td width='86'>	
									<input name="imageField" type="submit" border="0" class="np"	
										value='查询' />	
								</td>	
								<td width="84">&nbsp;	
										
								</td>	
							</tr>	
						</table>	
	
					</td>	
				</tr>	
			</table>	
		</form>	
	</body>	
</html>	
