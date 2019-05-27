package com.ll.service.Impl;

import java.util.List;

import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ll.mapper.UserMapper;
import com.ll.pojo.User;
import com.ll.service.UserService;


@Service
public class UserServiceImpl implements UserService {

	@Autowired // 注入dao(maper)接口
	UserMapper usermapper;

	// 查询所有
	@Pointcut("execution(* com.ll.service..*(..))")
	public List<User> getlist() {
		return usermapper.getlist();
	}

	/*
	 * // 查询所有
	 * 
	 * @Pointcut("execution(* com.ll.service..*(..))") public PageInfo getlist01() {
	 * PageHelper.startPage(1,3); ////这里设置分页的当前页(1)和每页的数量(3) PageInfo pageInfo = new
	 * PageInfo(usermapper.getlist()); return pageInfo; }
	 */
	
	
	// 通过id查询
	public User get(int id) {
		return usermapper.get(id);
	}

	//修改
	public void update(User user) {
		 
		usermapper.update(user);
	}

	//删除
	public void delete(int id) {
		 usermapper.delete(id);
	}

	//新增
	public void insert(User user) {
		usermapper.insert(user);
	}
}
