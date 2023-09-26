package edu.kh.member.model.service;

import java.sql.Connection;

import static edu.kh.todo.common.JDBCTemplate.*;
import edu.kh.member.model.dao.MemberDAO;
import edu.kh.member.model.dto.Member;

public class MemberService {

	private MemberDAO dao = new MemberDAO();
	

	public Member login(String inputId, String inputPw) throws Exception {
		
		Connection conn = getConnection();
		
		Member loginMember = dao.login(conn, inputId, inputPw);
		
		close(conn);
		
		return loginMember;
	}


	public int singup(String inputId, String inputPw, String inputNickname) throws Exception {

		Connection conn = getConnection();
		
		int result = dao.singup(conn, inputId, inputPw, inputNickname);
		
		close(conn);
		
		return result;
	}


}
