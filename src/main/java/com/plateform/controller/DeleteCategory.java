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

/**
 * Servlet implementation class DeleteCategory
 */
@WebServlet("/DeleteCategory")
public class DeleteCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection con1=null;
		String id=request.getParameter("id");
		   try {
				
				Class.forName("com.mysql.jdbc.Driver");
				con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/coursescollege?useSSL=false","root","");
				
	           PreparedStatement pst1 = con1.prepareStatement("DELETE FROM category WHERE `category`.`id_category` ='"+id+"';");			
			   int rs1=pst1.executeUpdate();
				response.sendRedirect("teacherpage.jsp");	 		
				
			}catch(Exception e) {
				System.out.print(e);
			}
	}


}
