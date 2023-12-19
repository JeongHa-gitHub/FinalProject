package kr.or.ddit.admin.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.users.vo.CouponListVO;


@Mapper
public interface RolletDAO {

	public int couponInsert(CouponListVO vo);
	

	
}
