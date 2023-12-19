package kr.or.ddit.users.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class LanguageVO implements Serializable{

	private String lagNo;
	private String resumeNo;
	private String lagName;
	private String lagTestnm;
	private String lagDateAcqst;
	private String lagLevel;
	private String lagContent;
}
