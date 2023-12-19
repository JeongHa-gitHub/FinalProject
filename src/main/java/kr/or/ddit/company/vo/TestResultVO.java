package kr.or.ddit.company.vo;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

import kr.or.ddit.validate.grouphint.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ToString
@EqualsAndHashCode(of = "rsltNo")
public class TestResultVO implements Serializable{
	private String rsltNo;
	private String testNo;
	private String qstnNo;
	private String rcrtNo;
	private String aplNo;
	private Integer rprocOrder;
	private String rsltSelect;
	@NotNull(groups = UpdateGroup.class)
	private Integer techScore;
	
	private String qstnAnswer;
}
