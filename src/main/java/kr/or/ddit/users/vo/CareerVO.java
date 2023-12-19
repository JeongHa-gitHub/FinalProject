package kr.or.ddit.users.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class CareerVO implements Serializable{
	
	private String crNo;
	private String resumeNo;
	private String crCompanynm;
	private String crStdate;
	private String crEndate;
	private String crContent;

}
