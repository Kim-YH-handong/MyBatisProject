package com.app.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.app.service.CommentServiceImpl;
import com.app.app.vo.CommentVO;

@Controller
@RequestMapping(value = "/code")
public class CommentController {
	@Autowired
	CommentServiceImpl commentService;
	
	@RequestMapping(value = "/dead", method = RequestMethod.GET)
	public String boardlist(Model model) {
		model.addAttribute("list", commentService.getCommentList());
		return "dead";
	}
	
	@RequestMapping(value = "/addok", method = RequestMethod.POST)
	public String addOK(CommentVO vo){
		int i = commentService.insertComment(vo);
		if(i==0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공!!");
		return "redirect:dead";
	}
	
	@RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model){
		CommentVO commentVO = commentService.getComment(id);
		model.addAttribute("commentVO", commentVO);
		return "/editform";
	}
	
	@RequestMapping(value = "/editok", method = RequestMethod.POST)
	public String editOK(CommentVO vo){
		int i = commentService.updateComment(vo);
		if(i==0)
			System.out.println("데이터 추가 실패");
		else
			System.out.println("데이터 추가 성공!!!");
		return "redirect:dead";
	}
	
	@RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
	public String deleteComment(@PathVariable("id") int id){
		int i = commentService.deleteComment(id);
		if(i==0)
			System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공!!");
		return "redirect:../dead";
	}
}
