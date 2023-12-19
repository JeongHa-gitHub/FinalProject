package kr.or.ddit.users.vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.ToString;
import lombok.Setter;

@Getter
@Setter
@ToString
public class ResumeFileInfoVO {
	private MultipartFile upload;
	private String swName;

}
