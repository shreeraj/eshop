package com.springproject.eshop.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Category;

@Component
@Transactional(readOnly = true) 
public interface CategoryRepository extends CrudRepository<Category, Long>{

	List<Category> findByName(String name);
}
