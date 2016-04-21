package com.springproject.eshop.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "orderTable") 
public class Order {

	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private long orderId;
	public Order()
	{
		
	}
	public Order(Date orderDate, double discount, User user, Status status) {
		this.orderDate = orderDate;
		this.discount = discount;
		this.user = user;
		this.status = status;
	}
	
	@Temporal(TemporalType.DATE)
	private Date orderDate;
	private int totalQty;
	private double totalAmount;
	private double discount;
	private double nettAmount;
	@ManyToOne
	private User user;
	@Enumerated(EnumType.STRING)
	private Status status;
	@OneToMany(mappedBy="order",fetch=FetchType.EAGER)
	private List<OrderLine> orderLines;
	
	public long getOrderId() {
		return orderId;
	}
	public void setOrderId(long orderId) {
		this.orderId = orderId;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getTotalQty() {
		int qty=0;
		for (OrderLine ol : this.orderLines)
		{
			qty+=ol.getQuantity();
		}
		return qty;
	}
	public void setTotalQty(int totalQty) {
		this.totalQty = totalQty;
	}
	public double getTotalAmount() {
		int amount=0;
		for (OrderLine ol : this.orderLines)
		{
			amount+=ol.getSubTotal();
		}
		return amount;
	}
	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	public List<OrderLine> getOrderLines() {
		return orderLines;
	}
	public void setOrderLines(List<OrderLine> orderLines) {
		this.orderLines = orderLines;
	}
	
	public void addOrderLines(OrderLine ol){
		if (this.orderLines == null){
			this.orderLines = new ArrayList<OrderLine>();
		}
		this.orderLines.add(ol);
		this.totalQty += ol.getQuantity();
		this.totalAmount+=ol.getSubTotal();
		this.nettAmount = this.totalAmount-this.discount;
		
	}
	public double getNettAmount() {
		return this.totalAmount-this.discount;
	}
	public void setNettAmount(double nettAmount) {
		this.nettAmount = nettAmount;
	}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderDate=" + orderDate + ", totalQty=" + totalQty + ", totalAmount="
				+ totalAmount + ", discount=" + discount + ", nettAmount=" + nettAmount + ", user=" + user + ", status="
				+ status + ", orderLines=" + orderLines + "]";
	}
	
	
}
