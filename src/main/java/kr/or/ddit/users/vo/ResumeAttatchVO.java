package kr.or.ddit.users.vo;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.validation.constraints.NotBlank;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.company.vo.ApplyVO;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Setter;
import lombok.ToString;

@Data
@ToString
@EqualsAndHashCode(of = "resattNo")
public class ResumeAttatchVO {
	
	private MultipartFile reFile;
	
	public ResumeAttatchVO() {}
	
	public ResumeAttatchVO(MultipartFile reFile) {
		super();
		this.reFile = reFile;
		this.resattOriginalnm = reFile.getOriginalFilename();
		this.resattMime = reFile.getContentType();
		this.resattFilesize = (int) reFile.getSize();
		this.resattSavename = UUID.randomUUID().toString();
	}
	
	private String resattNo; //첨부파일번호
	private String resumeTitle; //이력서제목
	private String resattOriginalnm;  //오리지널명
	private String resattSavename; //저장명
	private int resattFilesize; //파일크기
	private String resattMime; //파일MIME
	private ApplyVO apply;
	
	public void saveTo(File saveFolder) throws IllegalStateException, IOException{
		if(reFile!=null)
			reFile.transferTo(new File (saveFolder, resattSavename));
	}



}
