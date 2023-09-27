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

@WebServlet("/signup")
public class SignupController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/WEB-INF/views/signup.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			req.setCharacterEncoding("UTF-8");
			
			String inputId = req.getParameter("inputId");
			String inputPw = req.getParameter("inputPw");
			String inputNickname = req.getParameter("inputNickname");

			MemberService service = new MemberService();
			
			int result = service.singup(inputId, inputPw, inputNickname);
			
			System.out.println(result);
			
			HttpSession session = req.getSession();
			
			if(result == 1) {
				session.setAttribute("message", "회원가입 성공");
				
				resp.sendRedirect("/");
			} else {
				session.setAttribute("message", "회원가입 실패");
				
				String referer = req.getHeader("referer");
				
				resp.sendRedirect(referer);
			}
	
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}

}
