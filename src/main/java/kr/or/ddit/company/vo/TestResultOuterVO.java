package kr.or.ddit.company.vo;

import java.io.Serializable;
import java.util.List;

import javax.validation.Valid;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class TestResultOuterVO implements Serializable {
	@Valid
	private List<TestResultVO> testResultVO;
}