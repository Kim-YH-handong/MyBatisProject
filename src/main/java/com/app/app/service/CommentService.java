package com.app.app.service;

import java.util.List;

import com.app.app.vo.CommentVO;

public interface CommentService {
	public int insertComment(CommentVO vo);
	public int updateComment(CommentVO vo);
	public int deleteComment(int id);
	public CommentVO getComment(int seq);
	public List<CommentVO> getCommentList();
}
