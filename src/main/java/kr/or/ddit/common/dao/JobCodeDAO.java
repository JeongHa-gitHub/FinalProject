package kr.or.ddit.common.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.common.vo.JobCodeVO;

@Mapper
public interface JobCodeDAO {
	
	/**
	 * 직업 상위 코드
	 * @return
	 */
	public List<JobCodeVO>selectTcode();
	
	/**
	 * 직업 하위 코드
	 * @param code
	 * @return
	 */
	public List<JobCodeVO>selectCode(String code);
	
	

}
