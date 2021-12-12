package com.app.app.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.app.vo.DeadVO;
import com.app.app.vo.UserVO;

@Repository
public class UserDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public UserVO getUser(UserVO vo) {
		return sqlSession.selectOne("User.getUser", vo);
	}
	
	public void insertUser(UserVO vo) {
		sqlSession.insert("User.insertUser", vo);
	}
}
