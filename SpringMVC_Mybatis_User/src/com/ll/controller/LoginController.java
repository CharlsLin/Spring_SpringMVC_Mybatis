package com.ll.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ll.pojo.Login;
import com.ll.service.LoginService;
import com.ll.service.Impl.LoginServiceImpl;

@SuppressWarnings("unused")
@Controller

public class LoginController {

	@Autowired
	LoginServiceImpl loginserviceImpl;

	// 登录
	//http://localhost:8080/SpringMVC_Mybatis_User/
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	// 注销方法
	@RequestMapping("/outLogin")
	public String outLogin(HttpSession session) {
		// 通过session.invalidata()方法来注销当前的session
		session.invalidate();
		return "login";
	}

	// 登录判断
	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
	public String checkLogin(Login currLogin, Model model) throws ServletException, IOException {

		currLogin = loginserviceImpl.login(currLogin.getId(), currLogin.getPwd());

		if (currLogin != null) {
			return "forward:/userList";
		} else {
			model.addAttribute("msg", "用户名或密码错误惹");
			return "login";
		}
	}
}
