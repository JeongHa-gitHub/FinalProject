package kr.or.ddit.company.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.dao.RProceduerDAO;
import kr.or.ddit.company.dao.RecruitDAO;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.ScrapVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class RecruitServiceImpl implements RecruitService{
	
	@Inject
	private RecruitDAO dao;
	
	@Inject
	private RProceduerDAO prodao;
	
	@Inject
	private RProcedureService service;

	/**
	 *지역 페이징 처리 기반의 지역 채용공고 리스트 조회
	 */
	@Override
	public void retrieveRecruitList(PaginationInfo<RecruitVO> paging) {
		int totalRecord =dao.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		List<RecruitVO>dataList = dao.selectRecruitList(paging);
		paging.setDataList(dataList);
	}

	/**
	 *채용 공고 등록
	 */
	@Override
	public ServiceResult createRecruit(RecruitVO recruitVO) {
		int cnt = dao.createRecruit(recruitVO);
		ServiceResult result = null;
		if(cnt>0) {
			List<RProcedureVO> prodvoList = recruitVO.getRProcedure();
			
			int procnt = 0;
			
			for(RProcedureVO prodvo : prodvoList) {
				prodvo.setRcrtNo(recruitVO.getRcrtNo());
	//			prodvo.setTestNo("T000015");  //테스트 번호 하드코딩
				procnt += prodao.createProcedure(prodvo);
			}
			result = ServiceResult.OK;
			
		}else {
			result = ServiceResult.FAIL;
		}
		return result;
	}
	
	
	/**
	 * 채용공고 수정
	 */
	@Override
	public ServiceResult modifyRecruit(RecruitVO recruitVO) {

	    List<RProcedureVO> prodvoList = recruitVO.getRProcedure();

	    int num = prodao.rProceduerCnt(recruitVO.getRcrtNo());  // 기존에 등록된 전형 수

	    // 추가될 전형 목록
	    List<RProcedureVO> addList = new ArrayList<>();

	    for (int i = num; i < prodvoList.size(); i++) {
	        addList.add(prodvoList.get(i));
	    }

	    // 추가된 전형 등록 insert
	    for (RProcedureVO addProcedure : addList) {
	        addProcedure.setRcrtNo(recruitVO.getRcrtNo()); // 채용공고 번호 설정
	        prodao.createProcedure(addProcedure); // 추가된 전형 등록
	    }

	    // 수정될 전형 목록
	    List<RProcedureVO> updateList = new ArrayList<>();

	    for (int i = 0; i < num; i++) {
	        updateList.add(prodvoList.get(i));
	    }

	    recruitVO.setRProcedure(updateList);

	    // 채용공고 수정
	    int cnt = dao.updateRecruit(recruitVO);
	    ServiceResult result;

	    if (cnt > 0) {
	        List<RProcedureVO> prodList = recruitVO.getRProcedure();

	        int procnt = 0;

	        for (RProcedureVO prodvo : prodList) {
	            prodvo.setRcrtNo(recruitVO.getRcrtNo()); // 채용공고 번호
	            procnt += prodao.updateRProcedure(prodvo);
	        }
	        result = ServiceResult.OK;

	    } else {
	        result = ServiceResult.FAIL;
	    }
	    return result;
	}
	/**
	 *시험지 불러오기
	 */
	@Override
	public List<TestVO> selectTest(String id) {
		
		return dao.selectTest(id);
	}

	/**
	 *채용공고 상세조회
	 */
	@Override
	public RecruitVO retrieveRecruit(String num) {
		dao.hitRecruit(num); //조회수 증가
		return dao.selectRecruit(num);
	}

	/**
	 *채용공고 상세조회 안 채용절차
	 */
	@Override
	public List<RProcedureVO> procedureList(String num) {
		
		return dao.procedureList(num);
	}

	/**
	 *채용공고 스크랩
	 */
	@Override
	public ServiceResult scrapRecruit(ScrapVO scrap) {
		int cnt = dao.scrapRecruit(scrap);
		ServiceResult result= null;
		if(cnt>0) {
			result = ServiceResult.OK;
			
		}else {
			result = ServiceResult.FAIL;
		}
		return result;
	}

	/**
	 * 스크랩 체크
	 */
	@Override
	public ServiceResult scrapCheck(ScrapVO scrap) {
		int cnt = dao.scrapCheck(scrap);
		ServiceResult result= null;
		if(cnt>0) {
			result = ServiceResult.OK;
			
		}else {
			result = ServiceResult.FAIL;
		}
		return result;
	}

	/**
	 *채용공고 top100 리스트 조회
	 */
	@Override
	public List<RecruitVO> retrieveTop100List() {
		return dao.selectTop100List();
	}

	/**
	 *채용공고 스크랩 삭제
	 */
	@Override
	public ServiceResult removeScrap(ScrapVO scrapVO) {
		int cnt = dao.deleteScrap(scrapVO);
		return cnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	/**
	 *채용공고 삭제 (업데이트)
	 */
	@Override
	public ServiceResult modifyDelRecruit(String num) {
		int cnt = dao.updateDelRecruit(num);
		return cnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	/**
	 *직업 페이징 처리 기반의 지역 채용공고 리스트 조회
	 */
	@Override
	public void selectJobRecruitList(PaginationInfo<RecruitVO> paging) {
		int totalRecord =dao.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		
		log.info("소원체킁:",paging);
		List<RecruitVO>dataList = dao.selectJobRecruitList(paging);
		paging.setDataList(dataList);
	}


	
}
