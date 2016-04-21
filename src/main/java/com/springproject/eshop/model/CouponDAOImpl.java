package com.springproject.eshop.model;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Coupon;
import com.springproject.eshop.repository.CouponRepository;
import com.springproject.eshop.service.ICouponDAO;

@Service
@Transactional(readOnly = true)
public class CouponDAOImpl implements ICouponDAO{
	@Inject
	private CouponRepository repository;
	@Override
	public List<Coupon> findAll() {
		// TODO Auto-generated method stub
		return (List<Coupon>) repository.findAll();
	}

	@Override
	public Coupon findById(long couponId) {
		// TODO Auto-generated method stub
		return repository.findOne(couponId);
	}

	@Override
	public void deleteAll() {
		
		repository.deleteAll();
	}

	@Override
	public void delete(Coupon coupon) {
		
		repository.delete(coupon);
	}

	@Override
	public void create(Coupon coupon) {
		
		repository.save(coupon);
	}

	@Override
	public void update(Coupon coupon) {
		
		repository.save(coupon);
	}

}
