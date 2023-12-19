package kr.or.ddit.company.vo;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ImageAdvrtVO {

	@NotBlank
	private String imgadNo;
	
	@NotBlank
	private String rnum;
	
	@NotBlank
	private String imgadName;
	
	@NotBlank
	private Integer imgadPeriod;
	
	@NotBlank
	private Integer imgadPrice;
	
	@NotBlank
	private String imgadLoc;
	
	@Valid
	private CompanyVO companyVO;
	
}
