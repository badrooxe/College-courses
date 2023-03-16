package com.plateform.module;

public class User {
	String ID;
    String First_Name;
    String Last_Name;
    String Email;
    String Number;
    String Sex;
    String CIN;
    String Picture;
    
    
	public User(String iD, String first_Name, String last_Name, String email, String number, String sex, String cIN,String picture) {
		ID = iD;
		First_Name = first_Name;
		Last_Name = last_Name;
		Email = email;
		Number = number;
		Sex = sex;
		CIN = cIN;
		Picture = picture;
	}
    
	public User() {
		
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getFirst_Name() {
		return First_Name;
	}

	public void setFirst_Name(String first_Name) {
		First_Name = first_Name;
	}

	public String getLast_Name() {
		return Last_Name;
	}

	public void setLast_Name(String last_Name) {
		Last_Name = last_Name;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getNumber() {
		return Number;
	}

	public void setNumber(String number) {
		Number = number;
	}

	public String getSex() {
		return Sex;
	}

	public void setSex(String sex) {
		Sex = sex;
	}

	public String getCIN() {
		return CIN;
	}

	public void setCIN(String cIN) {
		CIN = cIN;
	}

	public String getPicture() {
		return Picture;
	}

	public void setPicture(String picture) {
		Picture = picture;
	}

    
}