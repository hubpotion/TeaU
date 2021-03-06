package com.teau.biz.service.board;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.board.BoardVO;

//DAO(Data Access Object)

@Repository
public class BoardDAO {

    @Autowired
    private SqlSessionTemplate mybatis;

    // CRUD 기능
    // insert 기능
    public void insertBoard(BoardVO vo) {
        System.out.println("===> Mybatis로 insertBoard 기능 처리");
        mybatis.insert("BoardDAO.insertBoard", vo);
    }

    // update
    public void updateBoard(BoardVO vo) {
        System.out.println("===> Mybatis로 updateBoard 기능 처리");
        mybatis.update("BoardDAO.updateBoard", vo);
        System.out.println(vo.getBoardTitle());
    }

    // 댓글 갯수 업뎃
    public void updateReplyCount(BoardVO vo) throws Exception {
        System.out.println("===> Mybatis로 updateReplyCount 기능 처리");
        System.out.println(vo.getReplyCount());
        mybatis.update("BoardDAO.updateReplyCount", vo);
        System.out.println(vo.getReplyCount());

    }

    // delete
    public void deleteBoard(BoardVO vo) {
        System.out.println("===> Mybatis로 deleteBoard 기능 처리");
        mybatis.delete("BoardDAO.deleteBoard", vo);
    }

    // 개별보기
    public BoardVO getBoard(BoardVO vo) {
        System.out.println("===> Mybatis로  getBoard() 기능 처리");
        System.out.println(vo.getReplyCount());
        return (BoardVO) mybatis.selectOne("BoardDAO.getBoard", vo);
    }

    // 씨앗 목록보기
    public List<BoardVO> getBoardListO(BoardVO vo) {
        System.out.println("===> Mybatis로  getBoardListO() 기능 처리");
        return mybatis.selectList("BoardDAO.getBoardListO", vo);
    }

    // 새싹 목록보기
    public List<BoardVO> getBoardListB(BoardVO vo) {
        System.out.println("===> Mybatis로  getBoardListB() 기능 처리");
        return mybatis.selectList("BoardDAO.getBoardListB", vo);
    }

    // 랭킹 보드 목록보기
    public List<BoardVO> getBoardListR(BoardVO vo) {
        System.out.println("===> Mybatis로  getRBoardListR() 기능 처리");
        return mybatis.selectList("BoardDAO.getRBoardListR", vo);
    }

    // 페이징 관련
    public int totalCnt() {
        System.out.println("===> Mybatis로 totalCnt");
        return mybatis.selectOne("BoardDAO.getTotalCnt");
    }

    public int totalCntB() {
        System.out.println("===> Mybatis로 totalCntB");
        return mybatis.selectOne("BoardDAO.getTotalCntB");
    }

    public int totalCntR() {
        System.out.println("===> Mybatis로 totalCntB");
        return mybatis.selectOne("BoardDAO.getTotalCntR");
    }

}
