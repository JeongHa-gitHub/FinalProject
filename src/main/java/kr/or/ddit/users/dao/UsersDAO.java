package kr.or.ddit.users.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.users.vo.PointPayVO;
import kr.or.ddit.users.vo.UsersVO;

@Mapper
public interface UsersDAO {
	
	/**
	 * 개인 회원 가입
	 * @param inputData
	 * @return
	 */
	public int createUsers (UsersVO usersVo);
	

	/**
	 * 회원가입시 1000포인트 지급
	 * @param potinVo
	 * @return
	 */
	public int createPoint (PointPayVO potinVo);
	
	

}
