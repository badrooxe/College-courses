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


@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Connection con=null;
	 String Semester="S1";
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     	HttpSession session= request.getSession();
		    Semester=request.getParameter("SES");
		    session.setAttribute("semester",Semester);
		    response.sendRedirect("plateform.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		    String cne=request.getParameter("UCNE");
		    String cni=request.getParameter("UCNI");
		     HttpSession session= request.getSession();
		   
		    
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/coursescollege?useSSL=false","root","");
			
			 
			 PreparedStatement pst=con.prepareStatement("SELECT * FROM `student` WHERE CIN='"+cni+"' and CNE='"+cne+"' ;");
			 ResultSet rs=pst.executeQuery();
			 
			 if(rs.next()) {
				 
				 response.sendRedirect("plateform.jsp");
				 System.out.print("yesss");
				 session.setAttribute("bronch",rs.getString("Filiere"));
				 session.setAttribute("ID",rs.getString("id_student"));
				 session.setAttribute("isLogin",true);
				 
				 
			 }else {
				 response.sendRedirect("login.jsp");
				
			 }
			 		
			
		}catch(Exception e) {
			System.out.print(e);
		}
		
	}

}
