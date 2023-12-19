package kr.or.ddit.users.vo;

import java.io.Serializable;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

import kr.or.ddit.validate.grouphint.InsertGroup;
import lombok.Data;

@Data
public class PointPayVO implements Serializable{
	
	@NotBlank (groups = InsertGroup.class )
	private String pointPmtno;
	
	@NotBlank (groups = InsertGroup.class )
	private String usersId;

	private String ticketNo;
	
	private String pmtMethdno;
	
	@NotBlank (groups = InsertGroup.class )
	private String pointPdate;
	
	private Integer pointHold;
	
	private Integer pointCharge;
	
	private Integer pointUse;
	
	private Integer pointRemain;
	
	private String pointRecord;
	
	private int rnum;
	
	@Valid
	private UsersVO usersVO;
	
}
