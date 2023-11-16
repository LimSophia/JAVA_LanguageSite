<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="../dbConn/dbConn.jsp" %>

<%
//JDBC 드라이버 로딩
Class.forName("com.mysql.jdbc.Driver");

request.setCharacterEncoding("utf-8");

String u_id = request.getParameter("UserID");
String u_pw = request.getParameter("UserPW");


try

{
	String sql = "delete from user WHERE id = ?";
	PreparedStatement sm = conn.prepareStatement(sql);
	sm.setString(1, u_id);
	
	out.println(u_id);
	int count =sm.executeUpdate();


	if (count == 1) {
	  // 탈퇴 완료
	  out.print("회원 탈퇴에 성공하였습니다.");
	  response.sendRedirect("../main/mainPage.jsp"); // 로그인 성공 시 이동할 페이지
	} else {
	  // 로그인 실패
	  out.println("탈퇴 실패");
	}

	// 연결, 자원 해제
	sm.close();
	conn.close();

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