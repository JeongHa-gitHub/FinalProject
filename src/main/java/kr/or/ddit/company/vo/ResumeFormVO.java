package kr.or.ddit.company.vo;

import java.io.Serializable;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ToString
@EqualsAndHashCode(of = {"rcrtNo","rprocOrder"})
public class ResumeFormVO implements Serializable{
	private String rcrtNo;
	private Integer rprocOrder;
	private String scrEdu;
	private String scrLang;
	private String scrCareer;
	private String scrCer;
	private String scrIa;
	private String scrOs;
	private String scrEtc;
}
