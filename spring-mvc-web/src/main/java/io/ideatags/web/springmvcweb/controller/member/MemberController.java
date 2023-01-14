package io.ideatags.web.springmvcweb.controller.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import io.ideatags.web.springmvcweb.service.member.memberService;
import io.ideatags.web.springmvcweb.vo.MemberVo;

@Controller
public class MemberController {
	
	@Autowired
	private memberService memberService;

	// -- 화면 출력
	@RequestMapping("/member/memberRegister.do")
	public String memberRegister(Model model,MemberVo insertMemberVo) {
			
			
//				@RequestParam(value="userName", required=false) String userName,
//				@RequestParam(value="userPwd", required=false) String userPwd,
//				@RequestParam(value="userEmail", required=false) String userEmail
//				) {
		// HttpServletRequest request) {
		// -- WEB-INF/jsp/member/memberRegist.jsp
		// -- member/memberRegist
		// -- prefix : WEB-INF/jsp/
		// -- suffix : .jsp
		
		// 1번방법 request 객체 이용
//		String userName = request.getParameter("userName");
//		String userPwd   = request.getParameter("userPwd");
//		String userEmail = request.getParameter("userEmail");
		
		// 2번 방법 
		// RequestParam 어노테이션 사용
//		if(userName != null && userPwd != null && userEmail != null) {
//			MemberVo insertMemberVo = new MemberVo();
//			insertMemberVo.setUserEmail(userEmail);
//			insertMemberVo.setUserName(userName);
//			insertMemberVo.setUserPwd(userPwd);	
//			memberService.setMember(insertMemberVo);
//		}
			
		if(insertMemberVo != null) memberService.setMember(insertMemberVo);
		
		
		List<MemberVo> memberAllList = memberService.getMemberListAll(null);
		model.addAttribute("memberList", memberAllList);
		
		return "member/memberRegister";
	}
}
