package kr.or.ddit.company.vo;

import javax.validation.Valid;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CmpAdvrtPayVO {
	private Integer rnum;
	private String cmpadPmtno;
	private String cmpadNo;
	private String companyId;
	private String pmtMethdno;
	private String cmpadPdate;
	private String cmpadSdate;
	private String cmpadEdate;
	private Integer cmpadBprice;
	private Integer count;
	private String lastrecruit;
	
	@Valid
	private CompanyAdvrtVO companyAdvrtVO;
	
	@Valid
	private CompanyVO companyVO;
}
