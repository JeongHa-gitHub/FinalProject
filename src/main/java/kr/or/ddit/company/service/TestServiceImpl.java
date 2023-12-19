package kr.or.ddit.company.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.dao.TestDAO;
import kr.or.ddit.company.vo.TestItemVO;
import kr.or.ddit.company.vo.TestQstnVO;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.paging.vo.PaginationInfo;

@Service
public class TestServiceImpl implements TestService{

	@Inject
	private TestDAO testDAO;
	
	/**
	 * 시험지 목록 조회
	 */
	@Override
	public void retrieveTestList(PaginationInfo<TestVO> paging) {
		String testType = paging.getDetailCondition().getTestType();
		int totalRecord = testDAO.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		
		List<TestVO> dataList = testDAO.selectTestList(paging);
		
		paging.setDataList(dataList);
	}
	
	/**
	 * 시험지 상세 조회
	 */
	@Override
	public TestVO retrieveTestDetail(String testNo) {
		return testDAO.selectTestDetail(testNo);
	}

	/**
	 *  새 시험지 생성
	 */
	@Override
	public ServiceResult createTest(TestVO testVO) {
		boolean successFlag = true;
		// 시험지 insert
		int testInsertCnt = testDAO.insertTest(testVO);
		if(testInsertCnt>0) {
			// for문 - 시험문제 insert
			for(TestQstnVO q : testVO.getQstnList()) {
				// testVO에서 값 가져와서 testNo 셋팅
				q.setTestNo(testVO.getTestNo());
				int qstnInsertCnt = testDAO.insertTestQstn(q);
				
				if(qstnInsertCnt > 0 && testVO.getTestType().equals("T01")) {
					// for문(testNo, qstnNo, itemNo, itemCont) - 시험문항 insert
					for(TestItemVO i : q.getItemList()) {
						// testVO에서 값 가져와서 testNo 셋팅
						i.setTestNo(q.getTestNo());
						// test item insert
						int itemInsertCnt = testDAO.insertTestItem(i);
						if(itemInsertCnt > 0) {
							successFlag &= true;
						}else {
							successFlag &= false;
						}
					}
				}else if(qstnInsertCnt > 0 && testVO.getTestType().equals("T02")){
					successFlag &= true;
				}else {
					successFlag &= false;
				}
			}
		}else {
			successFlag &= false;
		}
		
		ServiceResult result = null;
		if(successFlag) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}

	/**
	 * 시험지 삭제
	 */
	@Override
	public ServiceResult removeTest(TestVO testVO) {
		
		ServiceResult result = null;
		
		if(testDAO.deleteTest(testVO.getTestNo())>0) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}

	@Override
	public ServiceResult modifyTest(TestVO testVO) {
		boolean successFlag = true;
		// 시험지 insert
		int testUpdateCnt = testDAO.updateTest(testVO);
		if(testUpdateCnt>0) {
			// for문 - 시험문제 insert
			for(TestQstnVO q : testVO.getQstnList()) {
				// testVO에서 값 가져와서 testNo 셋팅
				q.setTestNo(testVO.getTestNo());
				int qstnUpdateCnt = testDAO.updateTestQstn(q);
				
				if(qstnUpdateCnt > 0 && testVO.getTestType().equals("T01")) {
					// for문(testNo, qstnNo, itemNo, itemCont) - 시험문항 insert
					for(TestItemVO i : q.getItemList()) {
						// testVO에서 값 가져와서 testNo 셋팅
						i.setTestNo(q.getTestNo());
						// test item insert
						int itemUpdateCnt = testDAO.updateTestItem(i);
						if(itemUpdateCnt > 0) {
							successFlag &= true;
						}else {
							successFlag &= false;
						}
					}
				}else if(qstnUpdateCnt > 0 && testVO.getTestType().equals("T02")){
					successFlag &= true;
				}else {
					successFlag &= false;
				}
			}
		}else {
			successFlag &= false;
		}
		
		ServiceResult result = null;
		if(successFlag) {
			result = ServiceResult.OK;
		}else {
			result = ServiceResult.FAIL;
		}
		
		return result;
	}

}
