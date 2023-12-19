package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.LikeCompanyVO;

@Mapper
public interface LikeCompanyDAO {
	
	public int selectTotalRecord(PaginationInfo<LikeCompanyVO> paging);
	
	public List<LikeCompanyVO> selectLikeCompanyList(PaginationInfo<LikeCompanyVO> paging);

	public int deleteLikeCompany(LikeCompanyVO likeCompanyVO);
	
	
}
