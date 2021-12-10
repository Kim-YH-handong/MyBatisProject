package com.app.app;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.app.service.DeadServiceImpl;
import com.app.app.vo.DeadVO;

@Controller
public class DeadController {
	@Autowired
	DeadServiceImpl service;

	@RequestMapping(value = "/code", method = RequestMethod.GET)
	public String code() {
		return "code";
	}
	
	@RequestMapping(value = "/dead")
	public String dead() {
		return "dead";
	}

	@RequestMapping(value = "/code/codeOk", method = RequestMethod.POST)
	public String codeCheck(HttpSession session, DeadVO vo) {
		System.out.println(vo.getCode());
		String returnURL = "";
		if (session.getAttribute("code") != null) {
			session.removeAttribute("code");
		}
		DeadVO deadvo = service.getDead(vo);
		if (deadvo != null) { // 로그인 성공
			System.out.println("로그인 성공!");
			session.setAttribute("dead", deadvo);
			returnURL = "redirect:/code/dead";
		} else { // 로그인 실패
			System.out.println("로그인 실패!");
			returnURL = "redirect:/code";
		}
		return returnURL;
	}
	
	@RequestMapping(value = "/dead")
	public String dead() {
		return "dead";
	}

//	// 로그아웃 하는 부분
//	@RequestMapping(value = "/codeout")
//	public String logout(HttpSession session) {
//		session.invalidate();
//		return "redirect:/code";
//	}
}
