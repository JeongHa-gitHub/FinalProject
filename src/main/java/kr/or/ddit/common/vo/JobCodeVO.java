package kr.or.ddit.common.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ToString
@EqualsAndHashCode(of ="jobCode" )
public class JobCodeVO {
	
	private String jobCode;
	private String jobNm;
	private String tjobCode;

}
