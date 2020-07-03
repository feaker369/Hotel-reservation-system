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
		<script language="javascript">

function doPrint() {

	LODOP.PRINT_INIT("打印");
	LODOP.ADD_PRINT_HTM(88, 20, 700, 600,
			document.getElementById("printTable").innerHTML);
	LODOP.PREVIEW();
};
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
						<td height="24" colspan="11" background="admin/images/tbg.gif">
							&nbsp;酒店列表&nbsp;
						</td>
					</tr>
					<tr align="center" bgcolor="#FAFAF1" height="22">

						<td width="5%">
							姓名
						</td>
						<td width="5%">
							酒店
						</td>
						<td width="5%">
							房间
						</td>
						<td width="2%">
							房间数量
						</td>
						<td width="5%">
							电话
						</td>
						<td width="5%">
							入住时间
						</td>
						<td width="5%">
							离开时间
						</td>
						<td width="5%">
							房款
						</td>
						<td width="5%">
							定金
						</td>
						<td width="5%">
							会员账号
						</td>









						<td width="3%">
							操作
						</td>
					</tr>


					<%
						DBManager dbm = new DBManager();
						Connection conn = dbm.getConnection();
						String queryName = request.getParameter("queryName");
						String sql = "select yu.id,yu.tel, yu.name as names,yu.bdate,yu.edate,ji.name,ke.name,yu.fangkuan,ke.name as kname,yu.dingjin,yu.count,yu.mtel from yuding yu,jiudian ji,kefang ke where yu.fang=ke.id and ke.jid=ji.id ";
						if (queryName != null) {
							sql = sql+" and yu.tel like '%" + queryName
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
						
						<td><%=rs.getString("names")%>

						</td>
						<td><%=rs.getString("name")%>

						</td>
						<td align="left">
							<%=rs.getString("kname")%>
						</td>

						<td align="left">
							<%=rs.getString("count")%>
						</td>
						<td align="left">

							<%=rs.getString("tel")%>


						</td>

						<td align="left">

							<%=rs.getString("bdate")%>


						</td>

						<td align="left">

							<%=rs.getString("edate")%>


						</td>
						<td align="left">

							<%=rs.getString("fangkuan")%>


						</td>
						<td align="left">

							<%=rs.getString("dingjin")%>


						</td>
						
						<td align="left">

							<%=rs.getString("mtel")%>


						</td>

  


						<td>

							<a href="DelJiuAction?id=<%=id%>">删除</a>
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
						<td height="28" colspan="11">
							&nbsp;
							
						</td>
					</tr>

				</table>
			</div>
		</form>

		<!--  搜索表单  -->
		<form action="admin/yuding/list.jsp" method="post">

			<table width='98%' border='0' cellpadding='1' cellspacing='1'
				bgcolor='#CBD8AC' align="center" style="margin-top: 8px">
				<tr bgcolor='#EEF4EA'>
					<td align='center'>

						<table width="469" border='0' cellpadding='0' cellspacing='0'>
							<tr>
								<td width='129'>
									请输入电话：
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