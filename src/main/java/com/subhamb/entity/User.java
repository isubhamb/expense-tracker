package com.subhamb.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_details")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name="full_name")
	private String fullName;
	private String emailId;
	private String password;
	private String about;
	public User() {
		super();
	}
	public User( String fullName, String emailId, String password, String about) {
		super();
		this.fullName = fullName;
		this.emailId = emailId;
		this.password = password;
		this.about = about;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", fullName=" + fullName + ", emailId=" + emailId + ", password=" + password
				+ ", about=" + about + "]";
	}
	
	
	
}
