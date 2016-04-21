package com.springproject.eshop.domain;

import java.util.Base64;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

@Entity
public class Image {

	@Id
	@GeneratedValue
	private long imageId;
	@Lob
	private byte[] image;
	@ManyToOne
	@JoinColumn(name="productId")
	private Product product;
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	public long getImageId() {
		return imageId;
	}
	public void setImageId(long imageId) {
		this.imageId = imageId;
	}
	
	public String getUrl() { 
		if(this.image != null && this.image.length > 0) 
			return "data:image/*;base64," + Base64.getEncoder().encodeToString(this.image);
		return ""; }

}
