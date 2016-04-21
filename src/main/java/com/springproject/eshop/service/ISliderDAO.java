package com.springproject.eshop.service;

import java.util.List;

import com.springproject.eshop.domain.Slider;

public interface ISliderDAO {
	public List<Slider> findAll();
	public Slider findById(long sliderId);
	public void deleteAll();
	public void delete(Slider slider);
	public void create(Slider slider);
	public void update(Slider slider);
}
