package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.LikeCompanyVO;


/**
 * @author 이기웅
 * @since 2023.11.09
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[ 개정이력 (Modification Information) ]]
 * 수정일        수정자          수정내용 
 * --------   ----------    -------------
 * 2023. 11. 9.     이기웅       최초작성
 * 
 * Copyright (c)  2023  by DDIT ALL right reserved
 * </pre>
 *
 */
@Mapper
public interface ComInfoDAO {

	/**
	 * 기업정보 조회
	 * @param companyId
	 * @return
	 */
	public ComInfoVO selectCominfo(@Param("companyId") String companyId);
	
	/**
	 * 기업정보 등록
	 * @param cominfo
	 * @return
	 */
	public int insertCominfo(ComInfoVO cominfo);
	
	/**
	 * 조회수 증가
	 * @param companyId
	 * @return
	 */
	public void incrementHit(String companyId);
	
	/**
	 * 검색 조건에 맞는 기업정보 수 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<ComInfoVO> paging);
	
	/**
	 * 검색 조건에 맞는 기업정보 목록 조회
	 * @param paging
	 * @return
	 */
	public List<ComInfoVO> selectCominfoList(PaginationInfo<ComInfoVO> paging);
	
	/**
	 * 기업정보 수정
	 * @param cominfo
	 * @return
	 */
	public int updateBoard(ComInfoVO cominfo);
	
	/**
	 * 기업정보 삭제
	 * @param companyId
	 * @return
	 */
	public int deleteCominfo(String companyId);
	
	/**
	 * 관심기업 체크
	 * @param likeCom
	 * @return
	 */
	public int checkLikeCom(LikeCompanyVO likeCom);
	
	/**
	 * 관심기업 추가
	 * @param likeCom
	 * @return
	 */
	public int inserLikeCom(LikeCompanyVO likeCom);
	
	/**
	 * 관심기업 삭제
	 * @param likeCom
	 * @return
	 */
	public int deleteLikeCom(LikeCompanyVO likeCom);
	
	/**
	 * 기업정보 리스트 중 기업등록 버튼 판별
	 * @param usersId
	 * @return
	 */
	public MemberVO selectMember(String usersId);
}
