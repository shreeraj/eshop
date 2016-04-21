package com.springproject.eshop.service;

import java.util.List;

import com.springproject.eshop.domain.Stock;

public interface IStockDAO {
	public List<Stock> findAll();
	public Stock findById(long stockId);
	public void deleteAll();
	public void delete(Stock stock);
	public void create(Stock stock);
	public void update(Stock stock);
}
