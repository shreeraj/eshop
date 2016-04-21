package com.springproject.eshop.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.SiteSetting;


@Component
@Transactional(readOnly = true) 
public interface SiteSettingRepository extends CrudRepository<SiteSetting, Long>{
//	List<SiteSetting> findByName(String name);
}
