package com.plateform.module;

import java.util.ArrayList;

public class Teacher extends User{
	
	   String Username_Prof;
	   String Password_Prof;
	   ArrayList<Category> category;
	   
	public Teacher() {
		super();
	}
	
	public Teacher(String iD, String first_Name, String last_Name, String email, String number, String sex, String cIN,
			String picture,String Username_Prof, String Password_Prof) {
		
		  super(iD, first_Name, last_Name, email, number, sex, cIN, picture);
		  this.Username_Prof=Username_Prof;
		  this.Password_Prof=Password_Prof;
		  
	}
	
	
	public String getUsername_Prof() {
		return Username_Prof;
	}
	
	public void setUsername_Prof(String username_Prof) {
		Username_Prof = username_Prof;
	}
	
	public String getPassword_Prof() {
		return Password_Prof;
	}
	
	public void setPassword_Prof(String password_Prof) {
		Password_Prof = password_Prof;
	}

	public ArrayList<Category> getCategory() {
		return category;
	}

	   
}

