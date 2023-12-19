package kr.or.ddit.company.vo;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@EqualsAndHashCode(of = "comattNo")
@NoArgsConstructor
public class ComInfoAttatchVO implements Serializable {
	private MultipartFile comFile ;
	public ComInfoAttatchVO(MultipartFile comFile) {
		super();
		this.comFile = comFile;
		this.comattOriginalnm = comFile.getOriginalFilename();
		this.comattMime = comFile.getContentType();
		this.comattFilesize = comFile.getSize();
		this.comattSavename = UUID.randomUUID().toString();
		
	}
	
	private Integer comattNo;
	private String companyId;
	private String comattOriginalnm;
	private String comattSavename;
	private long comattFilesize;
	private String comattMime;
	private Integer comattFileorder;
	
	public void saveTo(File saveFolder) throws IllegalStateException, IOException {
		if(comFile!=null)
			comFile.transferTo(new File(saveFolder, comattSavename));
	}

}
