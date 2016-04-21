package com.springproject.eshop.service;

import java.util.List;

import com.springproject.eshop.domain.Category;

public interface ICategoryDAO {

	public List<Category> findAll();
	public Category findById(long categoryId);
	public void deleteAll();
	public void delete(Category category);
	public void create(Category category);
	public void update(Category category);
	
}
