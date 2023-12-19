package kr.or.ddit.users.vo;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.validate.grouphint.DeleteGroup;
import kr.or.ddit.validate.grouphint.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(of = "evntNo")
public class EventVO implements Serializable{

	@NotNull(groups = {UpdateGroup.class, DeleteGroup.class})
	private String evntNo;
	@NotBlank
	private String evntTitle;
	@ToString.Exclude
	private String evntContent;
	private Integer evntLno;
	private String rgstDate;
	private String startDate;
	private String endDate;
	
	
//	private MultipartFile[] eventFile;
//	private List<EventVO> attatchList; // has many
//	
//	public void seteventFile(MultipartFile[] eventFile) {
//		if(eventFile!=null) {
//			this.eventFile = Arrays.stream(eventFile)
//								.filter((f)->!f.isEmpty())
//								.toArray(MultipartFile[]::new);
//		}
//		
//		if(this.eventFile!=null) {
//			this.eventFile = Arrays.stream(this.eventFile)
//									.map((f)->new EventVO(f))
//									.collect(Collectors.toList());
//		}
//	}
}
