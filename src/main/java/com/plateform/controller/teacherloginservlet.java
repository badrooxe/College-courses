package com.plateform.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class teacherloginservlet
 */
@WebServlet("/teacherloginservlet")
public class teacherloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Connection con=null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession();
	    response.sendRedirect("teacherpage.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
	    String password=request.getParameter("password");
	    HttpSession session= request.getSession();
	    //session.setAttribute("username", username);
	    //response.sendRedirect("teacherservlet.jsp");
        try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/coursescollege?useSSL=false","root","");
			
            PreparedStatement pst = con.prepareStatement("SELECT * FROM `professor` WHERE username_prof=? AND password_prof=?");			
			
			pst.setString(1, username);
			pst.setString(2, password);
			ResultSet rs=pst.executeQuery();
			 
			 if(rs.next()) {
				 
				 System.out.print("yesss");
				 session.setAttribute("isLogin",true);
				 session.setAttribute("username", rs.getString("username_prof"));
				 session.setAttribute("id", rs.getString("id_professor"));
				 response.sendRedirect("teacherpage.jsp");	
				 
				 
			 }else {
				 response.sendRedirect("teacherlogin.jsp");
				
			 }
			 		
			
		}catch(Exception e) {
			System.out.print(e);
		}
	}

}
