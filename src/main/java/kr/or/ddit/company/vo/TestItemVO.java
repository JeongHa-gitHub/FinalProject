package kr.or.ddit.company.vo;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import kr.or.ddit.validate.grouphint.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(of = "itemNo")
@ToString
public class TestItemVO implements Serializable{
	private String testNo;
	@NotNull
	private Integer qstnNo;
	@NotNull
	private Integer itemNo;
	@NotBlank
	private String itemCont;
}
