package com.app.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.app.vo.CommentVO;

@Repository
public class CommentDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int insertComment(CommentVO vo) {
		int result = sqlSession.insert("Comment.insertComment", vo);
		return result;
	}
	
	public int updateComment(CommentVO vo) {
		int result = sqlSession.update("Comment.updateComment", vo);
		return result;
	}
	
	public int deleteComment(int id) {
		int result = sqlSession.delete("Comment.deleteComment", id);
		return result;
	}
	
	public CommentVO getComment(int seq) {
		CommentVO one = sqlSession.selectOne("Comment.getComment", seq);
		return one;
	}
	
	public List<CommentVO> getCommentList(){
		List<CommentVO> list = sqlSession.selectList("Comment.getCommentList");
		return list;
	}
}
