package com.app.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.app.dao.CommentDAO;

@Service
public class CommentServiceImpl {

	@Autowired
	CommentDAO commentDAO;
}
