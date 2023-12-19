package kr.or.ddit.company.vo;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.validate.grouphint.InsertGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(of = "companyId")
@Data
public class CompanyVO {
	
	@Pattern(regexp = "^[a-z0-9]{5,15}$")
	@Size(min = 5, max = 15)
	private String companyId;
	
	@NotNull (groups = InsertGroup.class)
	private long companyNum;
	
	@Size(min = 2)
	@NotBlank (groups = InsertGroup.class)
	private String companyDnm;
	
	@NotBlank (groups = InsertGroup.class)
	private String companyNm;
	
	@NotBlank (groups = InsertGroup.class)
	private String companyDate;
	
	
	private String companyPermission;
	
	private String companyFile;  // 파일 업로드 
	
	private MultipartFile companyImage;
	
	@Valid
	private ComInfoVO comInfo;
	
	private String cominfoFile;
	

}
