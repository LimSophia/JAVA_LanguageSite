<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <h1>세션 로그아웃</h1>
    
    <%-- 현재 로그인된 사용자 이름 출력 --%>
    <p>현재 로그인된 사용자: <%= session.getAttribute("name") %></p>
    
    <%-- 로그아웃 버튼 --%>
    <form method="post" action="../main/mainPage.jsp">
        <input type="submit" value="로그아웃">
    </form>
</body>
</html>