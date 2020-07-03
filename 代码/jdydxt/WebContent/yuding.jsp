<%@ page language="java" import="java.util.*,java.sql.*,com.biyeseng.db.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String id = request.getParameter("id");
	if(session.getAttribute("user")!=null){
	  response.sendRedirect("myuding.jsp?id="+id);
	}		
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>房价预订</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript"
			src="<%=path%>/My97DatePicker/WdatePicker.js">
		</script>
		<script type="text/javascript" src="js/tab.js">
</script>

		<script type="text/javascript">
function calc() {
	var bdate = document.getElementById("bdate").value;
	var edate = document.getElementById("edate").value;
	var count = document.getElementById("count").value;
	var price = document.getElementById("price").value;
	
	var days="";

	if (bdate.length > 0 && edate.length > 0) {

		var startTime = new Date(Date.parse(bdate.replace(/-/g, "/")))
				.getTime();
		var endTime = new Date(Date.parse(edate.replace(/-/g, "/"))).getTime();
		var dates = Math.abs((startTime - endTime)) / (1000 * 60 * 60 * 24);
		//alert(date3/(24*3600*1000));
		days = Math.ceil(dates);
		 
	}
	
	if(days>0){
	  var jine=count*days*price;
	   document.getElementById("fangkuan").value=jine
	  
	  document.getElementById("dingjin").value=Math.ceil(jine*0.1);
	 
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
										房间预订
									</h3>
								</div>
								<div class="m_content message_con">
									<form id="form1" name="form1" method="post" action="YudingJiuAction">
										<p class="tips">

										</p>
										<%
											DBManager dbm = new DBManager();
											Connection conn = dbm.getConnection();
											
											String sql = "select * from kefang where id='" + id + "'";
											PreparedStatement stat = conn.prepareStatement(sql);
											ResultSet rs = stat.executeQuery();
											rs.next();
										%>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td class="left_name">
													房间价格：
												</td>
												<td>
													<%=rs.getString("price")%>元
													<input type="hidden" name="fang"  id="fang"  value="<%=id%>"/>
													
													<input type="hidden" name="price"  id="price"  value="<%=rs.getString("price")%>"/>


												</td>
											</tr>
											<tr>
												<td class="left_name">
													房间数量：
												</td>
												<td>
													<select onchange="calc()" id="count" name="count">
														<option value="1">
															1
														</option>
														<option value="2">
															2
														</option>
														<option value="3">
															3
														</option>
														<option value="4">
															4
														</option>
														<option value="5">
															5
														</option>

													</select>
													间

												</td>
											</tr>
											<tr>
												<td class="left_name">
													入住人姓名：
												</td>
												<td>
													
													<input type="text" name="name" id="name"
														class="text_input text150" />
													(请填写实际入住人姓名，每个房间只需填1位)
													<span class="red">*</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											<tr>
												<td class="left_name">
													开始时间：
												</td>
												<td>
													<input name="bdate" type="text" id="bdate"
														onchange="calc()" class="Wdate"
														onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})">
													<span class="red">*</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											<tr>
												<td class="left_name">
													离开时间：
												</td>
												<td>
													<input name="edate" type="text" id="edate"
														onchange="calc()" class="Wdate"
														onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',readOnly:true})">
													<span class="red">*</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											<tr>
												<td class="left_name">
													总房款：
												</td>
												<td>
												    
													<input type="text" name="fangkuan" readonly="readonly" id="fangkuan" value=""/>
													
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											<tr>
												<td class="left_name">
													支付定金：
												</td>
												<td>
												    
													<input type="text" name="dingjin" readonly="readonly" id="dingjin" value=""/>
													<span class="red">总房款的10%</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>



											<tr>
												<td class="left_name">
													联系手机：
												</td>
												<td>
													<input type="text" name="tel" id="tel"
														class="text_input text150" />
													<input type="hidden" name="ism" id="ism"
														value="false"/>	
													<input type="hidden" name="mtel" id="mtel"
														value=""/>		

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
