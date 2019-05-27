// https://blog.csdn.net/qq_30500113/article/details/74995037
//开始您的访问
//http://localhost:8080/SpringMVC_Mybatis_User/userList
package com.ll.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ll.pojo.User;
import com.ll.service.UserService;

@Controller
public class UserController {

	@Autowired // 注入Service
	UserService userservice;

	@RequestMapping("/add") // 增加
	public String userAdd() {
		return "userAdd";
	}

	@RequestMapping("/addUser") // 增加
	public String userAdd(Model m, User user) {
		userservice.insert(user);
		return "redirect:/userList";
	}



	@RequestMapping("/edit") // 通过id找到用户
	public String edit(Model m, int id) {
		User user = userservice.get(id);
		m.addAttribute("user", user);
		return "userEdit";
	}

	@RequestMapping("/update") // 更新
	public String update(User user, Model m, int id) {
		userservice.update(user);
		m.addAttribute("user", user);// 不能遗漏这句话 否则修改不成功
		return "redirect:userList";
	}

	// 删除
	@RequestMapping("/userDel")
	public String userDel(int id, Model m) {
		userservice.delete(id);
		return "redirect:/userList";
	}

	// 分页查询
	@RequestMapping("/userList")
	public String getUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model m) {
		// 从第一条开始 每页查询3条数据
		PageHelper.startPage(pn, 3);
		
		List<User> userList = userservice.getlist();
		
		// 将用户信息放入PageInfo对象里
		PageInfo<User> pageInfo = new PageInfo<User>(userList, 3);
		m.addAttribute("pageInfo", pageInfo);
		m.addAttribute("userList", userList);
		return "userList";
	}


	
}
