package com.try1.bean;

import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Reportus implements Serializable{
	private static final long serialVersionUID = 74458L;
	private int id;
	private String emailid;
	private String phoneno;
	private String title;
	private String description;
	
	
	
	private List<MultipartFile> images;
	public List<MultipartFile> getImages() {
		return images;
	}
	public void setImages(List<MultipartFile> images) {
		this.images = images;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
