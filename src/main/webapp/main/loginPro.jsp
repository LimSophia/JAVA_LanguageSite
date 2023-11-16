<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ include file="../dbConn/dbConn.jsp" %>
<%
request.setCharacterEncoding("utf-8");

// JDBC 드라이버 로딩
Class.forName("com.mysql.jdbc.Driver");

// 로그인 처리
String inputUsername = request.getParameter("id");
String inputPassword = request.getParameter("password");



try

{
	String query = "SELECT * FROM user WHERE id = ? AND pw = ?";
	PreparedStatement pstmt = conn.prepareStatement(query);
	pstmt.setString(1, inputUsername);
	pstmt.setString(2, inputPassword);

	
	
	ResultSet rs = pstmt.executeQuery();
	

	if (rs.next()) {
	  // 로그인 성공
	  // 세션 기능!!!!!(1)
	  String name = rs.getString("name");
	  System.out.println(name);
	  session.setAttribute("name", name);

	  response.sendRedirect("../dashboard/insidePage.jsp"); // 로그인 성공 시 이동할 페이지
	} else {
	  // 로그인 실패
	  out.println("로그인 실패 : 아이디와 비밀번호가 틀립니다!");
	}


	// 연결, 자원 해제
	rs.close();
	pstmt.close();
	conn.close();
	//response.sendRedirect("../dashboard/insidePage.jsp"); // 다시 list.jsp를 실행시켜 새로운 정보를 업데이트 시킵니다.

}catch(SQLException e)

{

	out.println(e);

}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>