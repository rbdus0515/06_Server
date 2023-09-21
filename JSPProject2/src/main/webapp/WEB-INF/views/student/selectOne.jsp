<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원하는 학과 검색</title>

	<style>
		table {
			border-collapse: collapse;
		}
	</style>
	
</head>
<body>

	<h1>검색한 학생 전체 목록</h1>

	<table border="1">
		<tr>
			<th>번호</th>
			<th>학번</th>
			<th>이름</th>
			<th>주소</th>
			<th>학과</th>
		</tr>
		
		<c:forEach var="std" items="${stdList}" varStatus="vs">
			<tr>
				<td>${vs.count}</td>
				
				<td>${std.studentNo}</td>
				
				<td>${std.studentName}</td>
				
				<td>${std.studentAddress}</td>
				
				<td>${std.departmentName}</td>
			</tr>
		</c:forEach>
		
		
	</table>

</body>
</html>