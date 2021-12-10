package com.app.app.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.app.vo.DeadVO;

@Repository
public class DeadDAO {
	@Autowired
	SqlSessionTemplate sqlSession;

	public DeadVO getDead(DeadVO vo) {
		return sqlSession.selectOne("Dead.getDead", vo);
	}
}
