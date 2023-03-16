package com.plateform.controller;

import java.io.IOException;
import java.sql.*;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/commentservlet")
public class commentservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
        Connection con=null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Cid=request.getParameter("catID");
		 String comment=request.getParameter("Ucomment");
		 String Sid=request.getParameter("studID");
		 LocalDate dateoftoday = LocalDate.now();

		 try {
			 
			 Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/coursescollege?useSSL=false","root","");
			 
			 if(comment.equals("")){
				 request.setAttribute("commentnull","true");
				 response.sendRedirect("plateform.jsp");
			 }else {
				 PreparedStatement pst=con.prepareStatement("INSERT INTO `comment`( `title`, `id_category`, `id_student`, `date_info`) VALUES (?,?,?,?)");
				 pst.setString(1,comment );
				 pst.setString(2,Cid );
				 pst.setString(3, Sid);
				 pst.setString(4,dateoftoday.toString());
				 pst.executeUpdate();
				 response.sendRedirect("plateform.jsp");
				 
			 }
			 
			 
			 
			 
		 }catch(Exception e) {
			 
		 }

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	}

}
