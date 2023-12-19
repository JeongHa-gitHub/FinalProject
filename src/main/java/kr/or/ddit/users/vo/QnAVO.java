package kr.or.ddit.users.vo;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.admin.vo.QnAReplyVO;
import kr.or.ddit.validate.grouphint.DeleteGroup;
import kr.or.ddit.validate.grouphint.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(of = "qstnNo")
public class QnAVO implements Serializable{
	private int rnum;

	@NotBlank(groups = {UpdateGroup.class, DeleteGroup.class})
	private String qstnNo;
	private String memId;
	private String qstnTitle;
	private String qstnContent;
	private String qstnDate;
	private String qstnReply;
	
	private QnAReplyVO reply;
	
	private MultipartFile[] qnaFile;
	
	
	public void setQstnReply(String qstnReply) {
        this.qstnReply = qstnReply;
    }
}
