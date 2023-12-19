package kr.or.ddit.users.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class OverseasStudyVO implements Serializable{
	
	private String osNo;
	private String resumeNo;
	private String osCountrynm;
	private String osStdate;
	private String osEndate;
	private String osContent;

}
