package kr.or.ddit.users.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class IntrnActvtVO implements Serializable{
	
	private String iaNo;
	private String resumeNo;
	private String iaName;
	private String iaStdate;
	private String iaEndate;
	private String iaContent;

}
