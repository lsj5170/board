package board2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board2.dao.board2Dao;
import board2.model.board2;

@Service
public class board2ServiceImpl implements board2Service {
	
	//dao객체만들기
	@Autowired
	private board2Dao bd2;

	
	//재정의
	
	//글작성
	@Override
	public int insert(board2 board2) {
		// TODO Auto-generated method stub
		return bd2.insert(board2);  //dao객체의 insert 메소드로가
	}

    //글목록
	@Override
	public List<board2> getBoard2List(board2 board2) {
		// TODO Auto-generated method stub
		return bd2.getBoard2List(board2);
	}

	//상세페이지
	@Override
	public board2 select(int num) {
		// TODO Auto-generated method stub
		return bd2.select(num);
	}

	//글삭제
	@Override
	public int delete(int num) {
		// TODO Auto-generated method stub
		return bd2.delete(num);
	}

	//글수정
	@Override
	public int update(board2 board2) {
		// TODO Auto-generated method stub
		return bd2.update(board2);
	}

	//조회수
	@Override
	public int readcount(int num) {
		// TODO Auto-generated method stub
		return bd2.readcount(num);
	}

	//총 게시물 개수
	@Override
	public int listcount(int num) {
		// TODO Auto-generated method stub
		return bd2.listcount(num);
	}
	
}