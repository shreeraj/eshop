package com.springproject.eshop.model;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.springproject.eshop.domain.Image;
import com.springproject.eshop.domain.Product;
import com.springproject.eshop.repository.ImageRepository;
import com.springproject.eshop.service.IImageDAO;

@Service
@Transactional(readOnly = true)
public class ImageDAOImpl implements IImageDAO{
	@Inject
	private ImageRepository repository;
	
	@Override
	public List<Image> findAll() {
		// TODO Auto-generated method stub
		return (List<Image>) repository.findAll();
	}

	@Override
	public Image findById(long imageId) {
		// TODO Auto-generated method stub
		return repository.findOne(imageId);
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		repository.deleteAll();
	}

	@Override
	public void delete(Image image) {
		// TODO Auto-generated method stub
		repository.delete(image);
	}

	@Override
	public void create(Image image) {
		// TODO Auto-generated method stub
		repository.save(image);
	}

	@Override
	public void update(Image image) {
		// TODO Auto-generated method stub
		repository.save(image);
	}

	@Override
	public List<Image> findByProduct(long productId) {
		// TODO Auto-generated method stub
		return repository.findByProductId(productId);
	}

}
