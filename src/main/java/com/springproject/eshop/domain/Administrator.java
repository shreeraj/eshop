package com.springproject.eshop.domain;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

import org.hibernate.annotations.Type;

@Entity
@PrimaryKeyJoinColumn(name="ADMIN_ID")
public class Administrator extends Person {

	private String userName;
	
	//@Type(type="encryptedString")
	private String password;
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
