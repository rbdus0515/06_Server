package edu.kh.project.member.model.service;

import java.sql.Connection;

import static edu.kh.project.common.JDBCTemplate.*;
import edu.kh.project.member.model.dao.MemberDAO;
import edu.kh.project.member.model.dto.Member;

public class MemberService {
	
	private MemberDAO dao = new MemberDAO();

	/** 로그인 서비스
	 * @param inputEmail
	 * @param inputPw
	 * @return loginMember
	 */
	public Member login(String inputEmail, String inputPw) throws Exception {
		
		Connection conn = getConnection();
		
		Member loginMember = dao.login(conn, inputEmail, inputPw);
		
		close(conn);
		
		return loginMember;
	}

}