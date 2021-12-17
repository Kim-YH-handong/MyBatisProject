package com.app.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.app.dao.DeadDAO;
import com.app.app.vo.CommentVO;
import com.app.app.vo.DeadVO;

@Service
public class DeadServiceImpl implements DeadService{

	@Autowired
	DeadDAO deadDAO;

	@Override
	public DeadVO getDead(DeadVO vo) {
		return deadDAO.getDead(vo);
	}
	
	@Override
	public List<DeadVO> getDeadList(){
		return deadDAO.getDeadList();
	}
}
