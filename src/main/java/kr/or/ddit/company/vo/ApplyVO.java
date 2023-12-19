package kr.or.ddit.company.vo;

import java.io.Serializable;

import kr.or.ddit.common.vo.CodeVO;
import kr.or.ddit.users.vo.ResumeAttatchVO;
import kr.or.ddit.users.vo.UsersVO;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ToString
@EqualsAndHashCode(of="aplNo")
public class ApplyVO implements Serializable{
	private int rnum;
	
	private String aplNo;
	private String resscNo; //삭제 예정
	private String resattNo; //이력서 파일번호
	private String rcrtNo;
	private String usersId;
	private String aplCdate;
	private String aplCancel;
	
	private RecruitVO recruit;
	private CompanyVO company;
	
	private AProcedureVO procedure_a;
	private RProcedureVO procedure_r;
	private InterviewSchdVO interviewVO;
	private UsersVO users;
	
	/* 채용절차별 지원자 목록 조회에 필요한 필드 */
	private String resumeTitle;
	private String rsltNo;
	
	private AProcedureVO aprocedure;
	private ResumeAttatchVO attatch;
	
	private CodeVO code;
}
