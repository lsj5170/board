package board2.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import board2.dao.board2Dao;
import board2.model.board2;
import board2.service.PagingPgm;
import board2.service.board2Service;

@Controller
public class board2Cont {
	
	@Autowired
	private board2Service bs2;
	
	//시작페이지
	@RequestMapping("board2List.do")
	public String board2ListMain() {
		return "redirect:board2List.do/pageNum/1";
	}
	

	//글목록페이지
	@RequestMapping("board2List.do/pageNum/{pageNum}")
	public String board2List(board2 board2, Model model,@PathVariable String pageNum, HttpServletRequest request) throws Exception {
		System.out.println("board2List 까지 OK");
		
		
		//페이징처리
		 final int rowPerPage = 10; //한개의 페이징당 게시글 개수
		  
		 if(pageNum == null || pageNum.equals("")) { 
			 pageNum = "1"; 
			 } 
		 
		 int currentPage = Integer.parseInt(pageNum); //현재페이지
		 int total = bs2.listcount(board2); //총 게시물수
		 int startRow = (currentPage -1)* rowPerPage +1; //시작페이징 
		 int endRow = startRow + rowPerPage - 1;  //끝페이징
		 PagingPgm pp = new PagingPgm(total, rowPerPage, currentPage);
		 board2.setStartRow(startRow); 
		 board2.setEndRow(endRow);
		
		 int no = total - startRow +1;
		
		 
	   List<board2> board2list = new ArrayList<board2>();
	   board2list = bs2.getBoard2List(board2); 

		
		model.addAttribute("board2list", board2list);
		model.addAttribute("no", no);
		model.addAttribute("pp", pp);
		
		return "board2/board2List";
	}
	
	//글작성페이지
	@RequestMapping("board2WritePage.do")
	public String board2WritePage(Model model, board2 board2) throws Exception {
		System.out.println("board2WritePage 까지 OK");

		return "board2/board2Write";
	}
	
	//글작성
	@RequestMapping("board2Write.do")
	public String board2Write(Model model, board2 board2) throws Exception {
		System.out.println("board2Write 까지 OK");
	
		int result = bs2.insert(board2);
		
		System.out.println("board2Write mapper 다녀옴 OK");
		
		model.addAttribute("result", result);
		
		return "redirect:/board2List.do";
	}
	
	//상세페이지  (여기서 num은 db에 있는데이터를 호출하기위한 no / pageNum은 view페이지에서 보이는 게시글을 호출하기 위한 no)
	@RequestMapping("board2Detail.do/num/{num}/pageNum/{pageNum}")
	public String board2Detail(Model model, @PathVariable int num, @PathVariable String pageNum) throws Exception {
		System.out.println("board2Detail 까지 OK");

		//조회수
		bs2.readcount(num);
				
		board2 board2list = bs2.select(num);
		
		model.addAttribute("board2list", board2list);
		model.addAttribute("pageNum", pageNum);
		
		System.out.println(board2list.getTitle());
		System.out.println(board2list.getContent());
//		System.out.println(board2.getTitle());
//		System.out.println(board2.getContent());
		
		return "board2/board2Detail";
	}
	
	//글삭제
	@RequestMapping("board2Delete.do/num/{num}")
	public String board2Delete(Model model, board2 board2, @PathVariable int num) throws Exception {
		System.out.println("board2Delete 까지 OK");
		
	    bs2.delete(num);
	    System.out.println("board2Delete 삭제 OK");
	    

		return "redirect:/board2List.do";
	}
	
	//글수정폼
	@RequestMapping("board2UpdateForm.do/num/{num}/pageNum/{pageNum}")
	public String board2UpdateForm( Model model, @PathVariable int num, @PathVariable String pageNum) throws Exception {
		System.out.println("board2UpdateForm 까지 OK");
			
		board2 board2list = bs2.select(num);
		
		System.out.println(board2list.getTitle());
		System.out.println(board2list.getContent());
//		System.out.println(board2.getTitle());
//		System.out.println(board2.getContent());
		
	    model.addAttribute("board2list", board2list);
	    model.addAttribute("pageNum", pageNum);
	    	    
		return "board2/board2Update";
	}
	
	//글수정
	@RequestMapping("board2Update.do/pageNum/{pageNum}")
	public String board2Update(Model model, board2 board2, @PathVariable String pageNum) throws Exception {
		System.out.println("board2Update 까지 OK");
		
//		board2 board2list = bs2.select(num);
		
//		System.out.println(board2list.getTitle());
//		System.out.println(board2list.getContent());
		System.out.println(board2.getTitle());
		System.out.println(board2.getContent());
		
	    int result = bs2.update(board2);
	    System.out.println("board2Update 수정 OK");
	    System.out.println("result:"+result);
	    
	    model.addAttribute("result", result);
	    model.addAttribute("pageNum", pageNum);
	    
	    return "redirect:/board2List.do";
	}
	

	
	
	
	
}