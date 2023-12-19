
package kr.or.ddit.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.paging.vo.PaginationInfo;

@Mapper
public interface BsnsLcnsNmbrDAO {
	
	/**
	 * 글조회
	 * @param companyId
	 * @return
	 */
	public CompanyVO selectCompany(@Param("companyId") String companyId);
	
	/**
	 * 검색 조건에 맞는 게시글 수 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<CompanyVO> paging);
	
	/**
	 * 검색 조건에 맞는 게시글 목록 조회
	 * @param paging
	 * @return
	 */
	public List<CompanyVO> selectCompanyList(PaginationInfo<CompanyVO> paging);
	
	/**
	 * 이전글 다음글
	 * @param companyId
	 * @return
	 */
	public CompanyVO movePage(String companyId);

	
	/**
	 * 사업자등록번호 상세조회
	 * @param companyId
	 * @return
	 */
	public CompanyVO selectBsnsInfo(@Param("companyId") String companyId);

	/**
	 * 승인 여부 저장
	 */
	public int updatePassStatus(CompanyVO companyVO);
	
}
