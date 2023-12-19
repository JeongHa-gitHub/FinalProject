package kr.or.ddit.users.vo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "coNo")
public class CommentVO implements Serializable{

	private int rnum;
	private int coNo;
	private String usersId;
	private String frbNo;
	private String coContent;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date coDate;
	private String coRep;
	private Integer cdepth;
	private Integer cgroup;
}
