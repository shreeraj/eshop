package com.springproject.eshop.model;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Category;
import com.springproject.eshop.domain.Slider;
import com.springproject.eshop.repository.SliderRepository;
import com.springproject.eshop.service.ISliderDAO;
@Service
@Transactional
public class SliderDAOImpl  implements ISliderDAO {
	@Inject
	private SliderRepository repository;
	
	@Override
	public List<Slider> findAll() {
		// TODO Auto-generated method stub
		return (List<Slider>) repository.findAll();
	}

	@Override
	public Slider findById(long sliderId) {
		// TODO Auto-generated method stub
		return repository.findOne(sliderId);
	}

	@Override
	public void deleteAll() {
		
		repository.deleteAll();
	}

	@Override
	public void delete(Slider slider) {
		
		repository.delete(slider);
	}

	@Override
	public void create(Slider slider) {
		
		repository.save(slider);
	}

	@Override
	public void update(Slider slider) {
		
		repository.save(slider);
	}

}
