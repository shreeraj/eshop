package com.springproject.eshop.service;

import java.util.List;

import com.springproject.eshop.domain.SiteSetting;

public interface ISiteSettingDAO {
	public List<SiteSetting> findAll();
	public SiteSetting findById(long siteId);
	public void deleteAll();
	public void delete(SiteSetting siteSetting);
	public void create(SiteSetting siteSetting);
	public void update(SiteSetting siteSetting);
}
