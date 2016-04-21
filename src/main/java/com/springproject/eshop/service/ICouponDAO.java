package com.springproject.eshop.service;

import java.util.List;

import com.springproject.eshop.domain.Coupon;

public interface ICouponDAO {
	public List<Coupon> findAll();
	public Coupon findById(long couponId);
	public void deleteAll();
	public void delete(Coupon coupon);
	public void create(Coupon coupon);
	public void update(Coupon coupon);
}
