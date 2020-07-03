<%@ page language="java" import="java.util.*,java.sql.*,com.biyeseng.db.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>酒店说明</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript"
			src="<%=path%>/My97DatePicker/WdatePicker.js">
		</script>
		<script type="text/javascript" src="js/tab.js">
</script>
	</head>

	<body style="background:url(upload/newbg.jpg)">

		<div class="page">
			<div class="page_con">
				<jsp:include flush="true" page="/inc/top.jsp"></jsp:include>
				<!----------------内容区开始-------------------->
				<div class="sub_main">
					<div class="sub_maincon">
						<div class="sub_mainbox clearfix">
							<!-------------左边开始------------->

							<!-------------左边结束------------->

							<div class="m_border">

								<div class="m_content">
									<div class="article_conbox">

										<%
											DBManager dbm = new DBManager();
											Connection conn = dbm.getConnection();
											String queryName = request.getParameter("queryName");
											String sql = "select * from jiudian where id="
													+ request.getParameter("id");

											PreparedStatement pstmt = conn.prepareStatement(sql);
											ResultSet rs = pstmt.executeQuery();

											while (rs.next()) {
												String id = rs.getString("id");
										%>
										<h1 class="title">
											<%=rs.getString("name")%>
										</h1>
										<div class="article_info">
											<span>名称：<%=rs.getString("name")%>&nbsp;&nbsp;&nbsp;&nbsp;地址：<%=rs.getString("dizhi")%>&nbsp;&nbsp;&nbsp;&nbsp;电话：<%=rs.getString("tel")%></span>
										</div>
										<div class="article_con" align="center">
											<p>
												<img src="<%=rs.getString("pic")%>" />
											</p>
										</div>
										<div class="article_con">

											<%=rs.getString("info")%>

										</div>


										<%
											}
											
										%>
									</div>
								</div>
							</div>
							
							<div class="m_border">
									<div class="m_title2">
										<h3>
											酒店评价
										</h3>
									</div>
									<div class="m_content">

										<%
											sql = "select * from pingjia where jid="+request.getParameter("id");

											pstmt = conn.prepareStatement(sql);
											rs = pstmt.executeQuery();

											while (rs.next()) {
												String id = rs.getString("id");
										%>
										<div class="leave_mes">
											<li>
												<span class="reply"><a href="#"></a> </span><span><%=rs.getString("msg")%></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><%=rs.getString("adddate")%></span>
											</li>
										</div>

										<%
											}
											if (rs != null)
												rs.close();
											if (pstmt != null)
												pstmt.close();
											if (conn != null)
												conn.close();
										%>
										<div class="message_con">

										</div>
									</div>

								</div>


							<div>
								<%
									Object user = session.getAttribute("user");
									System.out.println(user);
									if (user != null) {
								%>

								<form id="form2" name="form2" method="post"
									action="AddPingjiaAction">
									<h3>
										我要评价：
									</h3>
									<p>
										<textarea name="msg" id="msg" cols="45" rows="5"
											class="text_mes"></textarea>
										<input type="hidden" name="jid" value="<%=request.getParameter("id") %>"/>	
									</p>
									<p class="btn_box">
										<input type="submit" name="button2" id="button2" value="提交"
											class="btn" />
									</p>
								</form>

								<%
									}
								%>
							</div>




						</div>
					</div>
				</div>
				<!----------------内容区结束-------------------->
				<!---------------页脚开始---------------->
				<div class="bottom">
					<p>
						<a style="color:white" >佛山科学技术学院</a>
					</p>
				</div>
				<!---------------页脚结束---------------->
			</div>
		</div>
	</body>
</html>
