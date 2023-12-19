package kr.or.ddit.company.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.dao.RProceduerDAO;
import kr.or.ddit.company.vo.RProcedureVO;

@Service
public class RProcedureServiceImpl implements RProcedureService{

	@Inject
	private RProceduerDAO dao ;
	
	/**
	 *채용 공고 등록시 채용 절차 insert
	 */
	@Override
	public ServiceResult createProcedure(RProcedureVO vo) {
		
		ServiceResult result = null;
		int cnt = dao.createProcedure(vo);
		if(cnt>0) {
			result =ServiceResult.OK;
		}else {
			result =ServiceResult.FAIL;
		}
		return result;
	}

	/**
	 *채용 공고 수정시 채용 절차 update
	 */
	@Override
	public ServiceResult modifyRProcedre(RProcedureVO vo) {
		
		ServiceResult result = null;
		
		int cnt = dao.updateRProcedure(vo);
		if(cnt>0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		return result;
	}
	

}
