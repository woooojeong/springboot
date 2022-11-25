package com.springboot.mycgv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.mycgv.dto.BoardDto;
import com.springboot.mycgv.service.BoardService;
import com.springboot.mycgv.service.FileService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	@Autowired
	private FileService fileService;
	
	/**
	 * board_delete : 게시판 삭제 화면
	 */
	/* 삭제 화면 */
	@GetMapping("/board_delete/{bid}")
	public String board_delete_get(@PathVariable String bid, Model model) {
		model.addAttribute("bid", bid);
		return "/board_delete";
	}
	
	/* 삭제 처리 */
	@PostMapping("/board_delete")
	public String board_delete_post(BoardDto dto) {
		String pageName = "";
		int result = boardService.getDelete(dto);
		if(result==1) pageName = "redirect:/board_list";
		
		return pageName; 
	}
	
	/**
	 * board_update : 게시판 수정 화면
	 */
	/* 수정 화면 */
	@GetMapping("/board_update/{bid}")
	public String board_update_get(@PathVariable String bid, Model model) {
		model.addAttribute("board", boardService.getContent(bid));
		return "/board_update";
	}
	
	/* 수정 처리 */
	@PostMapping("/board_update")
	public String board_update_post(BoardDto dto) throws Exception {
		if(fileService.fileCheck(dto.getFile1())) {
			String oldFile = dto.getBsfile(); //기존 bsfile
			dto = fileService.init(dto); //새로운 파일명 대체
			int result = boardService.getUpdate(dto);
			if(result == 1) {
				fileService.saveFile(dto); //새로운 파일을 저장
				fileService.deleteFile(oldFile); //기존 파일을 삭제
			}
		}else {
			boardService.getUpdate(dto);
		}
		return "redirect:/board_list";
	}
	
	/**
	 * board_write : 게시판 글쓰기 화면
	 */
	/* 게시글 화면 */
	@GetMapping("/board_write")
	public String board_write_get() {
		return "/board/board_write";
	}

	/* 게시글 등록처리 */
	@PostMapping("/board_write")
	public String board_write_post(BoardDto dto) throws Exception {
		
		if(fileService.fileCheck(dto.getFile1())) {
			dto = fileService.init(dto);
			int result = boardService.getInsert(dto);
			System.out.println("result="+result);
			if(result == 1) {
				fileService.saveFile(dto);
			}
		}else { 
			dto.setBfile("");
			dto.setBsfile("");
			boardService.getInsert(dto);
		}
		return "redirect:/board/board_list";
	}
		
	
	/**
	 * board_content : 게시판 상세 정보
	 */
	@GetMapping("/board_content/{bid}")
	public String board_content(@PathVariable String bid, Model model) {
		model.addAttribute("board", boardService.getContent(bid));
		
		return "/board/board_content";
	}
	
	/**
	 * board_list : 게시판 전체 리스트 
	 */
	@GetMapping("/board_list")
	public String board_list(Model model) {
		model.addAttribute("list", boardService.getList());
		return "/board/board_list";
	}
}
