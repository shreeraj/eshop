package com.springproject.eshop.domain;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class SiteSetting {
	@Id
	@GeneratedValue
	private long siteId;
	@Enumerated(EnumType.STRING)
	private SiteStatus siteStatus;
	private String email;
	private String address;
	private String facebook;
	private String twitter;
	private String gPlus;
	private String youtube;
	private String phoneNo;
	public long getSiteId() {
		return siteId;
	}
	public void setSiteId(long siteId) {
		this.siteId = siteId;
	}
	public SiteStatus getSiteStatus() {
		return siteStatus;
	}
	public void setSiteStatus(SiteStatus siteStatus) {
		this.siteStatus = siteStatus;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getTwitter() {
		return twitter;
	}
	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}
	public String getgPlus() {
		return gPlus;
	}
	public void setgPlus(String gPlus) {
		this.gPlus = gPlus;
	}
	public String getYoutube() {
		return youtube;
	}
	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
}
