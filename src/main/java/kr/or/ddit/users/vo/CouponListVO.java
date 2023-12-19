package kr.or.ddit.users.vo;

import java.io.Serializable;

import javax.validation.Valid;

import lombok.Data;

@Data
public class CouponListVO implements Serializable{
	private int rnum;
	
	private String ucpnNo;
	private String cpnNo;
	private String usersId;
	private String clistIsnDate;
	private String clistUseDate;
	private String clistComment;
	
	@Valid
	private CouponVO couponVO;
	
}
