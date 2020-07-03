package com.biyeseng.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.biyeseng.db.DBManager;

/**
 * 添加留言
 * @author win7
 *
 */
public class AddMsgAction extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddMsgAction() {
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
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		DBManager dbm = new DBManager();
		String msg=request.getParameter("msg");
		if(msg!=null){
			msg=dbm.TextToHtml(msg);
		}
		String date=new Date().toLocaleString();
		Object user=request.getSession().getAttribute("user");
		
		String appuser="";
		if(user!=null && appuser.toString()!=null){
			appuser=(String) user;
		}
		
		String type=request.getParameter("type");		
		String sql = "insert into message(msg,appuser,date,reply)  values('"+msg+"','"+appuser+"','"+date+"','')";
		Statement stat = null;
		Connection conn=null;
		try {
			conn=dbm.getConnection();
			stat = conn.createStatement();
			System.out.println(sql);
			stat.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(stat!=null)
					stat.close();
				if(conn!=null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(type!=null && type.toString()!=null&&type.equals("front")){
			response.sendRedirect("message.jsp");
		}else{
			response.sendRedirect("admin/news/list.jsp");
		}
		
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}
	
 


}
