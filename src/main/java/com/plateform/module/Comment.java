package com.plateform.module;

import java.util.Date;

public class Comment {
	 String ID;
     String title;
     Date date;
     Student student;
     
	

	public Comment(String iD, String title, Date date, Student student) {
		this.ID = iD;
		this.title = title;
		this.date = date;
		this.student = student;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}
	
	
     
     
}

