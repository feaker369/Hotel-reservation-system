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
		<title>酒店预订系统</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<link href="css/commons.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="js/tab.js">
</script>
	</head>
	<body style="background:url(upload/newbg.jpg)">

		<div class="page">
			<div class="page_con">
				<jsp:include flush="true" page="/inc/top.jsp"></jsp:include>
				<%
					DBManager dbm = new DBManager();
					Connection conn = dbm.getConnection();
					String sql;
					PreparedStatement pstmt;
					ResultSet rs;
				%>



				<div id="wrapper">


					<!--body start-->
					<div id="body">



						<!--ProductShow start-->
						<div class="MainBlock">
						<div class="Solutions">
								<div class="topic">
									<div id="Solutionsdemo">
										<div id="Solutionsindemo">
											
												<%
													sql = "select * from jiudian";
													pstmt = conn.prepareStatement(sql);
													rs = pstmt.executeQuery();
													while (rs.next()) {
														String id = rs.getString("id");
												%>
												<a href="jiu_detail.jsp?id=<%=id%>"
													title="<%=rs.getString("name")%>"><img
														src="<%=rs.getString("pic")%>" width="200" height="124"
														alt="<%=rs.getString("name")%>">
												</a>

												<%
													}
												%>
												<div class="clearfix"></div>
											<div id="Solutionsdemo2">

												<div class="clearfix"></div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				
				
				
				
				<div class="main">

					<div class="main_con">
						<div class="main_box clearfix">


							<div class="main_center">

								
								<div class="m_border">
									<div class="m_title2">
										<h3>
											最新新闻
										</h3>
									</div>
									 <div class="article_listbox">
								<ul>
									<%
									sql = "select  * from news order by date desc limit 10";
									pstmt = conn.prepareStatement(sql);
									rs = pstmt.executeQuery();

									while (rs.next()) {
											String id = rs.getString("id");
									%>
									<li>
										<span class="time"><%=rs.getString("appuser") %>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("date") %></span><a href="news_detail.jsp?id=<%=id %>"
											><%=rs.getString("title") %></a>
									</li>
									<%
									}
										
									%>
								</ul>
							</div>

								</div>
								<div class="m_border">
									<div class="m_title2">
										<h3>
											留言
										</h3>
									</div>
									<div class="m_content">

										<%
											sql = "select * from message";

											pstmt = conn.prepareStatement(sql);
											rs = pstmt.executeQuery();

											while (rs.next()) {
												String id = rs.getString("id");
										%>
										<div class="leave_mes">
											<p class="mes_info">
												<span class="reply"><a href="#"></a> </span><span>留言人：<%=rs.getString("appuser")%></span><span>时间：<%=rs.getString("date")%></span>
											</p>
											<div class="mes_con">
												<%=rs.getString("msg")%>
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

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!----------------内容区结束-------------------->
				<!---------------页脚开始---------------->
				<div class="bottom">
					<p>
						<a style="color:white">佛山科学技术学院</a>
					</p>
				</div>
				<!---------------页脚结束---------------->
			</div>
		</div>
		<script>
<!--
var speed=10;
var tab=document.getElementById("Solutionsdemo");
var tab1=document.getElementById("Solutionsdemo1");
var tab2=document.getElementById("Solutionsdemo2");
tab2.innerHTML=tab1.innerHTML;
function Marquee(){
if(tab2.offsetWidth-tab.scrollLeft<=0)
tab.scrollLeft-=tab1.offsetWidth
else{
tab.scrollLeft++;
}
}
var MyMar=setInterval(Marquee,speed);
tab.onmouseover=function() {clearInterval(MyMar)};
tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
-->
									</script>
	</body>
</html>
