<%@ page language="java" import="java.util.*,com.biyeseng.db.*,java.sql.*" pageEncoding="UTF-8"%>
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
		<title>用户注册</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/tab.js">
</script>

		<script type="text/javascript">
function phonecheck(s) {
       var names=document.getElementById("names").value;
     
    if(names==""){
      alert("请输入姓名");
		return false;
    }
    
    var pwds=document.getElementById("pwds").value;
    
    if(pwds==""){
      alert("请输入密码");
		return false;
    }
	var str = s;
	
    if(!(/^1[3|5][0-9]\d{4,8}$/.test(s))){ 

       alert("您的电话输入不正确");
        return false;
    }
    else
    {
   
    return true;
    }
    }
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


							<div class="m_border">
								<div class="m_title2">
									<h3>
										修改
									</h3>
								</div>
								<div class="m_content message_con">
									<form id="form1" name="form1" method="post"
										action="ModUserFrAction"   onSubmit="return phonecheck(document.all.tel.value)">
										<p class="tips">
											<b>注：</b>带
											<span class="red">*</span>号为必填项
										</p>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<%
										   Object user= session.getAttribute("user");
										   DBManager dbm = new DBManager();
										Connection conn = dbm.getConnection();
										String queryName = request.getParameter("queryName");
										String sql = "select * from userinfo where tel='"+user+"'";
										 
										PreparedStatement pstmt = conn.prepareStatement(sql);
										ResultSet rs = pstmt.executeQuery();

										if (rs.next()) {
											String id = rs.getString("id");
										 %>
											<tr>
												<td class="left_name">
													姓名：
												</td>
												<td>
													<input type="text" name="name" id="names"
														class="text_input text150"  value="<%=rs.getString("name") %>"/>
													<span class="red">*</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											<tr>
												<td class="left_name">
													创建密码：
												</td>
												<td>
													<input type="password" name="pwd" id="pwds" class="text_input text150" value="<%=rs.getString("pwd") %>"/>
													<span class="red">*</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>



											<tr>
												<td class="left_name">
													性别：
												</td>
												<td>
													<span><input type="radio"
														   name="sex" value="男" <%=rs.getString("sex").equals("男")?"checked":"" %>/>男</span><span><input
															type="radio" name="sex"  id="radio" value="女" <%=rs.getString("sex").equals("女")?"checked":"" %>/>女</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>

											<tr>
												<td class="left_name">
													年龄：
												</td>
												<td>
													<input type="text" name="age" id="age"
														class="text_input text150"  value="<%=rs.getString("age") %>"/>

												</td>
											</tr>

											<tr>
												<td class="left_name">
													电话：
												</td>
												<td>
													<%=rs.getString("tel") %>
													<input type="hidden" name="tel" id="tel"
														class="text_input text150"  value="<%=rs.getString("tel") %>"/>

												</td>
											</tr>
											
											<tr>
												<td class="left_name">
													地址：
												</td>
												<td>
													<input type="text" name="address" id="address"
														class="text_input text150"  value="<%=rs.getString("address") %>"/>

												</td>
											</tr>
											
											<tr>
												<td class="left_name">
													邮箱：
												</td>
												<td>
													<input type="text" name="email" id="email"
														class="text_input text150"  value="<%=rs.getString("email") %>"/>

												</td>
											</tr>


											

											<tr>
												<td>
													&nbsp;
												</td>
												<td>
													<input type="image" name="button" id="button"
														src="images/ok.gif" />
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
										</table>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!----------------内容区结束-------------------->
				<!---------------页脚开始---------------->
				</div>
				<!---------------页脚结束---------------->
			</div>
		</div>
	</body>
</html>
