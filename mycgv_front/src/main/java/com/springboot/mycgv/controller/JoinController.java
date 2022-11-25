package com.springboot.mycgv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.mycgv.dto.MemberDto;
import com.springboot.mycgv.service.MemberService;

@Controller
public class JoinController {
	
	@Autowired
	private MemberService memberService;
	
	/**
	 * id_check : 아이디 중복체크 처리 - Ajax 호출
	 */
//	@ResponseBody
//	@RequestMapping(value="/id_check", method=RequestMethod.GET)
//	public String idCheck(String id) {
//		int result = memberService.getIdCheck(id);
//		return String.valueOf(result);
//	}
	
	
	/**
	 * joinCheck : 회원가입 처리
	 */
//	@RequestMapping(value="/joinCheck", method=RequestMethod.POST)
//	public ModelAndView joinCheck(CgvMemberVO vo) {
//		ModelAndView mv = new ModelAndView();
//		
//		int result = memberService.getJoinResult(vo);
//		
//		if(result == 1){
//			mv.addObject("join_result","ok");
//			mv.setViewName("/login/login");
//		}else{
//			mv.setViewName("error_page");
//		}
//		
//		return mv;
//	}
	
	
	
	/**
	 * join : 회원가입 폼
	 */
	@GetMapping("/join")
	public String join() {
		return "/join/join";
	}
	
	@PostMapping("/join") //회원가입 등록처리
	public String joinPost(MemberDto memberDto) {
		
		memberService.getJoin(memberDto);
		return "redirect:/";
	}
	
}
