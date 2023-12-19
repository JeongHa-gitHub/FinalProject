package kr.or.ddit.users.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.company.vo.IndustryVO;

@Mapper
public interface CominfoOthersDAO {
	
	public List<IndustryVO> selectIndustry();
	
	public List<IndustryVO> selectIndustryList(@Param("industryCode") String industryCode);
	
	public List<IndustryVO> selectIndustryListDet(@Param("industryCode") String industryCode);

}
