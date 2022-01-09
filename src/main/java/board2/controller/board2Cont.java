package board2.controller;

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
import board2.service.board2Service;

@Controller
public class board2Cont {
	
	@Autowired
	private board2Service bs2;
	

	//글목록페이지
	@RequestMapping("board2List.do")
	public String board2List(board2 board2, Model model) throws Exception {
		System.out.println("board2List 까지 OK");
		
		List<board2> board2list = new ArrayList<board2>();
		board2list = bs2.getBoard2List(board2);
		
		model.addAttribute("board2list", board2list);
		
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
	
	//상세페이지
	@RequestMapping("board2Detail.do/num/{num}")
	public String board2Detail(board2 board2, Model model, @PathVariable int num, HttpServletRequest request) throws Exception {
		System.out.println("board2Detail 까지 OK");

		board2 board2list = bs2.select(num);
		
		model.addAttribute("board2list", board2list);
		
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
	@RequestMapping("board2UpdateForm.do/num/{num}")
	public String board2UpdateForm(Model model, board2 board2, @PathVariable int num) throws Exception {
		System.out.println("board2UpdateForm 까지 OK");
		
		board2 board2list = bs2.select(num);
		
	    model.addAttribute("board2list", board2list);
	    
		return "board2/board2Update";
	}
	
	//글수정
	@RequestMapping("board2Update.do/num/{num}")
	public String board2Update(Model model, board2 board2, @PathVariable int num) throws Exception {
		System.out.println("board2Update 까지 OK");
		
	    int result = bs2.update(board2);
	    System.out.println("board2Update 수정 OK");
	    
	    return "redirect:/board2List.do";
	}
	

	
	
	
	
}