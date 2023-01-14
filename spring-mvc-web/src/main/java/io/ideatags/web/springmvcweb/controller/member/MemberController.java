package io.ideatags.web.springmvcweb.controller.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import io.ideatags.web.springmvcweb.service.member.memberService;
import io.ideatags.web.springmvcweb.vo.MemberVo;

@Controller
public class MemberController {
	
	@Autowired
	private memberService memberService;

	// -- 화면 출력
	@RequestMapping("/member/memberRegister.do")
	public String memberRegister(Model model) {
		// -- WEB-INF/jsp/member/memberRegist.jsp
		// -- member/memberRegist
		// -- prefix : WEB-INF/jsp/
		// -- suffix : .jsp
		
		List<MemberVo> memberAllList = memberService.getMemberListAll(null);
		model.addAttribute("memberList", memberAllList);
		
		return "member/memberRegister";
	}
}
