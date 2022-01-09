package board2.service;

import java.util.List;

import board2.dao.board2Dao;
import board2.model.board2;

public interface board2Service {

	
	//추상메소드
	//타입 메소드이름(매개변수);
	
	//글작성
	int insert(board2 board2);
	
	//글목록
	List<board2> getBoard2List(board2 board2);
	
	//상세페이지
	board2 select(int num);
	
	//글삭제
	int delete(int num);
	
	//글수정
	int update(board2 board2);
	
	
	
}
