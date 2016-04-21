package com.springproject.eshop.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springproject.eshop.domain.Category;
import com.springproject.eshop.domain.User;
import com.springproject.eshop.repository.CategoryRepository;
import com.springproject.eshop.repository.UserRepository;
import com.springproject.eshop.service.IUserDAO;


@Service
@Transactional(readOnly = true)
public class UserDAOImpl implements IUserDAO{
	@Inject
	private UserRepository repository;
	
	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return  (List<User>)repository.findAll();
	}

	@Override
	public User findById(long userId) {
		// TODO Auto-generated method stub
		return repository.findOne(userId);
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		repository.deleteAll();
	}

	@Override
	public void delete(User user) {
		// TODO Auto-generated method stub
		repository.delete(user);
	}

	@Override
	public void create(User user) {
		// TODO Auto-generated method stub
		repository.save(user);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		repository.save(user);
	}

	@Override
	public User findByUserNamePassword(String userName, String password) {
		return repository.findByUserNamePassword(userName, password);
		
	}

	
}
