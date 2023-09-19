<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib %>    


<!-- 

    <%@ %> : 지시자 태그

    taglib : 태그 라이브러리 추가
 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL(Jsp Standard Tag Library)</title>
</head>
<body>
    <h1>JSTL(Jsp Standard Tag Library, JSP 표준 태그 라이브러리)</h1>

    <pre>
        JSP에서 자주 사용되거나 공통적으로 사용되는
        Java코드 (if, for, 변수선언, 형변환)를

        <% %>(스크립틀릿) 대신 html 태그 형식을 태그화하여
        표준으로 제공하는 라이브러리
        (if, for 간단히 쓰고싶으면 이거 써라...)
    </pre>

    <h3>JSTL 라이브러리 등록 방법</h3>

    <ol>
        <li>
            <a href="https://tomcat.apache.org/download-taglibs.cgi">
                JSTL 다운로드 페이지 이동
            </a>
            JSTL 다운로드
        </li>

        <li>
            /webapp/WEB-INF/lib 폴더에 라이브러리 파일(.jar) 추가
        </li>

        <li>
            JSTL 라이브러리 사용하고자 하는 JSP 파일 상단에
            tablib JSP 지시자 태그를 추가
        </li>
    </ol>



    
</body>
</html>