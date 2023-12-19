//주연
package kr.or.ddit.users.vo;

import java.io.IOException;
import java.io.Serializable;
import java.util.Base64;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.validate.grouphint.DeleteGroup;
import kr.or.ddit.validate.grouphint.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(of = "cpnNo")
public class CouponVO implements Serializable{
	private int rnum;

	@NotBlank(groups = {UpdateGroup.class, DeleteGroup.class})
	private String cpnNo;
	@NotBlank
	private String cpnName;
	@ToString.Exclude
	private String cpnContent;
	private Integer cpnPrice;
	private String rgstDate;
	private String startDate;
	private String endDate;
	@NotBlank
	private String usersId;
	private String ucpnNo;
	
//	private String cpnImg;
//	private MultipartFile cpnImage;
//	public void setCpnImage(MultipartFile cpnImage) {
//		if(cpnImage!=null && !cpnImage.isEmpty()) {
//			this.cpnImage = cpnImage;
//			cpnImg = UUID.randomUUID().toString();
//		}
//	}
//	
//	public void saveTo(File saveFolder) throws IllegalStateException, IOException {
//		if(cpnImage!=null)
//			cpnImage.transferTo(new File(saveFolder, cpnImg));
//	}
//	
	
	private byte[] cpnImg;
	private String cpnImg2;
	
	private MultipartFile cpnImage;
	public void setCpnImage(MultipartFile cpnImage) throws IOException {
		if(cpnImage!=null && !cpnImage.isEmpty()) {
			this.cpnImage = cpnImage;
			cpnImg = cpnImage.getBytes();
		}
	}
	
	public String getCpnImgBase64() {
		if(cpnImage!=null)
			return Base64.getEncoder().encodeToString(cpnImg);
		else
			return null;
	}
}
