package kr.or.ddit.company.vo;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CompanyAdvrtVO {
	
	@NotBlank
	private String cmpadNo;
	
	@NotBlank
	private String cmpadName;
	
	@NotBlank
	private Integer cmpadPeriod;
	
	@NotBlank
	private Integer cmpadPrice;
	
	@Valid
	private CompanyVO companyVO;
	
}
