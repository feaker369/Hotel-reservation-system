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
		<title>酒店查看</title>

		<link href="css/domes.css" rel="stylesheet" type="text/css" />
		<link href="css/style.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="js/tab.js">
</script>

		<script type="text/javascript">
var qcondition = "";
function show() {

}
</script>

	</head>

	<body style="background:url(upload/newbg.jpg)">

		<div class="page">
			<div class="page_con">
				<jsp:include flush="true" page="/inc/top.jsp"></jsp:include>
				<link rel="stylesheet" rev="stylesheet"
					href="jcss/hotelslist_2014.css" type="text/css">
					<!----------------内容区开始-------------------->
				<div class="sub_main">
					<div class="sub_maincon">
						<div class="sub_mainbox clearfix">
							<div class="m_title2">
								<h3>
									酒店查看
								</h3>
							</div>
							<div class="article_listbox">
								<%
									//////////////////////////
								%>
								<div class="search_condition fix" id="pageSearchBox">
									<br />
									<form action='jiudian.jsp' method='post' id="line_domes">
									<div class="search_select fix">
											<span class="type_title">名称</span>
											<div class="cityInputWrap2 fix">

												<div class="qcbox qcity">
													<input type="text" class="textbox flightinput" id="qdizhi"
														name="qdname" />
												</div>
											</div>

										</div>

										<div class="search_select fix">
											<span class="type_title">位置</span>
											<div class="cityInputWrap2 fix">

												<div class="qcbox qcity">
													<input type="text" class="textbox flightinput" id="qdizhi"
														name="qdizhi" />
												</div>
											</div>

										</div>

										<div class="search_select fix">
											<span class="type_title">房价</span>
											<span class="wt_115"><input type="radio" name="price"
													id="qunery_line" checked="checked" value="不限">
												<label for="qunery_line">
													不限
												</label> </span>
											<span class="wt_115"><input type="radio" name="price"
													id="qunery_line" value="150">
												<label for="qunery_line">
													150以下
												</label> </span>
											<span class="wt_115"><input type="radio" name="price"
													id="qunery_line" value="150-300">
													<label for="qunery_line">
														150-300元
													</label>
											</span>
											<span class="wt_115"><input type="radio" name="price"
													id="qunery_line" value="301-450">
													<label for="qunery_line">
														301-450元
													</label>
											</span>
											<span class="wt_115"><input type="radio" name="price"
													id="qunery_line" value="451-600">
													<label for="qunery_line">
														451-600元
													</label>
											</span>
											<span class="wt_115"><input type="radio" name="price"
													id="qunery_line" value="600+">
													<label for="qunery_line">
														600元以上
													</label>
											</span>

										</div>

										<div class="search_select fix">
											<span class="type_title">人数</span>
											<span class="wt_115"><input type="radio" name="ren"
													id="qunery_line" checked="checked" value="不限">
													<label for="qunery_line">
														不限
													</label>
											</span>
											<span class="wt_115"><input type="radio" name="ren"
													id="qunery_line" value="1">
													<label for="qunery_line">
														1人
													</label>
											</span>
											<span class="wt_115"><input type="radio" name="ren"
													id="qunery_line" value="2">
													<label for="qunery_line">
														2人
													</label>
											</span>
											<span class="wt_115"><input type="radio" name="ren"
													id="qunery_line" value="3">
													<label for="qunery_line">
														3人
													</label>
											</span>
											<span class="wt_115"><input type="radio" name="ren"
													id="qunery_line" value="4">
													<label for="qunery_line">
														4人
													</label>
											</span>
											<span class="wt_115"><input type="radio" name="ren"
													id="qunery_line" value="4+">
													<label for="qunery_line">
														4人以上
													</label>
											</span>

										</div>

										<div class="search_select fix">
											<span class="type_title">星级</span>
											<span class="wt_115"><input type="radio" name="style"
													id="qunery_line" checked="checked" value="不限">
													<label for="qunery_line">
														不限
													</label>
											</span>

											<span class="wt_115"><input type="radio" name="style"
													id="qunery_line" value="经济/客栈">
													<label for="qunery_line">
														经济/客栈
													</label>
											</span>
											<span class="wt_115"><input type="radio" name="style"
													id="qunery_line" value="三星/舒适">
													<label for="qunery_line">
														三星/舒适
													</label>
											</span>
											<span class="wt_115"><input type="radio" name="style"
													id="qunery_line" value="四星/高档">
													<label for="qunery_line">
														四星/高档
													</label>
											</span>
											<span class="wt_115"><input type="radio" name="style"
													id="qunery_line" value="五星/豪华">
													<label for="qunery_line">
														五星/豪华
													</label>
											</span>
											<span class="wt_115"><input type="radio" name="style"
													id="qunery_line" value="公寓">
													<label for="qunery_line">
														公寓
													</label>
											</span>

										</div>


										<div class="ft_line fix">
											<span class="city"></span>
											<div class="cityInputWrap2 fix">


												<div class="bt_search">
													<button title="搜索" type="submit" class="searchButton">
														<span>搜 索</span>
													</button>
												</div>
												<!--bt_search-->
											</div>
										</div>
										<!--.ft_line-->
									</form>




								</div>
								<!--search_conditon-->
								<br />
								<hr />
								<br />



								<div class="listMain" id="contentId">



									<div id="hotelList">

										<%
										    String qdname = request.getParameter("qdname");
											String qdizhi = request.getParameter("qdizhi");
											String price = request.getParameter("price");
											String style = request.getParameter("style");
											String ren = request.getParameter("ren");
											System.out.println("qdname: " + qdname);
											System.out.println("qdizhi: " + qdizhi);
											System.out.println("price: " + price);
											System.out.println("style: " + style);
											System.out.println("ren: " + ren);

											DBManager dbm = new DBManager();
											Connection conn = dbm.getConnection();
											String queryName = request.getParameter("queryName");
											String sql = "select distinct j.name as name,j.id as id,j.pic as pic,j.dizhi as dizhi,j.tel as tel,j.style as style from jiudian j,kefang k where j.id=k.jid  ";
											
											if (qdizhi != null && qdizhi.trim().length()>0) {
											    sql=sql+" and dizhi like '%"+qdizhi+"%'";
											}
											
											
											if (qdname != null && qdname.trim().length()>0) {
											    sql=sql+" and j.name like '%"+qdname+"%'";
											}
											
											
											if (style != null &&!style.equals("不限")) {
											    sql=sql+" and style =  '"+style+"'";
											}

											if (price != null && price.equals("150")) {
												sql = sql + " and price < '" + price + "'";
											}
											if (price != null && price.equals("150-300")) {
												sql = sql + " and price <= 300 and price>=150";
											}
											if (price != null && price.equals("301-450")) {
												sql = sql + " and price <= 450 and price>=301";
											}
											if (price != null && price.equals("451-600")) {
												sql = sql + " and price <= 600 and price>=451";
											}
											if (price != null && price.equals("600+")) {
												sql = sql + " and price>600";
											}

											if (ren != null && ren.equals("1")) {
												sql = sql + " and ren='1人'";
											}
											if (ren != null && ren.equals("2")) {
												sql = sql + " and ren='2人'";
											}
											if (ren != null && ren.equals("3")) {
												sql = sql + " and ren='3人'";
											}
											if (ren != null && ren.equals("4")) {
												sql = sql + " and ren='4人'";
											}
											if (ren != null && ren.equals("4+")) {
												sql = sql + " and ren='4人以上'";
											}
											
											System.out.println(sql);

											PreparedStatement pstmt = conn.prepareStatement(sql);
											ResultSet rs = pstmt.executeQuery();

											while (rs.next()) {
												String id = rs.getString("id");
										%>

										<!-- ------------bbb--------- -->
										<a id="hash90688296" name="hash90688296"></a>
										<div class="newHotelInfo clx" id="hotel90688296"
											hotelid="90688296" favorcount="12">
											<div class="t1">
												<div class="newHotelIcon">


												</div>
												<a href="jiu_detail.jsp?id=<%=rs.getInt("id") %>"
													mth="clickDot"> <img src="<%=rs.getString("pic")%>"
														alt="<%=rs.getString("name")%>"> </a>
											</div>

											<dl class="t2">
												<dt>
													<a class="name" mth="clickDot" target="_blank"
														href="jiu_detail.jsp?id=<%=rs.getInt("id") %>"
														title="<%=rs.getString("name")%>"> <%=rs.getString("name")%></a>



												</dt>
												<dd class="t2_addr_hide">
													<span title="<%=rs.getString("name")%>" class="pl5"><%=rs.getString("dizhi")%></span>
													<br />
													<span title="<%=rs.getString("name")%>" class="pl5">电话：<%=rs.getString("tel")%></span>

												</dd>

												<dd class="new_order" id="new_order90688296">

												</dd>
											</dl>

											<div class="t3 new_dp">

												<br>
												<div class="t6 new_service">
													星级:
													<%=rs.getString("style")%>
												</div>



											</div>
											<div class="clear">
											</div>

											<div class="RpList mvtRp01" style="display: block;" stu="two">
												<ul class="roomTypes">
													<%
														Connection conn1 = dbm.getConnection();
															String sqlq = "select * from kefang where jid=" + id;

															if (price != null && price.equals("150")) {
																sql = sql + " and price < '" + price + "'";
															}
															if (price != null && price.equals("150-300")) {
																sqlq = sqlq + " and price <= 300 and price>=150";
															}
															if (price != null && price.equals("301-450")) {
																sqlq = sqlq + " and price <= 450 and price>=301";
															}
															if (price != null && price.equals("451-600")) {
																sqlq = sqlq + " and price <= 600 and price>=451";
															}
															if (price != null && price.equals("600+")) {
																sqlq = sqlq + " and price>600";
															}

															if (ren != null && ren.equals("1")) {
																sqlq = sqlq + " and ren='1人'";
															}
															if (ren != null && ren.equals("2")) {
																sqlq = sqlq + " and ren='2人'";
															}
															if (ren != null && ren.equals("3")) {
																sqlq = sqlq + " and ren='3人'";
															}
															if (ren != null && ren.equals("4")) {
																sqlq = sqlq + " and ren='4人'";
															}
															if (ren != null && ren.equals("4+")) {
																sqlq = sqlq + " and ren='4人以上'";
															}

															PreparedStatement pstmt1 = conn.prepareStatement(sqlq);
															ResultSet rs1 = pstmt1.executeQuery();
															while (rs1.next()) {
													%>

													<li class="rbox" roomid="0002" sroomid="0002"
														mhotelid="90688296" rpid="779759" sid="94538"
														producttype="19" shotelid="90688296" isgroup="False"
														style="">
														<p class="rw1">

															
																<%=rs1.getString("name")%>



														</p>
														<p class="rw2">
															<%=rs1.getString("chuang")%>
														</p>
														<p class="rw9">
															<%=rs1.getString("type")%>
														</p>
														<p class="rw10" mth="cancel" canceltype="2">
															<%=rs1.getString("ren")%>
														</p>
														<p class="rw4">

															<span class="price" mth="avgPrice"><dfn>
																	¥
																</dfn><%=rs1.getString("price")%></span>


														</p>
														 
														<p class="rw9">
														   <%
														     if(rs1.getString("state").equals("订满")){
														    %>
														    <b><font color="red">订满</font></b>
														    
														    <% 
														     }else{
														    %>
														    <a href="yuding.jsp?id=<%=rs1.getInt("id") %>"><b>预订</b></a>
														    <%} %>
															
														</p>

													</li>

													<%
														}
															if (rs1 != null)
																rs1.close();
															if (pstmt1 != null)
																pstmt1.close();
															if (conn1 != null)
																conn1.close();
													%>



												</ul>
											</div>
											<!-- div class="rpMore new_rpMore" hotelid="90688296"
							style="display: block;">

							<a class="closed" href="javascript:void(0);" rel="nofollow"
								mth="ShowAll" count="20"> 查看全部房型</a>

						</div -->
										</div>

										<!-- ----------eeeee--------- -->
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
									<%
										/////////
									%>

								</div>
								<div class="message_con">

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
