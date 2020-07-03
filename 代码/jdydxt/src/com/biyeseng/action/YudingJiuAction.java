package com.biyeseng.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.biyeseng.db.DBManager;
import java.sql.*;
import java.util.Date;

/**
 * 修改新闻
 * 
 * @author win7
 * 
 */
public class YudingJiuAction extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public YudingJiuAction() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name=request.getParameter("name");
		String fang=request.getParameter("fang");
		String count=request.getParameter("count");
		String bdate=request.getParameter("bdate");
		String edate=request.getParameter("edate");
		String tel=request.getParameter("tel");
		String fangkuan=request.getParameter("fangkuan");
		String dingjin=request.getParameter("dingjin");
		String ism=request.getParameter("ism");
		String mtel=request.getParameter("mtel");

		String sql = "insert into yuding(name,fang,count,bdate,edate,tel,fangkuan,dingjin,ism,mtel) values('"+name+"','"+fang+"','"+count+"','"+bdate+"','"+edate+"','"+tel+"','"+fangkuan+"','"+dingjin+"','"+ism+"','"+mtel+"')";
		System.out.println(sql);

		Statement stat = null;
		Connection conn = null;
		DBManager dbm = new DBManager();
		try {
			conn = dbm.getConnection();
			stat = conn.createStatement();
			stat.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (stat != null)
					stat.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		out
				.println("<script>alert('预订酒店成功，客服人员会尽快和您联系谢谢！');window.location.href='jiudian.jsp'</script>");
		out.flush();
		out.close();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
