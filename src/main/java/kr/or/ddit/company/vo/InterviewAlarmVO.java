package kr.or.ddit.company.vo;

import java.io.Serializable;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ToString
@EqualsAndHashCode(of = "iAlarmNo")
public class InterviewAlarmVO implements Serializable{
	private String iAlarmNo;
	private String aplNo;
	private Integer rprocOrder;
	private String rcrtNo;
	private String iAlarmCont;
	private String iAlarmDate;
	private String iAlarmType;
}
