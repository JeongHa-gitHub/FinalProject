package kr.or.ddit.company.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.company.vo.RProcedureVO;

@Mapper
public interface RProceduerDAO {
	
	/**
	 * 채용공고 등록시 채용절차 insert
	 * @param vo
	 * @return
	 */
	public int createProcedure(RProcedureVO vo);
	
	
	/**
	 * 채용공고 수정시 채용절차 update
	 * @param vo
	 * @return
	 */
	public int updateRProcedure(RProcedureVO vo);
	
	/**
	 * 전형 count
	 * @param num
	 * @return
	 */
	public int rProceduerCnt (String num);

}
