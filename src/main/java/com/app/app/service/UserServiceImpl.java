package com.app.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.app.dao.UserDAO;

@Service
public class UserServiceImpl {
	
	@Autowired
	UserDAO userDAO;

}
