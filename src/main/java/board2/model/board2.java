package board2.model;

import java.util.Date;

public class board2 {
	
	private int num;    //seq
	private String writer;   //작성자id
	private String title;    //제목
	private String content;  //내용
	private int readcount;   //조회수
	private Date regdate;     //날짜
	
	//페이징처리
	private int startRow;  //시작 페이지( 1,11,21,31 ...)
	private int endRow;    //마지막 페이지 ( 10,20,30 ...)
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
	
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	
	
	
}