package com.app.app.service;

import java.util.List;

import com.app.app.vo.DeadVO;

public interface DeadService {
	public DeadVO getDead(DeadVO vo);
	public List<DeadVO> getDeadList();
}
