package com.ll.service;

import java.util.List;

import com.ll.pojo.User;

public interface UserService {
	
	public void insert(User user);

	public List<User> getlist();

	public User get(int id);

	public void update(User user);

	public void delete(int id);

}
