package com.ll.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ll.pojo.User;


public interface UserMapper {
	
	public List<User> getlist(); //查询所有
	
	public User get(int id); //通过id查询
	
	public void update(User user); //修改
	
	public void  insert(User user);//新增
    
    public void delete(int id); //删除
        
}
