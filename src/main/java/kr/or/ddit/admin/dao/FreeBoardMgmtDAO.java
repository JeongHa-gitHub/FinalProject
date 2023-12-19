
package kr.or.ddit.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import kr.or.ddit.paging.vo.PaginationInfo;
import kr.or.ddit.users.vo.FrBoardVO;

@Mapper
public interface FreeBoardMgmtDAO {
   
   /**
    * 글조회
    * @param frbNo
    * @return
    */
   public FrBoardVO selectFreeBoard(@Param("frbNo") String frbNo);
   
   /**
    * 검색 조건에 맞는 게시글 수 조회
    * @param paging
    * @return
    */
   public int selectTotalRecord(PaginationInfo<FrBoardVO> paging);
   
   /**
    * 검색 조건에 맞는 게시글 목록 조회
    * @param paging
    * @return
    */
   public List<FrBoardVO> selectFreeBoardList(PaginationInfo<FrBoardVO> paging);
   
   /**
    * 이전글 다음글
    * @param frbNo
    * @return
    */
   public FrBoardVO movePage(String frbNo);

   
   /**
    * 자유게시판 상세조회
    * @param frbNo
    * @return
    */
   public FrBoardVO selectFreeBoardInfo(@Param("frbNo") String frbNo);

   /**
	 * 글 삭제
	 * @param frbNo
	 * @return
	 */
   public int deleteBoard(String frbNo);


   
}