package com.app.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.app.dao.CommentDAO;
import com.app.app.vo.CommentVO;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	CommentDAO commentDAO;
	
	@Override
	public int insertComment(CommentVO vo) {
		return commentDAO.insertComment(vo);
	}
	@Override
	public int updateComment(CommentVO vo) {
		return commentDAO.updateComment(vo);
	}
	@Override
	public int deleteComment(int id) {
		return commentDAO.deleteComment(id);
	}
	@Override
	public CommentVO getComment(int seq) {
		return commentDAO.getComment(seq);
	}
	@Override
	public List<CommentVO> getCommentList(){
		return commentDAO.getCommentList();
	}
}
