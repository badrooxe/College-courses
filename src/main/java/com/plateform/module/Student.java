package com.plateform.module;

public class Student extends User{
	   String CNE;
	   String branch;
	   
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Student(String iD, String first_Name, String last_Name, String email, String number, String sex, String cIN,String picture) {
		super(iD, first_Name, last_Name, email, number, sex, cIN, picture);
		// TODO Auto-generated constructor stub
	}

	public String getCNE() {
		return CNE;
	}

	public void setCNE(String cNE) {
		CNE = cNE;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	   
	   
	   
	}