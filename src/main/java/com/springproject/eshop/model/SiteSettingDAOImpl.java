package com.springproject.eshop.model;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Category;
import com.springproject.eshop.domain.SiteSetting;
import com.springproject.eshop.repository.SiteSettingRepository;
import com.springproject.eshop.service.ISiteSettingDAO;

@Service
@Transactional
public class SiteSettingDAOImpl implements ISiteSettingDAO{
	@Inject
	private SiteSettingRepository repository;
	
	@Override
	public List<SiteSetting> findAll() {
		// TODO Auto-generated method stub
		return (List<SiteSetting>) repository.findAll();
	}

	@Override
	public SiteSetting findById(long siteId) {
		// TODO Auto-generated method stub
		return repository.findOne(siteId);
	}

	@Override
	public void deleteAll() {
		
		repository.deleteAll();
	}

	@Override
	public void delete(SiteSetting siteSetting) {
		
		repository.delete(siteSetting);
	}

	@Override
	public void create(SiteSetting siteSetting) {
		
		repository.save(siteSetting);
	}

	@Override
	public void update(SiteSetting siteSetting) {
		
		repository.save(siteSetting);
	}

}
