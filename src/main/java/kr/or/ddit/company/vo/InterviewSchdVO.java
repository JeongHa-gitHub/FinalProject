package kr.or.ddit.company.vo;

import java.io.Serializable;

import javax.validation.Valid;

import kr.or.ddit.common.vo.CodeVO;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ToString
@EqualsAndHashCode(of = "intrNo")
public class InterviewSchdVO implements Serializable {
	private int rnum;
	
	private String intrNo;
	private String aplNo;
	private Integer rprocOrder;
	private String rcrtNo;
	private String intrIntdate;
	private String intrPlace;
	private String intrDate;
	private String intrType;

	private String intrTypeNm;
	

	private CodeVO code;
	private RecruitVO recruit;
	
	@Valid
	private ApplyVO apply;
	
	
	
}
