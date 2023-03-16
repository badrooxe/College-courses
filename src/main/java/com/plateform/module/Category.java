package com.plateform.module;

public class Category {
	String ID;
    String Type;
    String branche;
    String Semestre;
    String file;
    String title;
    String name;
    
	public Category(String iD, String type, String branche, String semestre, String file, String title, String name) {
		this.ID = iD;
		this.Type = type;
		this.branche = branche;
		this.Semestre = semestre;
		this.file = file;
		this.title = title;
		this.name = name;
	}

	public String getType() {
		return Type;
	}

	public void setType(String type) {
		Type = type;
	}

	public String getBranche() {
		return branche;
	}

	public void setBranche(String branche) {
		this.branche = branche;
	}

	public String getSemestre() {
		return Semestre;
	}

	public void setSemestre(String semestre) {
		Semestre = semestre;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
    
	
    
}