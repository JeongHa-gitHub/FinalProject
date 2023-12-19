//주연
package kr.or.ddit.users.vo;

import java.io.IOException;
import java.io.Serializable;
import java.util.Base64;
import java.util.List;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.validate.grouphint.DeleteGroup;
import kr.or.ddit.validate.grouphint.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(of = "noticeNo")
public class NoticeVO implements Serializable{
	private int rnum;

	@NotBlank(groups = {UpdateGroup.class, DeleteGroup.class})
	private String noticeNo;
	@NotBlank
	private String noticeTitle;
	@ToString.Exclude
	private String noticeContent;
	private String noticeDate;
	private Integer noticeLno;
	private String noticeType;
	private String noticeDelete;
	private String noticeImg;

	
}
