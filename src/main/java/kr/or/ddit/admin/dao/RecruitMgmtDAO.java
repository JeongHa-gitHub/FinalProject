
package kr.or.ddit.admin.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.paging.vo.PaginationInfo;


@Mapper
public interface RecruitMgmtDAO {
	
	/**
	 * 글조회
	 * @param rcrtNo
	 * @return
	 */
	public RecruitVO selectRecruit(@Param("rcrtNo") String rcrtNo);
	
	/**
	 * 검색 조건에 맞는 게시글 수 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<RecruitVO> paging);
	
	/**
	 * 검색 조건에 맞는 게시글 목록 조회
	 * @param paging
	 * @return
	 */
	public List<RecruitVO> selectRecruitList(PaginationInfo<RecruitVO> paging);
	
	/**
	 * 이전글 다음글
	 * @param rcrtNo
	 * @return
	 */
	public RecruitVO movePage(String rcrtNo);
	
	/**
	 * 상세조회
	 * @param rcrtNo
	 * @return
	 */
	public RecruitVO selectRecruitInfo(@Param("rcrtNo") String rcrtNo);
	
}
