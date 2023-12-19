package kr.or.ddit.company.service;


import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.RProcedureVO;

public interface RProcedureService {
	
	/**
	 * 채용공고 등록시 채용절차 insert
	 * @param vo
	 * @return
	 */
	public ServiceResult createProcedure(RProcedureVO vo);
	
	/**
	 * 채용공고 수정시 채용절차 update
	 * @param vo
	 * @return
	 */
	public ServiceResult modifyRProcedre(RProcedureVO vo);

}
