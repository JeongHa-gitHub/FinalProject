package kr.or.ddit.users.vo;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.common.vo.AttachVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "frbNo")
public class FrBoardVO implements Serializable{
	private int rnum;

	private String frbNo;
	private String usersId;	
	private String frbTitle;	//제목
	private String frbWrite;	//내용
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date frbDate;		
	private Integer frbLno;		
	private String frbRep;
	private String frbDelete;
	//파일객체들
	//<input type="file" name="uploadFile" id="uploadFile" accept="image/*"...
	private MultipartFile[] uploadFile;
	
	private List<CommentVO> comment;
	
	//첨부파일
	private List<AttachVO> attachVOList;
	
	//자유게시글 : 첨부파일 = 1 : N
	private List<FrBoardAttatchVO> frBoardAttatchVOList;
	
}
	