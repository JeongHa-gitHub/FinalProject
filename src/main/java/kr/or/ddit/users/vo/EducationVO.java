package kr.or.ddit.users.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class EducationVO implements Serializable{
	
	private String eduNo;
	private String resumeNo;
	private String eduSchoolnm;
	private String eduMajornm;
	private String eduGraduate;
	private String eduStdate;
	private String eduEndate;
	private double eduGrade;
	private double eduStandardGrade;

}
