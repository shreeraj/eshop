package com.springproject.eshop.model;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Order;
import com.springproject.eshop.repository.OrderRepository;
import com.springproject.eshop.service.IOrderDAO;

@Service
@Transactional(readOnly = false)
public class OrderDAOImpl implements IOrderDAO {

	@Inject
	private OrderRepository repository;
	
	@Override
	public List<Order> findAll() {
		// TODO Auto-generated method stub
		return (List<Order>) repository.findAll();
	}

	@Override
	public Order findById(long orderId) {
		// TODO Auto-generated method stub
		return repository.findOne(orderId);
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		repository.deleteAll();
	}

	@Override
	public void delete(Order order) {
		// TODO Auto-generated method stub
		repository.delete(order);
	}

	@Override
	public void create(Order order) {
		// TODO Auto-generated method stub
		repository.save(order);
	}

	@Override
	public void update(Order order) {
		// TODO Auto-generated method stub
		repository.save(order);
	}

}
