package kr.or.ddit.users.vo;

import java.util.List;

import javax.validation.constraints.NotBlank;

import kr.or.ddit.common.vo.MemberVO;
import kr.or.ddit.company.vo.AProcedureVO;
import kr.or.ddit.company.vo.ApplyVO;
import kr.or.ddit.validate.grouphint.DeleteGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;


@EqualsAndHashCode( of = "resumeNo")
@ToString
@Data
public class ResumeVO {
	private int rnum;
	
	@NotBlank(groups = DeleteGroup.class)
	private String resumeNo;
	private String usersId;
	private String resumeTitle;
	private String resumePortfolio;
	private String resumeOpenStatus;
	private String resumeDate;
	
	private UsersVO users;
	private MemberVO member;
	
	private List<CareerVO>  careerVOList;
	private List<EducationVO> educationVOList;
	private List<CertificateVO> certificateVOList;
	private List<IntrnActvtVO> intrnActvtVOList;
	private List<LanguageVO> languageVOList;
	private List<CoverLetterVO> coverLetterVOList;
	
	private ApplyVO apply;
	private ResumeAttatchVO resumeAtt;
	private AProcedureVO aproc;
}
