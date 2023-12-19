package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.LikeCompanyVO;
import kr.or.ddit.users.vo.ScrapVO;

@Mapper
public interface ScrapDAO {
	
	/**
	 * 개인회원 마이페이지 - 스크랩 페이징
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<ScrapVO> paging);
	
	/**
	 * 개인회원 마이페이지 - 스크랩 공고 리스트 조회
	 * @param paging
	 * @return
	 */
	public List<ScrapVO> selectScrapList(PaginationInfo<ScrapVO> paging);
	
	/**
	 * 스크랩 삭제
	 * @param likeCompanyVO
	 * @return
	 */
	public int deleteScrap(ScrapVO scrapVO);
	
}
