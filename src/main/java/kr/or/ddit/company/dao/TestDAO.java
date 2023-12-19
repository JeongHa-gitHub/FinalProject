package kr.or.ddit.company.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.company.vo.TestItemVO;
import kr.or.ddit.company.vo.TestQstnVO;
import kr.or.ddit.company.vo.TestVO;
import kr.or.ddit.paging.vo.PaginationInfo;

@Mapper
public interface TestDAO {
	/* select */
	public int selectTotalRecord(PaginationInfo<TestVO> paging);
	public List<TestVO> selectTestList(PaginationInfo<TestVO> paging);
	public TestVO selectTestDetail(String testNo);
	
	/* insert */
	public int insertTest(TestVO testVO);
	public int insertTestQstn(TestQstnVO qstnVO);
	public int insertTestItem(TestItemVO itemVO);
	
	/* delete */
	public int deleteTest(String testNo);
	
	/* update */
	public int updateTest(TestVO testVO);
	public int updateTestQstn(TestQstnVO qstnVO);
	public int updateTestItem(TestItemVO itemVO);
}