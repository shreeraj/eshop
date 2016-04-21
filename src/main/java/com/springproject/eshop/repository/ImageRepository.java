package com.springproject.eshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Image;
import com.springproject.eshop.domain.Product;

@Component
@Transactional(readOnly = true) 
public interface ImageRepository extends CrudRepository<Image, Long> {

	@Query("from Image i where i.product.productId = :id")
	//@Param("id")
	public List<Image> findByProductId(@Param("id") long id);
}
