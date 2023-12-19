package kr.or.ddit.users.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class CertificateVO implements Serializable{
	
	private String cerNo;
	private String resumeNo;
	private String cerNm;
	private String cerDateAcqst;

}
