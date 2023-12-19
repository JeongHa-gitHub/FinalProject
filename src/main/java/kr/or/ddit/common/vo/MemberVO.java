package kr.or.ddit.common.vo;

import java.io.Serializable;

import javax.validation.Valid;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.users.vo.UsersVO;
import kr.or.ddit.validate.grouphint.InsertGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(of = "memId")
public class MemberVO implements Serializable{
	
	@Pattern(regexp = "^[a-z0-9]{5,15}$")
	@Size(min = 5, max = 15)
	@NotBlank (groups = InsertGroup.class )
	private String memId;
	
	@Pattern(regexp = "^(?=.*[a-zA-Z])(?=.*\\d)(?=.*[!@#$%^&*])[a-zA-Z\\d!@#$%^&*]{8,20}$")
	@Size(min = 8, max = 20)
	@NotBlank (groups = InsertGroup.class)
	@ToString.Exclude // toString 제외
	@JsonIgnore // 마샬링 제외
	private transient String memPass;
	
	
	@NotBlank (groups = InsertGroup.class)
	private String memTel;
	
	@Email
	@NotBlank (groups = InsertGroup.class)
	private String memMail;
	
	@NotNull (groups = InsertGroup.class)
	private int memZip;
	
	@NotBlank (groups = InsertGroup.class)
	private String memAddr1;
	
	@NotBlank (groups = InsertGroup.class)
	private String memAddr2;
	
	
	private String memDivision;
	
	private String memDelete;
	
	
	@Valid
	private UsersVO users;
	
	private MultipartFile uploadFiles;
	
	@Valid
	private CompanyVO company;
	
	

	
	

}
