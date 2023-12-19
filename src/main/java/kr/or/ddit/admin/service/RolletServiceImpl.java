package kr.or.ddit.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.or.ddit.admin.dao.RolletDAO;
import kr.or.ddit.users.vo.CouponListVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RolletServiceImpl implements RolletService{
	
	@Autowired
	RolletDAO rolletDAO;
	
	@Override
	public int couponInsert(CouponListVO vo) {
		return this.rolletDAO.couponInsert(vo);
	}


}

	

