package com.springproject.eshop.service;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.springproject.eshop.domain.Image;
import com.springproject.eshop.domain.Product;

public interface IImageDAO {
	public List<Image> findAll();
	public Image findById(long imageId);
	public void deleteAll();
	public void delete(Image image);
	public void create(Image image);
	public void update(Image image);
	public List<Image> findByProduct(long productId);
}
