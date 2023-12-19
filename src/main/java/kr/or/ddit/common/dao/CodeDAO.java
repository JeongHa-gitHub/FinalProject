package kr.or.ddit.common.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import kr.or.ddit.common.vo.CodeVO;
/**
 *채용공고 UI를 구성하기 위한 Persistence Layer
 * 
 * */
@Mapper
public interface CodeDAO {
	
	/**
	 * 공통코드 목록 조회
	 * @return
	 */
	public List<CodeVO>selectCode(String tcomCode);
	
	
	
	
	

}
