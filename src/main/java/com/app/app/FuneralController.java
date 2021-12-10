package com.app.app;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.app.service.UserServiceImpl;
import com.app.app.vo.DeadVO;
import com.app.app.vo.UserVO;

@Controller
public class FuneralController {
	
	@Autowired
	UserServiceImpl service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/login/loginOk", method = RequestMethod.POST)
	public String loginOk(HttpSession session, UserVO vo) {
		System.out.println(vo.getUserid());
		String returnURL = "";
		if (session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}
		UserVO uservo = service.getUser(vo);
		if (uservo != null) { // 로그인 성공
			System.out.println("로그인 성공!");
			session.setAttribute("user", uservo);
			returnURL = "redirect:/code";
		} else { // 로그인 실패
			System.out.println("로그인 실패!");
			returnURL = "redirect:/login";
		}
		return returnURL;
	}
	
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String signUp() {
		return "signUp";
	}
	
	@RequestMapping(value = "/signUp/signUpOk", method = RequestMethod.POST)
	public String signUpOk(HttpSession session, UserVO vo) {
//		String returnURL = "";
		
		service.insertUser(vo);
		
		return "redirect:/login";
	}

}
