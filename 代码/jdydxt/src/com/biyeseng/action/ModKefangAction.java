package com.biyeseng.action;	
	
import java.io.IOException;	
import java.io.PrintWriter;	
	
import javax.servlet.ServletException;	
import javax.servlet.http.HttpServlet;	
import javax.servlet.http.HttpServletRequest;	
import javax.servlet.http.HttpServletResponse;	
	
import com.biyeseng.db.DBManager;	
import java.sql.*;	
	
/**	
 * 修改部门	
 * @author win7	
 *	
 */	
public class ModKefangAction extends HttpServlet {	
	
	/**	
	 * Constructor of the object.	
	 */	
	public ModKefangAction() {	
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
		String id = request.getParameter("id");	
		String jid=request.getParameter("jid");
		String name=request.getParameter("name");
		String chuang=request.getParameter("chuang");
		String ren=request.getParameter("ren");
		String price=request.getParameter("price");
		String type=request.getParameter("type");
		String state=request.getParameter("state");
		DBManager dbm = new DBManager();	
		String sql = "update kefang set jid="+jid+",name='"+name+"',chuang='"+chuang+"',ren='"+ren+"',price='"+price+"',type='"+type+"',state='"+state+"' where id="+id;	
		System.out.println(sql);	
	
		Statement stat = null;	
		Connection conn=null;	
		try {	
			conn=dbm.getConnection();	
			stat = conn.createStatement();	
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
		response.sendRedirect("admin/kefang/list.jsp?jid="+jid);	
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
