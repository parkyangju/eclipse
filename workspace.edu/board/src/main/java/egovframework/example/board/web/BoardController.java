package egovframework.example.board.web;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.example.board.service.BoardService;
import egovframework.example.board.service.BoardVO;

@Controller
public class BoardController {
	
	@Resource(name = "boardService")
	private BoardService boardService;
	
	@RequestMapping(value ="/list.do")
	public String list(BoardVO boardVO, Model model) throws Exception {
		
		List<?> list=boardService.selectBoardList(boardVO);
		model.addAttribute("list", list);

		// Controller - Service - DAO
		return "board/list"; //forward - list.jsp
	}
	
	@RequestMapping(value ="/mgmt.do", method=RequestMethod.GET) //하나는 get방식 하나는 post방식
	public String mgmt(Model model) throws Exception {

		// Controller - Service - DAO
		SimpleDateFormat sfd = new SimpleDateFormat("yyyyMMdd");
		Calendar cal = Calendar.getInstance();
		String strToday=sfd.format(cal.getTime());
		
		model.addAttribute("strToday", strToday);
		return "board/mgmt"; //mgmt.jsp
	}
	
	 @RequestMapping(value="/mgmt.do", method=RequestMethod.POST) //회원 가입,하나는 get방식 하나는 post방식
	   public String mgmt2(@ModelAttribute("boardVO") BoardVO boardVO, Model model) throws Exception{//parameter 받아오는것
	      
	      // DAO연동 해서 데이터 가져오는 작업
	      // Controller - Service - DAO
	      boardService.insertBoard(boardVO);
	      return "redirect:/list.do";
	}
	
	@RequestMapping(value ="/view.do")
	public String view(Model model) throws Exception {

		// Controller - Service - DAO
		return "board/view";
	}
}
