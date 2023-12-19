package kr.or.ddit.company.vo;

import java.io.Serializable;
import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.validation.annotation.Validated;

import com.fasterxml.jackson.databind.ser.std.StdKeySerializers.Default;

import kr.or.ddit.validate.grouphint.DeleteGroup;
import kr.or.ddit.validate.grouphint.InsertGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@EqualsAndHashCode(of = "rcrtNo" )
@Data
@ToString
public class RecruitVO implements Serializable{
	
	private int rnum;
	
	private String rcrtNo;
	@NotBlank (groups = InsertGroup.class)
	private String rcrtStime;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtEtime;
	
	private String companyId;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtTitle;  //공고제목
	
	private int rcrtHit;
	
	private String rcrtKeywordnm;  //직무직업
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtField;  //모집분야명
	
	@NotNull (groups = InsertGroup.class)
	private int rcrtPerson;
	
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtCareer;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtCondition;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtEdu;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtLoc;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtType;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtSalary;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtWeek;
	
	private String rcrtDate;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtSdate;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtEdate;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtNm;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtTel;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtMail;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtWlfr;
	
	@NotBlank (groups = InsertGroup.class)
	private String rcrtRectype;
	
	private String rcrtDelete;
	
	

	
	@Valid
	private List<RProcedureVO> rProcedure;

	private CompanyVO company;

	private ApplyVO apply;
	
	private RecruitVO resume;
	
	

}
