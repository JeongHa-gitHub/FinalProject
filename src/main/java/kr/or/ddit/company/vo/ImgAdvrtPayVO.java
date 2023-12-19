package kr.or.ddit.company.vo;



import javax.validation.Valid;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ImgAdvrtPayVO {
	private Integer rnum;
	private String imgadContent;
	private String imgadFile;
	private String imgadLoc;
	private String imgadPmtno;
	private String imgadNo;
	private String companyId;
	private String imgadTitle;
	private String pmtMethdno;
	private String imgadPdate;
	private String imgadSdate;
	private String imgadEdate;
	private Integer imgadBprice;
	private String imgadResult;
	
	@Valid
	private ImageAdvrtVO imageAdvrtVO;
}
