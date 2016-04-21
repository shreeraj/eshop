package com.springproject.eshop.model;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.OrderLine;
import com.springproject.eshop.repository.OrderLineRepository;
import com.springproject.eshop.service.IOrderLineDAO;

@Service
@Transactional(readOnly = false)
public class OrderLineImpl implements IOrderLineDAO{

	@Inject
	private OrderLineRepository repository;
	
	@Override
	public List<OrderLine> findAll() {
		// TODO Auto-generated method stub
		return (List<OrderLine>) repository.findAll();
	}

	@Override
	public OrderLine findById(long id) {
		// TODO Auto-generated method stub
		return repository.findOne(id);
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		repository.deleteAll();
	}

	@Override
	public void delete(OrderLine orderLine) {
		// TODO Auto-generated method stub
		repository.delete(orderLine);
	}

	@Override
	public void create(OrderLine orderLine) {
		// TODO Auto-generated method stub
		repository.save(orderLine);
	}

	@Override
	public void update(OrderLine orderLine) {
		// TODO Auto-generated method stub
		repository.save(orderLine);
	}

	@Override
	public List<OrderLine> findByOrderId(long orderId) {
		// TODO Auto-generated method stub
		return repository.findByOrderId(orderId);
	}

}
