package kr.or.ddit.company.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.ScrapVO;

public interface RecruitService {
	
	/**
	 * 채용공고 top100 리스트 조회
	 * @return
	 */
	public List<RecruitVO>retrieveTop100List();
	
	/**
	 * 채용공고 스크랩 체크
	 * @param scrap
	 * @return
	 */
	public ServiceResult scrapCheck(ScrapVO scrap);
	
	/**
	 * 채용공고 스크랩
	 * @param scrap
	 * @return
	 */
	public ServiceResult scrapRecruit(ScrapVO scrap);
	
	/**
	 * 채용공고 스크랩 삭제
	 * @param scrapVO
	 * @return
	 */
	public ServiceResult removeScrap(ScrapVO scrap);
	
	/**
	 * 채용공고 상세조회 채용절차 
	 * @param num
	 * @return
	 */
	public List<RProcedureVO> procedureList(String num);
	
	/**
	 * 채용공고 상세조회
	 * @param id
	 * @return
	 */
	public RecruitVO retrieveRecruit(@Param("rcrtNo")String num);
	
	/**
	 * 지역 페이징 처리 기반의 채용공고 조회
	 * @param paging
	 * @return
	 */
	public void retrieveRecruitList(PaginationInfo<RecruitVO>paging);
	
	/**
	 * 직업 페이징 처리 기반의 채용공고 리스트 조회
	 * @param paging
	 * @return
	 */
	public void selectJobRecruitList(PaginationInfo<RecruitVO>paging);
	
	/**
	 * 채용공고 등록
	 * @param recruitVO
	 * @return
	 */
	public ServiceResult createRecruit(RecruitVO recruitVO);

	/**
	 * 시험지 불러오기
	 * @param id
	 * @return
	 */
	public List<TestVO> selectTest(String id);
	
	/**
	 * 채용공고 수정
	 * @param recruitVO
	 * @return
	 */
	public ServiceResult modifyRecruit(RecruitVO recruitVO);
	
	/**
	 * 채용공고 삭제 (업데이트)
	 * @param num
	 * @return
	 */
	public ServiceResult  modifyDelRecruit(String num);
	
	
	
}
