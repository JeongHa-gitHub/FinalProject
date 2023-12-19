package kr.or.ddit.users.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.company.vo.ComInfoAttatchVO;

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
public interface ComInfoAttatchDAO {
	public ComInfoAttatchVO selectAttatch(String companyId);
	public int insertAttatch(ComInfoAttatchVO attatch);
	public int deleteAttatch(String companyId);

}
