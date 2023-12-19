package kr.or.ddit.company.vo;

import java.io.Serializable;
import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import kr.or.ddit.validate.grouphint.AptTestGroup;
import kr.or.ddit.validate.grouphint.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(of = "qstnNo")
@ToString
public class TestQstnVO implements Serializable{
	private String testNo;
	@NotNull
	private Integer qstnNo;
	@NotBlank
	private String qstnCont;
	@NotBlank
	private String qstnAnswer;

	private String rsltSelect;
	
	@Valid
	private List<@NotNull(groups = AptTestGroup.class) TestItemVO> itemList;
}
