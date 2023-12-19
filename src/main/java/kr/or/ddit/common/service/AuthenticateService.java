package kr.or.ddit.common.service;

import kr.or.ddit.common.enumpkg.ServiceResult;
import kr.or.ddit.common.vo.MemberVO;

/**
 * @author 홍길동
 * @since 2023. 11. 9.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre> 
 * [[ 개정이력 (Modification Information) ]]
 * 수정일        수정자          수정내용 
 * --------   ----------    -------------
 * 2023. 11. 9.     김소원       최초작성
 * 
 * Copyright (c)  2023  by DDIT ALL right reserved
 * </pre>
 * 
 * 
 */
public interface AuthenticateService {
	
	/** 사용자 인증
	 * @param inputData
	 * @return NOTEXIST, INVALIDPASSWORD ,OK
	 */
	public ServiceResult authenticate(MemberVO inputData);


}
