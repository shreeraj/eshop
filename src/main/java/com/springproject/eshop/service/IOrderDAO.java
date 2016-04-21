package com.springproject.eshop.service;

import java.util.List;

import com.springproject.eshop.domain.Order;


public interface IOrderDAO {

	public List<Order> findAll();
	public Order findById(long orderId);
	public void deleteAll();
	public void delete(Order order);
	public void create(Order order);
	public void update(Order order);
}
