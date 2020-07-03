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
		<title>留言板</title>
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
							<div class="m_title2">
								<h3>
									留言
								</h3>
							</div>
							<div class="m_content">
							
							<%
										DBManager dbm = new DBManager();
										Connection conn = dbm.getConnection();
										String queryName = request.getParameter("queryName");
										String sql = "select * from message";
										 
										PreparedStatement pstmt = conn.prepareStatement(sql);
										ResultSet rs = pstmt.executeQuery();

										while (rs.next()) {
											String id = rs.getString("id");
									%>
								<div class="leave_mes">
									<p class="mes_info">
										<span class="reply"> </span><span>留言人：<%=rs.getString("appuser") %></span><span>时间：<%=rs.getString("date") %></span>
									</p>
									<div class="mes_con">
										<%=rs.getString("msg") %>
									</div>
									<div class="mes_con">
										管理员回复： <%=rs.getString("reply") %>
									</div>
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
									<form id="form2" name="form2" method="post" action="AddMsgAction?type=front">
										<h3>
											我要留言：
										</h3>
										<p>
											<textarea name="msg" id="msg" cols="45" rows="5"
												class="text_mes"></textarea>
										</p>
										<p class="btn_box">
											<input type="submit" name="button2" id="button2" value="提交"
												class="btn" />
										</p>
									</form>
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
