

package com.springproject.eshop.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Cascade;

@Entity
public class Product {
	@Id
	@GeneratedValue
	private long productId;
	private String name;
	private String description;
	private double price;
	private int currQty;
	
	@OneToMany(mappedBy="product", cascade=CascadeType.ALL,fetch = FetchType.EAGER)
	//, cascade=CascadeType.ALL
	private List<Image> images;
	
	@OneToMany(mappedBy="product")
	//private int stockId;
	private List<Stock> stock;
	
	@ManyToOne
	@JoinColumn(name="categoryId")
	//private int catId;
	private Category category;
	
	
	public Image getImage(){
		return getImages().get(0);
	}
	
	public List<Stock> getStock() {
		return stock;
	}
	public void setStock(List<Stock> stock) {
		this.stock = stock;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public long getProductId() {
		return productId;
	}
	public void setProductId(long productId) {
		this.productId = productId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getCurrQty() {
		return currQty;
	}
	public void setCurrQty(int currQty) {
		this.currQty = currQty;
	}
	public List<Image> getImages() {
		return images;
	}
	public void addImage(Image image) {
		if(images==null){
			images = new ArrayList<Image>();
			images.add(image);
			return;
		}
		images.add(image);
	}
//	public int getStockId() {
//		return stockId;
//	}
//	public void setStockId(int stockId) {
//		this.stockId = stockId;
//	}
//	public int getCatId() {
//		return catId;
//	}
//	public void setCatId(int catId) {
//		this.catId = catId;
//	}
	
	
}

