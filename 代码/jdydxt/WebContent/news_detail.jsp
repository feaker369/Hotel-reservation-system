<%@ page language="java" import="java.util.*,java.sql.*,com.biyeseng.db.*" pageEncoding="UTF-8"%>
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
		<title>网站新闻</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
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
										String sql = "select * from news where id="+request.getParameter("id");
										 
										PreparedStatement pstmt = conn.prepareStatement(sql);
										ResultSet rs = pstmt.executeQuery();

										while (rs.next()) {
											String id = rs.getString("id");
									%>
										<h1 class="title">
											<%=rs.getString("title") %>
										</h1>
										<div class="article_info">
											<span>发布者：<%=rs.getString("appuser") %>&nbsp;&nbsp;&nbsp;&nbsp;发布时间：<%=rs.getString("date") %></span>
										</div>
										<div class="article_con" align="center">
											<p>
												<img src="<%=rs.getString("pic")%>" />
											</p>
										</div>
										<div class="article_con">
											<p>
												<%=rs.getString("info") %>
											</p>
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
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!----------------内容区结束-------------------->
				<!---------------页脚开始---------------->
				
				<!---------------页脚结束---------------->
			</div>
		</div>
	</body>
</html>
