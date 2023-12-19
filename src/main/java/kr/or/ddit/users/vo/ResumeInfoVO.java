package kr.or.ddit.users.vo;

import java.io.Serializable;

import kr.or.ddit.common.vo.MemberVO;
import lombok.Data;

@Data
public class ResumeInfoVO implements Serializable{
	
	private String resumeNo;
	
	//해외연수
	private String osNo;
	private String osCountrynm;
	private String osStdate;
	private String osEndate;
	private String osContent;
	

	//경력
	private String crNo;
	private String crCompanynm;
	private String crStdate;
	private String crEndate;
	private String crContent;
	private String crType;
	
	

}
