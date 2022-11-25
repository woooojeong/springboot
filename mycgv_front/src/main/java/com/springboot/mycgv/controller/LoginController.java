package com.springboot.mycgv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.mycgv.dto.MemberDto;
import com.springboot.mycgv.service.MemberService;

@Controller
public class LoginController {
	
	@Autowired
	private MemberService memberService;
	
	/**
	 * logout : 로그아웃
	 */
//	@RequestMapping(value="/logout", method=RequestMethod.GET)
//	public ModelAndView logout(HttpSession session) {
//		ModelAndView mv = new ModelAndView();
//		
//		//세션정보를 가져와서 sid 값이 null이 아니면 session.invalidate 메소드 호출
//		//String sid = (String)session.getAttribute("sid");
//		SessionVO svo = (SessionVO)session.getAttribute("svo");
//		
//		if(svo != null) {
//			session.invalidate();	//세션 정보 삭제
//			mv.addObject("logout_result","ok"); //index 페이지에서 logout_result 값을 받아서 ok인 경우 alert 창을 띄움
//		}
//		
//		mv.setViewName("/index");
//		
//		return mv;
//		
//	}
//	
	
	
	
	/**
	 * login
	 */
	
	/*로그인 폼*/
	@GetMapping("/login")
	public ModelAndView login(String auth) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("auth", auth);
		mv.setViewName("/login/login");
		return mv;
	}
	
	/*로그인 처리*/
	@PostMapping("/login") 
	public String loginPost(MemberDto memberDto) {
		
		memberService.getLogin(memberDto);
		return "redirect:/";
	}
	
	
}
