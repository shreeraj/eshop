package com.springproject.eshop.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Coupon;

@Component
@Transactional(readOnly = true) 
public interface CouponRepository  extends CrudRepository<Coupon, Long>{

}
