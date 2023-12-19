package kr.or.ddit.company.vo;

import java.io.Serializable;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ResumeScoreVO implements Serializable{
	private String rcrtNo;
	private Integer rprocOrder;
	private String aplNo;
	private Integer scrEdu;
	private Integer scrLang;
	private Integer scrCareer;
	private Integer scrCer;
	private Integer scrIa;
	private Integer scrOs;
	private Integer scrEtc;
}
