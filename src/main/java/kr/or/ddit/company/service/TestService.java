package kr.or.ddit.company.service;

import java.util.List;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.TestItemVO;
import kr.or.ddit.company.vo.TestQstnVO;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.paging.vo.PaginationInfo;

public interface TestService {
	public void retrieveTestList(PaginationInfo<TestVO> paging);
	
	/**
	 * 시험지 상세조회
	 */
	public TestVO retrieveTestDetail(String testNo);
	
	/**
	 * 시험지 생성
	 */
	public ServiceResult createTest(TestVO testVO);
	
	/**
	 * 시험지 삭제
	 */
	public ServiceResult removeTest(TestVO testVO);
	
	/**
	 * 시험지 수정
	 */
	public ServiceResult modifyTest(TestVO testVO);
}
