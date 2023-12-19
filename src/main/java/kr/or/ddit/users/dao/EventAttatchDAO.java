package kr.or.ddit.users.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.users.vo.EventAttatchVO;

@Mapper
public interface EventAttatchDAO {

	public int insertAttatch(EventAttatchVO attatch);
	public EventAttatchVO selectAttatch(int evntattNo);
	public int deleteAttatch(int evntattNo);
}
