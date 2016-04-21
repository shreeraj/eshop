package com.springproject.eshop.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Order;

@Component
@Transactional(readOnly = true) 
public interface OrderRepository extends CrudRepository<Order, Long> {

//	public List<Order> findByOrderDate(Date date);
}
