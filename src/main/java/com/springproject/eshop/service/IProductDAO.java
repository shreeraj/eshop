package com.springproject.eshop.service;

import java.util.List;

import org.springframework.data.repository.query.Param;

import com.springproject.eshop.domain.Product;

public interface IProductDAO {
	
	public List<Product> findAll();
	public Product findById(long productId);
	public void deleteAll();
	public void delete(Product product);
	public void create(Product product);
	public void update(Product product);
	public List<Product> findByCategory(long categoryId);
	public List<Product> findByName(String name);
}
