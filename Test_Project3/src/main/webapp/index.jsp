<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 세션 객체에 저장된 세션 아이디(sId) 가져와서 변수에 저장
String sId = (String)session.getAttribute("sId"); // 또는 toString()
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		margin: auto;
		text-align: center;
	}
</style>
</head>
<body>
	<header>
		<div align="right">
			<h4>
			<!-- 세션 아이디 존재 여부에 따라 다른 메뉴 출력 -->
			<%if(sId == null || sId.equals("")) { %>
				<!-- 1) 세션 아이디가 없을 경우(미로그인 시) 로그인, 회원가입 링크 표시 -->
				<a href="./MemberLoginForm.me">로그인</a> | <a href="./MemberJoinForm.me">회원가입</a>
			<%} else { %>
				<!-- 2) 세션 아이디가 있을 경우(로그인 시) 회원아이디, 로그아웃 링크 표시 -->
				<a href=""><%=sId %></a> | <a href="./MemberLogout.me">로그아웃</a>
				<!-- 만약, 세션 아이디값이 "admin" 일 경우 "관리자페이지" 링크 표시 -->
				<%if(sId.equals("admin")) { %>
					| <a href="./AdminMain.ad">관리자페이지</a>
				<%} %>
			<%} %>
			</h4>
		</div>
	</header>
	<h1>MVC 게시판</h1>
	<h3><a href="./BoardWriteForm.bo">게시판 글쓰기</a></h3>
	<h3><a href="./BoardList.bo">게시판 글목록</a></h3>
</body>
</html>











