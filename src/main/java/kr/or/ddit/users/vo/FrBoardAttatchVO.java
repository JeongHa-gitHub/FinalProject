package kr.or.ddit.users.vo;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@EqualsAndHashCode(of = "frbattNo")
@NoArgsConstructor
public class FrBoardAttatchVO implements Serializable{
	private MultipartFile frFile;
	public FrBoardAttatchVO(MultipartFile frFile) {
		super();
		this.frFile = frFile;
		this.frbattOriginalnm = frFile.getOriginalFilename();
		this.frbattMime = frFile.getContentType();
		this.frbattFilesize = frFile.getSize();
		this.frbattSavename = UUID.randomUUID().toString();
	}
	

	private Integer frbattNo;
	private String frbNo;
	private String frbattOriginalnm;
	private String frbattSavename;
	private long frbattFilesize;
	private String frbattMime;
	private Integer frbattFileorder;
	
	public void saveTo(File saveFolder) throws IllegalStateException, IOException {
		if(frFile!=null)
			frFile.transferTo(new File(saveFolder, frbattSavename));
	}
}
