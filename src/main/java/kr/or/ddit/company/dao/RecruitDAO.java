package kr.or.ddit.company.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.company.vo.RProcedureVO;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.ScrapVO;

@Mapper
public interface RecruitDAO {
	
	/**
	 * top100 채용공고 리스트 조회
	 * @return
	 */
	public List<RecruitVO>selectTop100List();
	
	/**
	 * 지역 페이징 처리 기반의 채용공고 리스트 조회
	 * @param paging
	 * @return
	 */
	public List<RecruitVO> selectRecruitList(PaginationInfo<RecruitVO>paging);
	
	/**
	 * 직업 페이징 처리 기반의 채용공고 리스트 조회
	 * @param paging
	 * @return
	 */
	public List<RecruitVO> selectJobRecruitList(PaginationInfo<RecruitVO>paging);
	
	
	/**
	 * totalRecord 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<RecruitVO>paging);
	
	
	/**
	 * 채용공고 상세조회
	 * @param id
	 * @return
	 */
	public RecruitVO selectRecruit(String num);
	
	/**
	 * 채용공고 스크랩 중복방지
	 * @param scrap
	 * @return
	 */
	public int scrapCheck(ScrapVO scrap);
	
	/**
	 * 채용공고 스크랩
	 * @param scrap
	 * @return
	 */
	public int scrapRecruit(ScrapVO scrap);
	
	/**
	 * 스크랩 삭제
	 * @param ScrapVO
	 * @return
	 */
	public int deleteScrap(ScrapVO scrap);
	
	/**
	 * 채용공고 상세보기 전형절차 
	 * @param num
	 * @return
	 */
	public List<RProcedureVO> procedureList(@Param("rcrtNo")String num);

	
	/**
	 * 채용공고 상세조회 조회수 
	 * @param num
	 */
	public void hitRecruit(String num);
	
	/**
	 * 채용공고 등록
	 * @param recruitVO
	 * @return
	 */
	public int createRecruit(RecruitVO recruitVO);
	
	
	/**
	 * 채용공고 등록 시험지 불러오기
	 * @param id
	 * @return
	 */
	public List<TestVO> selectTest(@Param("companyId")String id);

	/**
	 * 채용공고 수정
	 * @param recruitVO
	 * @return
	 */
	public int updateRecruit(RecruitVO recruitVO);
	
	/**
	 * 채용공고 삭제 (업데이트)
	 * @param num
	 * @return
	 */
	public int updateDelRecruit(@Param("rcrtNo")String num);
	
	/**
	 * 채용공고 상세 차트 남자
	 * @param num
	 * @return
	 */
	public int selectchartMale(String num);
	
	/**
	 * 채용공고 상세 차트 여자
	 * @param num
	 * @return
	 */
	public int selectChartFemale(String num);
}
