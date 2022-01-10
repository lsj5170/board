package board2.service;

public class PagingPgm { 
	
	private int total;   //총 게시글 수
	private int rowPerPage; //
	private int pagePerBlk = 10;
	private int currentPage; //현재페이지
	private int startPage; //페이징 시작
	private int endPage; //페이징 마지막
	private int totalPage; //페이징 개수
	
	
	//생성자
	public PagingPgm(int total, int rowPerPage, int currentPage) {
		
		this.total = total;
		this.rowPerPage = rowPerPage;
		this.currentPage = currentPage;
		
		totalPage = (int) Math.ceil((double) total/rowPerPage);
		startPage = currentPage - (currentPage - 1) % pagePerBlk;
		endPage = startPage + pagePerBlk -1;
		
		if(endPage > totalPage) {
			endPage = totalPage;
		}
		
	}


	public int getTotal() {
		return total;
	}


	public void setTotal(int total) {
		this.total = total;
	}


	public int getRowPerPage() {
		return rowPerPage;
	}


	public void setRowPerPage(int rowPerPage) {
		this.rowPerPage = rowPerPage;
	}


	public int getPagePerBlk() {
		return pagePerBlk;
	}


	public void setPagePerBlk(int pagePerBlk) {
		this.pagePerBlk = pagePerBlk;
	}


	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	public int getTotalPage() {
		return totalPage;
	}


	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	
	
	

}
