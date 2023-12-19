package kr.or.ddit.company.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.company.vo.CompanyVO;

@Mapper
public interface CompanyDAO {
	
	/**
	 * 기업 회원가입
	 * @param companyVO
	 * @return
	 */
	public int createCompany (CompanyVO companyVO); 
	
	
	/**
	 * 아이디 중복
	 * @param companyId
	 * @return
	 */
	public CompanyVO selectCompany(@Param("companyId")String companyId);
}
