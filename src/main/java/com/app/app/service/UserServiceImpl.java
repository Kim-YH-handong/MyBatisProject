package com.app.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.app.dao.UserDAO;
import com.app.app.vo.DeadVO;
import com.app.app.vo.UserVO;

@Service
public class UserServiceImpl {
	
	@Autowired
	UserDAO userDAO;
	
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
	
	public void insertUser(UserVO vo) {
		userDAO.insertUser(vo);
	}
}

//test