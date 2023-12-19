package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.company.vo.InterviewSchdVO;
import kr.or.ddit.paging.vo.PaginationInfo;

@Mapper
public interface InterviewDAO {
	
	/**
	 * 검색 조건에 맞는 게시글 수 조회
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo<InterviewSchdVO> paging);
	
	/**
	 * 검색 조건에 맞는 이력서 목록 조회
	 * @param paging
	 * @return
	 */
	public List<InterviewSchdVO> selectInterviewSchdList(PaginationInfo<InterviewSchdVO> paging);
}
