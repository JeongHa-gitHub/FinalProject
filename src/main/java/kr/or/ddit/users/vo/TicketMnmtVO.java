package kr.or.ddit.users.vo;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TicketMnmtVO implements Serializable {
	
	@NotBlank
	private String ticketNo;
	
	@NotBlank
	private String ticketName;
	
	@NotBlank
	private Integer ticketPeriod;
	
	@NotBlank
	private Integer ticketPrice;
	
	private Integer rnum;
}
