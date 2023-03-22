package com.plateform.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class teacherservlet
 */
@WebServlet("/teacherservlet")
public class teacherservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Connection con=null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     	HttpSession session= request.getSession();
	    
	    }
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession();
		String utitle= request.getParameter("atitle");
		String utype=request.getParameter("atype");
		String umodule=request.getParameter("amodule");
		String ubranche=request.getParameter("abranche");
		String usemester=request.getParameter("asemester");
		String uprof= session.getAttribute("username").toString();
     	int id= Integer.parseInt(session.getAttribute("id").toString());
		try {
			
			
			Part file = request.getPart("afile");
			
			
			//String filename= file.getSubmittedFileName();
			Timestamp date = new Timestamp(System.currentTimeMillis());
			InputStream inputStream =null;
			
			if (file != null) {
			long filesize = file.getSize();
			String fileContent = file.getContentType();
			inputStream = file.getInputStream();
			}
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/coursescollege?useSSL=false","root","");
			PreparedStatement pst=con.prepareStatement("INSERT INTO `category`(`type_of`, `name_cours`, `title_cours`, `doc_file`, `filiere`, `semester`, `id_professor`, `date_info`) VALUES (?,?,?,?,?,?,?,?)");
			pst.setString(1, utype);
			 pst.setString(2, umodule);
			 pst.setString(3, utitle);
			 pst.setString(4, "jndekef");//document name
			 pst.setString(5, ubranche);
			 pst.setString(6, usemester);
			 pst.setInt(7, id); 
			 pst.setTimestamp(8, date);//date
			 pst.executeUpdate();
			System.out.println(utitle);
			System.out.println(utype);
			System.out.println(umodule);
			System.out.println(ubranche);
			System.out.println(usemester);
			response.sendRedirect("teacherpage.jsp");
			
			
			
		    } catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
	    }
			
	}
}
