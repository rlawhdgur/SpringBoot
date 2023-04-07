package com.human.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.human.domain.Board;
import com.human.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping({"", "/"})
	public String doIndex() {
		
		return "index";
	}
	
	@GetMapping("/board/list")
	public String doList(Model model) throws Exception {
		
		List<Board> boardList = boardService.list();
		
		model.addAttribute("boardList", boardList);
		
		return "board/list";
	}
	
	@GetMapping("/board/write")
	public String doWrite() {
		
		return "board/write";
	}
	
	@PostMapping("/board/write")
	public String writePro(Board board) throws Exception {
		
		int result = boardService.write(board);
		
		if(result > 0) log.info("게시글 쓰기 성공..");
		else 			log.info("게시글 쓰기 실패..");
		
		return "redirect:/board/list";
		
	}
	
	// 게시글 읽기 - 화면
	@GetMapping("board/read")
	public String doRead(Model model, int boardNo) throws Exception {
		
		Board board = boardService.read(boardNo);
		
		model.addAttribute("board", board);
		
		return "/board/read";
	}
	
	// 게시글 수정 - 화면
	@GetMapping("/board/update")
	public String doUpdate(Model model, int boardNo) throws Exception {
		
		Board board = boardService.read(boardNo);
		
		model.addAttribute("board", board);
		
		return "/board/update";
	}
	
	// 게시글 수정 - 처리
	@PostMapping("/board/update")
	public String updatePro(Board board) throws Exception {
		
		int result = boardService.update(board);
		
		if(result > 0) log.info("게시글 수정 성공..");
		else 			log.info("게시글 쓰기 실패..");
		
		return "redirect:/board/list";
	}
	
	// 게시글 삭제 
	@PostMapping("/board/delete")
	public String doDelete(int BoardNo) throws Exception {
		
		int result = boardService.delete(BoardNo);
		
		if(result > 0) log.info("게시글 삭제 성공..");
		else 			log.info("게시글 삭제 실패..");
		
		return "redirect:/board/list";
	}
	
	
}
