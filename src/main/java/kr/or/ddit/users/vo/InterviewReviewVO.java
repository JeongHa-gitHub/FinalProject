package kr.or.ddit.users.vo;

import javax.validation.Valid;

import kr.or.ddit.company.vo.ApplyVO;
import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.company.vo.InterviewSchdVO;
import kr.or.ddit.company.vo.RecruitVO;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ToString
@EqualsAndHashCode(of="intrevNo")
public class InterviewReviewVO {
	
	private int rnum;

	private String intrevNo;
	private String intrNo;
	private String intervOvrlEvltn;
	private String intervDifficulty;
	private String interviewTypical;
	private String intervPersonnel;
	private String intervProcess;
	private String intervQuestion;
	private String intervTip;
	private String intervPass;
	private String intervWdate;
	private String intervApproval;
	private String intervReport;
	
	private String companyId;
	private String companyNm;
	private String rcrtNo;
	private String rcrtTitle;
	private String aplNo;
	
	private String usersId;
	
	@Valid
	private ApplyVO apply;
	
	@Valid
	private InterviewSchdVO interviewSchdVO;
	
	private RecruitVO recruit;
	
	private CompanyVO company;
	
	
	
	
	
	
	
	
}
