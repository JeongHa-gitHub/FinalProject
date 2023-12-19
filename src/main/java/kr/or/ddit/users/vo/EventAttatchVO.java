package kr.or.ddit.users.vo;

import java.io.Serializable;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class EventAttatchVO implements Serializable{

	private MultipartFile eventFile;
	public EventAttatchVO(MultipartFile eventFile) {
		super();
		this.eventFile = eventFile;
		this.evntOriginalnm = eventFile.getOriginalFilename();
		this.evntMime = eventFile.getContentType();
		this.evntFilesize = eventFile.getSize();
		this.evntSavename = UUID.randomUUID().toString();
	}
	
	private Integer evntattNo;
	private String evntNo;
	private String evntOriginalnm;
	private String evntSavename;
	private long evntFilesize;
	private String evntMime;
	private Integer evntFileorder;
}
