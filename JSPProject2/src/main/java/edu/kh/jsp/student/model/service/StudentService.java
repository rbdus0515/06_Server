package edu.kh.jsp.student.model.service;

import static edu.kh.jsp.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import edu.kh.jsp.student.model.dao.StudentDAO;
import edu.kh.jsp.student.model.dto.Student;

public class StudentService {
	
	// DAO 필드에 생성
	private StudentDAO dao = new StudentDAO();

	public List<Student> selectAll() throws Exception {
		
		// 1. 커넥션 생성
		Connection conn = getConnection();
		
		// 2. DAO 호출
		List<Student> stdList = dao.selecAll(conn);
		
		// 3. 트랜젝션 제어 select 라 필요없음
		
		//4. Connection 반환
		close(conn);
		
		return stdList;
	}

	public List<Student> selectArch() throws Exception {
		
		Connection conn = getConnection();
		
		List<Student> archList = dao.selectArch(conn);
		
		close(conn);
		
		return archList;
	}

	public List<Student> selectOne(String deptName) throws Exception {
		
		Connection conn = getConnection();
		
		List<Student> stdList = dao.selectOne(conn, deptName);
		
		close(conn);
		
		return stdList;
	}


}
