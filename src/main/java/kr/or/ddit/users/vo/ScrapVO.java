package kr.or.ddit.users.vo;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;

import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.company.vo.RecruitVO;
import kr.or.ddit.validate.grouphint.DeleteGroup;
import lombok.Data;

@Data
public class ScrapVO implements Serializable{
	private int rnum;
	
	@NotBlank(groups = DeleteGroup.class)
	private String rcrtNo;
	@NotBlank(groups = DeleteGroup.class)
	private String usersId;
	
	private String scrapDate;
	
	private RecruitVO recruit;
	private CompanyVO company;
	
}
