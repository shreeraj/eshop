package com.springproject.eshop.service;

import java.util.List;

import com.springproject.eshop.domain.OrderLine;

public interface IOrderLineDAO {

	public List<OrderLine> findAll();
	public OrderLine findById(long id);
	public void deleteAll();
	public void delete(OrderLine orderLine);
	public void create(OrderLine orderLine);
	public void update(OrderLine orderLine);
	public List<OrderLine> findByOrderId(long orderId);
}
