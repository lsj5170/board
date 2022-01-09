package board2.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import board2.model.board2;

@Repository
public class board2DaoImpl implements board2Dao {
	
	//session 객체
	@Autowired
	private SqlSessionTemplate st;

	//재정의
	
	//글작성
	@Override
	public int insert(board2 board2) {
		// TODO Auto-generated method stub
		return st.insert("board2.insert", board2);
	}

	//글목록
	@Override
	public List<board2> getBoard2List(board2 board2) {
		// TODO Auto-generated method stub
		return st.selectList("board2.board2_list", board2);
	}

	//상세페이지
	public board2 select(int num) {
		// TODO Auto-generated method stub
		return st.selectOne("board2.select", num);
	}

	//글삭제
	@Override
	public int delete(int num) {
		// TODO Auto-generated method stub
		return st.delete("board2.delete", num);
	}

	//글수정
	@Override
	public int update(board2 board2) {
		// TODO Auto-generated method stub
		return st.update("board2.update", board2);
	}
	
}