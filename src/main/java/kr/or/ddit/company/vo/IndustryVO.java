package kr.or.ddit.company.vo;

import java.io.Serializable;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
public class IndustryVO implements Serializable {
	private String industryNo;
	private String industryNm;
	private String industryCode;
}
