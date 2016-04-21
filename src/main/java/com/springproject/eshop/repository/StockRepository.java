package com.springproject.eshop.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Stock;

@Component
@Transactional(readOnly = true) 
public interface StockRepository extends CrudRepository<Stock, Long>  {
	//List<Stock> findByStockId(Long stockId);
}
