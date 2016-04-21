package com.springproject.eshop.model;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Category;
import com.springproject.eshop.repository.CategoryRepository;
import com.springproject.eshop.service.ICategoryDAO;

@Service
@Transactional
public class CategoryDAOImpl implements ICategoryDAO{

	@Inject
	private CategoryRepository repository;
	
	@Override
	public List<Category> findAll() {

		return (List<Category>) repository.findAll();
	}

	@Override
	public Category findById(long categoryId) {
		
		return repository.findOne(categoryId);
	}

	@Override
	public void deleteAll() {
		
		repository.deleteAll();
	}

	@Override
	public void delete(Category category) {
		
		repository.delete(category);
	}

	@Override
	public void create(Category category) {
		
		repository.save(category);
	}

	@Override
	public void update(Category category) {
		
		repository.save(category);
	}


}
