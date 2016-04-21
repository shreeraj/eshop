package com.springproject.eshop.service;

import java.util.List;

import com.springproject.eshop.domain.User;


public interface IUserDAO {
	
	public List<User> findAll();
	public User findById(long userId);
	public void deleteAll();
	public void delete(User user);
	public void create(User user);
	public void update(User user);
	public User findByUserNamePassword(String userName, String password);
}
