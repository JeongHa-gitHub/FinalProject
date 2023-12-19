package kr.or.ddit.common.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.common.vo.AttachVO;
import kr.or.ddit.common.vo.CodeVO;

/**
 * 누구나 파일업로드를 쉽게 할 수 있도록 도와주는 Persistence Layer
 * 
 * */
@Mapper
public interface AttachDao {
	
	/**
	 * ATTACH 테이블에 insert
	 * @return
	 */
	public void insertAttach(AttachVO attachVO);

}