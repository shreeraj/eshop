package com.springproject.eshop.model;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Stock;
import com.springproject.eshop.repository.StockRepository;
import com.springproject.eshop.service.IStockDAO;

@Service
@Transactional(readOnly = true)
public class StockDAOImpl implements IStockDAO {
	@Inject
	private StockRepository repository;

	@Override
	public List<Stock> findAll() {
		// TODO Auto-generated method stub
		return (List<Stock>) repository.findAll();
	}

	@Override
	public Stock findById(long stockId) {
		// TODO Auto-generated method stub
		return repository.findOne(stockId);
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		repository.deleteAll();
	}

	@Override
	public void delete(Stock stock) {
		// TODO Auto-generated method stub
		repository.delete(stock);
	}

	@Override
	public void create(Stock stock) {
		// TODO Auto-generated method stub
		repository.save(stock);
	}

	@Override
	public void update(Stock stock) {
		// TODO Auto-generated method stub
		repository.save(stock);
	}
	
	
}
