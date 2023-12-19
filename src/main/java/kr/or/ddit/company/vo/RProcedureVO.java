package kr.or.ddit.company.vo;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import kr.or.ddit.common.vo.CodeVO;
import kr.or.ddit.validate.grouphint.InsertGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(of = {"rcrtNo","rprocOrder"})
@ToString
public class RProcedureVO implements Serializable{

	private String rcrtNo;         //채용공고번호
	
	@NotNull (groups = InsertGroup.class)
	private int rprocOrder;    //채용공고순서
	
	@NotBlank (groups = InsertGroup.class)
	private String rprocTypeno;    //채용절차분류
	
	@NotBlank (groups = InsertGroup.class)
	private String rprocSdate;     //전형시작일자
	
	@NotBlank (groups = InsertGroup.class)
	private String rprocEdate;     //전형마감일자
	
	private String rprocEnd;     //마감여부
	
	private String testNo;         //시험번호
	
	private String comCodeNm;
	
	//
	private TestVO test;

	private CodeVO code;

}
