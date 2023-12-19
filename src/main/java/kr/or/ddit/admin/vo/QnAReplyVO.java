package kr.or.ddit.admin.vo;

import java.io.Serializable;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode( of = "repNo")
public class QnAReplyVO implements Serializable{

	
	private String repNo;
	private String qstnNo;
	private String repContent;
	private String repDate;
	private String qstnReply;
}
