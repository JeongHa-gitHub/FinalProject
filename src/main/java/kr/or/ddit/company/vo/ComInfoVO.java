package kr.or.ddit.company.vo;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.validate.grouphint.DeleteGroup;
import kr.or.ddit.validate.grouphint.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "companyId")
public class ComInfoVO implements Serializable{
	private int rnum;
	
	@NotBlank(groups = {UpdateGroup.class, DeleteGroup.class})
	private String companyId;
	
	private String csalNo;
	@NotBlank
	private String cominfoSectors;
	@NotBlank
	private String cominfoPage;
	@NotBlank
	private String cominfoContent;
	private String cominfoCeonm;
	@NotNull
	private Integer cominfoEmp;
	@NotNull
	private long cominfoSalary;
	@NotNull
	private String cominfoSales;
	private String cominfoBenefit;
	private String cominfoPerformance;
	private Integer cominfoHit;
	private long cominfoNsalary;
	
	// 파일 업로드
	private String cominfoFile;
	
	private MultipartFile cominfoImage;
	
	private String companyNm;
	
	private String rcrtNo;
	private String rcrtTitle;
	
	private int memZip;
	
	private String memAddr1;
	
	private String memAddr2;
	
	private String companyDate;
	
	private String industryNo;
	private String industryNm;
	private String industryCode;
	
	@Valid
	private RecruitVO recruitVO;
	

}
