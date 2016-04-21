package com.springproject.eshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.User;
@Component
@Transactional(readOnly = true) 
public interface UserRepository extends CrudRepository<User, Long> {
	List<User> findByUserName(String userName);
	@Query("from User u where u.userName = :userName and u.password = :password")
	User findByUserNamePassword(@Param("userName") String userName, @Param("password") String password);
}
