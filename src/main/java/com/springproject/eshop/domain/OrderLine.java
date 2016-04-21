package com.springproject.eshop.domain;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orderLine") 
public class OrderLine {
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	public OrderLine()
	{
		
	}
	public OrderLine(int quantity,  Product product, Order order) {
		this.quantity = quantity;
		this.product = product;
		this.price = product.getPrice();
		this.subTotal = quantity*this.price ;
		this.order = order;
	}
	private int quantity;
	private double price;
	private double subTotal;
	@OneToOne
	//@JoinColumn(name="productId")
	private Product product;
	@ManyToOne
	private Order order;
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getSubTotal() {
		return subTotal;
	}
	public void setSubTotal(double subTotal) {
		this.subTotal = subTotal;
	}
	
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice() {
		this.price = product.getPrice();
	}
	
	
}
