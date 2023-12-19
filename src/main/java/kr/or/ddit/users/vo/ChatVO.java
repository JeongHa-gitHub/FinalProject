package kr.or.ddit.users.vo;

import java.io.Serializable;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ChatVO implements Serializable{
	
	private String sender;
	private String message;
	private String flag;
	
}
