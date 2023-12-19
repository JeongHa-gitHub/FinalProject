package kr.or.ddit.users.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class CoverLetterVO implements Serializable{
	
	private String psNo;
	private String resumeNo;
	private String psTitle;
	private String psContent;

}
