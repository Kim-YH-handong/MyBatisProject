package com.app.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.app.dao.DeadDAO;
import com.app.app.vo.DeadVO;

@Service
public class DeadServiceImpl {

	@Autowired
	DeadDAO deadDAO;

	public DeadVO getDead(DeadVO vo) {
		return deadDAO.getDead(vo);
	}
}
