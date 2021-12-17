package com.app.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.app.vo.CommentVO;
import com.app.app.vo.DeadVO;

@Repository
public class DeadDAO {
	@Autowired
	SqlSessionTemplate sqlSession;

	public DeadVO getDead(DeadVO vo) {
		return sqlSession.selectOne("Dead.getDead", vo);
	}
	
	public List<DeadVO> getDeadList(){
		List<DeadVO> list = sqlSession.selectList("Dead.getDeadList");
		return list;
	}
}
