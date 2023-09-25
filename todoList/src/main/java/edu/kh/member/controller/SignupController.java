package edu.kh.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.member.model.dto.Member;
import edu.kh.member.model.service.MemberService;

@WebServlet("/member/singup")
public class SignupController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String memberId = null;
		String memberPw = null;
		String memberPwRe = null;
		String memberNickname = null;
		
		try {
			
			String inputId = req.getParameter("inputId");
			String inputPw = req.getParameter("inputPw");
			String inputNickname = req.getParameter("inputNickname");
			
			MemberService service = new MemberService();
			
			Member signupMember = service.signup(inputId, inputPw, inputNickname);
			
			HttpSession session = req.getSession();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
