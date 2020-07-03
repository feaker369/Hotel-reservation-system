package com.biyeseng.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.biyeseng.db.DBManager;

/**
 * 添加新闻
 * 
 * @author win7
 * 
 */
public class AddNewsAction extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddNewsAction() {
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

		DBManager dbm = new DBManager();

		String title = "";
		String info = "";
		String pic = "";
		 
		String date = new Date().toLocaleString();
		Object user = request.getSession().getAttribute("user");

		String appuser = "";
		if (user != null && appuser.toString() != null) {
			appuser = (String) user;
		}

		String dstPath = request.getSession().getServletContext().getRealPath(
				"upload")
				+ "\\";

		// 文件上傳部分
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);

		if (isMultipart == true) {
			try {
				FileItemFactory factory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(factory);

				// 得到所有的表单域，它们目前都被当作FileItem
				List<FileItem> fileItems = upload.parseRequest(request);
				Iterator<FileItem> iter = fileItems.iterator();

				// 依次处理每个表单域
				while (iter.hasNext()) {
					FileItem item = (FileItem) iter.next();

					if (item.isFormField()) {
						// 如果item是正常的表单域
						String names = item.getFieldName();
						String value = item.getString("UTF-8");
						System.out.println("表单域名为:" + names + "表单域值为:" + value);
						if (names.equals("title")) {
							title = value;
						}

						if (names.equals("info")) {
							info = value;
							info = dbm.TextToHtml(info);
						}

					} else {
						// 如果item是文件上传表单域

						// 获得文件名及路径
						String fileName = item.getName();
						if (fileName.trim().length() == 0) {
							continue;
						}
						if (fileName != null) {
							File fullFile = new File(item.getName());

							System.out.println("fullFile::  " + fullFile);
							String fujianFileName = fullFile.getName();
							String newFujianName = new Date().getTime()
									+ fujianFileName.substring(fujianFileName
											.indexOf("."));

							File fileOnServer = new File(dstPath, newFujianName);
							item.write(fileOnServer);

							System.out.println("文件" + fileOnServer.getName()
									+ "上传成功");

							pic = "upload/" + fileOnServer.getName();

						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("the enctype must be multipart/form-data");
		}

		String sql = "insert into news(title,date,info,appuser,pic)  values('"
				+ title + "','" + date + "','" + info + "','" + appuser + "','" + pic + "')";

		Statement stat = null;
		Connection conn = null;
		try {
			conn = dbm.getConnection();
			stat = conn.createStatement();
			System.out.println(sql);
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

		response.sendRedirect("admin/news/list.jsp");

		out.flush();
		out.close();
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
