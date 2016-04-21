package com.springproject.eshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Product;

@Component
@Transactional(readOnly = true) 
public interface ProductRepository extends CrudRepository<Product, Long>{
	@Query("from Product p where p.name like %:name%")
	List<Product> findByName(@Param("name") String name);
	@Query("from Product p where p.category.categoryId = :id")
	List<Product> findByCategoryId(@Param("id") long id);
}
