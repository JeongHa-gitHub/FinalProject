package kr.or.ddit.users.vo;

import lombok.Data;

@Data
public class PersonalStatementVO {
	private String psNo;
	private String resumeNo;
	private String psTitle;
	private String psContent;
	private Integer psOrder;
}
