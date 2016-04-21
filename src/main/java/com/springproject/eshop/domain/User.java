package com.springproject.eshop.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;

import org.hibernate.annotations.Type;

@Entity
@PrimaryKeyJoinColumn(name="USER_ID")
@SecondaryTable(name="Address") 
public class User extends Person{

	private String userName;
	
	//@Type(type="encryptedString")
	private String password;
	private String phone;
	
	@Column(table="Address")
	private String street;
	@Column(table="Address")
	private String zip;
	@Column(table="Address")
	private String city;
	@Column(table="Address")
	private String state;
	@Column(table="Address")
	private String country;
	
	
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	
}
