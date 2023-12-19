package kr.or.ddit.users.vo;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;

import kr.or.ddit.company.vo.ComInfoVO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.validate.grouphint.DeleteGroup;
import lombok.Data;

@Data
public class LikeCompanyVO implements Serializable{
	private int rnum;
	
	@NotBlank(groups = DeleteGroup.class)
	private String usersId;
	@NotBlank(groups = DeleteGroup.class)
	private String companyId;
	
	private String interDate;
	
	private CompanyVO company;
	private ComInfoVO comInfo;
}
