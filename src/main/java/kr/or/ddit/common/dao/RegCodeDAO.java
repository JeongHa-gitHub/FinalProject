package kr.or.ddit.common.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.common.vo.RegCodeVO;

@Mapper
public interface RegCodeDAO {
	
	/**
	 * 지역 상위 코드 조회
	 * @return
	 */
	public List<RegCodeVO>selectCode();
	
	
	/**
	 * 지역 하위 코드 조회
	 * @param code
	 * @return
	 */
	public List<RegCodeVO> selectOneCode(String code);

}
