package com.springboot.mycgv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.mycgv.dto.NoticeDto;
import com.springboot.mycgv.dto.PageDto;
import com.springboot.mycgv.service.FileService;
import com.springboot.mycgv.service.NoticeService;
import com.springboot.mycgv.service.PageService;

@Controller
public class AdminController {
	
	@Autowired
	private PageService pageService;
	
	@Autowired
	private FileService fileService;
	
	@Autowired
	private NoticeService noticeService;
	
	

	@GetMapping("/admin")
	public String admin() {
		return "/admin/admin";
	}
	
	@GetMapping("/admin_member_list")
	public String admin_member_list() {
		return "/admin/admin_member/admin_member_list";
	}
	
	@GetMapping("/admin_movie_list")
	public String admin_movie_list() {
		return "/admin/admin_movie/admin_movie_list";
	}
	
	
	
	/**
	 * admin_notice
	 */
	
	
	/*
	 * list
	 */
	@GetMapping("/admin_notice_list")
	public String admin_notice_list_root(){
		return "redirect:/admin_notice_list/1";
	}
	
	@GetMapping("/admin_notice_list/{rpage}")
	public String admin_notice_list(@PathVariable String rpage, Model model){
		PageDto pageDto = pageService.getPageCount(rpage, "notice");
		
		model.addAttribute("list", noticeService.noticeList(pageDto));
		model.addAttribute("page", pageDto);
		
		
		return "/admin/admin_notice/admin_notice_list";
	}
	
	
	/*
	 * content
	 */
	
	@GetMapping("/admin_notice_content/{nid}/{rpage}")
	public String admin_notice_content(@PathVariable String nid, @PathVariable String rpage, Model model) {
		
		model.addAttribute("vo", noticeService.noticeContent(nid));
		model.addAttribute("rpage", rpage);
		noticeService.updateHits(nid);
		
		
		return "/admin/admin_notice/admin_notice_content";
	}
	
	/*
	 * write
	 */
	
	@GetMapping("/admin_notice_write")
	public String admin_notice_write() {
		return "/admin/admin_notice/admin_notice_write";
	}
	
	@PostMapping("/admin_notice_write")
	public String admin_notice_write_post(NoticeDto noticeDto) throws Exception{
		
		if(fileService.fileCheck(noticeDto.getFile1())) {
			
			noticeDto = (NoticeDto)fileService.init(noticeDto, "notice");
			
			int result = noticeService.noticeWrite(noticeDto);
			if(result == 1) fileService.saveFile(noticeDto, "notice");
			
		}else {
			noticeDto.setNfile("");
			noticeDto.setNsfile("");
			noticeService.noticeWrite(noticeDto);
		}
		
		return "redirect:/admin_notice_list/1";
		
	}
	
	/*
	 * update
	 */
	
	
	@GetMapping("/admin_notice_update/{nid}/{rpage}")
	public String admin_notice_update(@PathVariable String nid, @PathVariable String rpage, Model model) {
		
		model.addAttribute("vo", noticeService.noticeContent(nid));
		model.addAttribute("rpage", rpage);
		
		return "/admin/admin_notice/admin_notice_update";
		
	}
	
	@PostMapping("/admin_notice_update")
	public String admin_notice_update_post(NoticeDto noticeDto) throws Exception {
		
		if(fileService.fileCheck(noticeDto.getFile1())) {
			
			String oldFile = noticeDto.getNsfile();
			noticeDto = (NoticeDto)fileService.init(noticeDto, "notice");
			
			int result = noticeService.noticeUpdate(noticeDto);
			if(result == 1) {
				fileService.saveFile(noticeDto, "notice");
				fileService.deleteFile(oldFile);
			}
			
			
		}else {
			noticeService.noticeWrite(noticeDto);
		}
		
		return "redirect:/admin_notice_list/1";
	}
	
	@GetMapping("/admin_notice_delete/{nid}/{rpage}")
	public String admin_notice_delete(@PathVariable String nid, @PathVariable String rpage, Model model) {
		
		model.addAttribute("nid", nid);
		model.addAttribute("rpage", rpage);
		model.addAttribute("nsfile", noticeService.noticeContent(nid).getNsfile());
		
		return "/admin/admin_notice/admin_notice_delete";
		
	}
	
	@PostMapping("/admin_notice_delete")
	public String admin_notice_delete_post(NoticeDto noticeDto) throws Exception{
		
		int result = noticeService.noticeDelete(noticeDto);
		if(result == 1) 
			if(noticeDto.getNsfile() != null) {				
				fileService.deleteFile(noticeDto.getNsfile());
			}
		
		return "redirect:/admin_notice_list/1";
		
	}
	
	
}
