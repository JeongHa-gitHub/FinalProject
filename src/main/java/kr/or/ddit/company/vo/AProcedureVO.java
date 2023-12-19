package kr.or.ddit.company.vo;

import java.io.Serializable;

import kr.or.ddit.users.vo.UsersVO;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ToString
@EqualsAndHashCode(of= {"aplNo","rcrtNo","rprocOrder"})
public class AProcedureVO implements Serializable{
	private String aplNo;
	private String rcrtNo;
	private Integer rprocOrder;
	private String aprocDate;
	private String aprocPass;
	private Integer aprocScr;
	
	/* 채용절차별 지원자 목록 조회에 필요한 필드 */
	private String resumeTitle;
	private String resattNo;
	private String testNo;
	private int mailCount;
	private int alarmCount;
	private String memMail;
	private String rprocEnd;
	
	private InterviewSchdVO interviewVO;
	private UsersVO users;
}
