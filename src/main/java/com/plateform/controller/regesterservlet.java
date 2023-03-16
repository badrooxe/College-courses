package com.plateform.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/regesterservlet")
public class regesterservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con=null;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/coursescollege?useSSL=false","root","");
			
			String first_name=request.getParameter("UFname");
			String last_name=request.getParameter("ULname");
			String CNI=request.getParameter("Ucni");
			String CNE=request.getParameter("Ucne");
			String sex=request.getParameter("Usex");
			String bronch=request.getParameter("Ubranch");
			String gmail=request.getParameter("Uemail");
			String phone=request.getParameter("Uphone");
			
			 PreparedStatement pst=con.prepareStatement("INSERT INTO `student`(`CNE`, `first_name`, `last_name`, `email`, `number_phone`, `sex`, `CIN`, `Filiere`) VALUES (?,?,?,?,?,?,?,?)");
			 pst.setString(1, CNE);
			 pst.setString(2, first_name);
			 pst.setString(3, last_name);
			 pst.setString(4, gmail);
			 pst.setString(5, phone);
			 pst.setString(6, sex);
			 pst.setString(7, CNI);
			 pst.setString(8, bronch);
			 pst.executeUpdate();
			 
			response.sendRedirect("login.jsp");
			 
		}catch(Exception e) {
			System.out.print(e);
		}
		
	}

}
