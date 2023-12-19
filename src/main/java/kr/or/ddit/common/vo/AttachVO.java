package kr.or.ddit.common.vo;

import lombok.Data;

@Data
public class AttachVO {
	private int seq;
	private String pkCd;
	private String frbattOriginalnm;
	private String frbattSavename;
	private long frbattFilesize;
	private String frbattMime;
	private int frbattFileorder;
}
