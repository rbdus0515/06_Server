package edu.kh.project.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.project.member.model.dto.Member;
import edu.kh.project.member.model.service.MemberService;

@WebServlet("/member/search")
public class MemberSearchController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String inputNickname = req.getParameter("inputNickname");
			
			MemberService service = new MemberService();
			
			Member searchMember = service.search(inputNickname);
			
			if(searchMember != null) {
				
			} else {

			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
