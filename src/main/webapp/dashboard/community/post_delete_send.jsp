<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
try
{
	// JDBC 드라이버 연결
  	Class.forName("com.mysql.jdbc.Driver");

  	String DB_URL = "jdbc:mysql://localhost:3306/languagesite"; // 아까 예제에서와 마찬가지로 url을 설정하죠

	Connection con = DriverManager.getConnection(DB_URL, "root", "1234");
    
    // 문자열의 인코딩 방식 결정
    request.setCharacterEncoding("UTF-8");
    
    // 파라미터를 통해 전해진 게시글 번호를 받아와, num 변수에 저장
    String num = request.getParameter("num");
    
    // MySQL로 전송하기 위한 쿼리문인 insertQuery 문자열 선언 (읽어온 게시글 번호를 통해, 수정할 게시글을 다시한번 결정(확인)함)
    String insertQuery = "DELETE FROM post WHERE num=" + num;
    
    // SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
 	PreparedStatement psmt = con.prepareStatement(insertQuery);

    // DELETE 하여 반영된 레코드의 건수결과를 반환
    psmt.executeUpdate();
 	
    // 모두 완료되면, post_list.jsp(글 목록) 폼으로 되돌아 온다.
    response.sendRedirect("post_list.jsp");
}
catch (Exception ex)
{
	out.println("오류가 발생했습니다. 오류 메시지 : " + ex.getMessage());
}
%>
