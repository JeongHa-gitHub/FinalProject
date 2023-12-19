package kr.or.ddit.users.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.users.vo.FrBoardAttatchVO;

@Mapper
public interface FrBoardAttatchDAO {
	public int insertAttatch(FrBoardAttatchVO attatch);
	public FrBoardAttatchVO selectAttatch(int frbAttNo);
	public int deleteAttatch(int frbAttNo);

}
