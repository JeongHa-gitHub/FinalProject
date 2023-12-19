package kr.or.ddit.users.vo;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.UUID;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.validate.grouphint.InsertGroup;
import lombok.Data;

@Data
public class UsersVO implements Serializable {

//	@Pattern(regexp = "^[a-z0-9]{5,15}$")
//	@Size(min = 5, max = 15)
//	@NotBlank (groups = InsertGroup.class )
	private String usersId;
	
	@Size(min = 2)
	@NotBlank (groups = InsertGroup.class )
	private String usersNm;
	
	@NotBlank (groups = InsertGroup.class )
	private String usersBir;
	
	@NotBlank (groups = InsertGroup.class )
	private String usersGen;
	
	private String usersImg;
	private MultipartFile usersImage;
	public void setUsersImage(MultipartFile usersImage) {
		if(usersImage!=null && usersImage.isEmpty()) {
			this.usersImage = usersImage;
			usersImg = UUID.randomUUID().toString();
		}
	}
	
	public void saveTo(File saveFolder) throws IllegalStateException, IOException {
		if(usersImage!=null)
			usersImage.transferTo(new File(saveFolder, usersImg));
	}
	
	private int usersVticket;
	
	private int usersVpoint;
	
	//
	private PointPayVO point;
	
	@Valid
	private TicketMnmtVO ticketMnmtVO;
	
}
