<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ include file="../dbConn/dbConn.jsp" %>

<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("username");
String id = request.getParameter("userid");
String pw = request.getParameter("password");
String email = request.getParameter("email");
String brith = request.getParameter("userbrith");
String gender = request.getParameter("gender");
String add_num = request.getParameter("add_num");
String add = request.getParameter("add");
String add_detail = request.getParameter("add_detail");
String add_refer = request.getParameter("add_refer");

try

{
	Class.forName("com.mysql.jdbc.Driver");

	String DB_URL = "jdbc:mysql://localhost:3306/languagesite"; // 아까 예제에서와 마찬가지로 url을 설정하죠

	

	Connection con = DriverManager.getConnection(DB_URL, "root", "1234");
	String sql = "INSERT INTO user VALUES"; // sql문 작성(id와 name, pwd값들을 보내기위한 작업)
	sql += "('"+0+"','"+name+"','"+id+"','"+pw+"','"+email+"','"+brith
	+"','"+gender+"','"+add_num+"','"+add+"','"+add_detail+"','"+add_refer+"')";

	Statement sm = conn.createStatement();

	sm.executeUpdate(sql); // sql문 실행(회원추가 실행)

	String query = "SELECT * FROM user WHERE id = ? AND pw = ?";
	PreparedStatement pstmt = conn.prepareStatement(query);
	pstmt.setString(1, id);
	pstmt.setString(2, pw);

	
	
	ResultSet rs = pstmt.executeQuery();
	

	if (rs.next()) {
	  // 로그인 성공
	  // 세션 기능!!!!!(1)
	  String name1 = rs.getString("name");
	  System.out.println(name);
	  session.setAttribute("name", name1);


	} else {
	  // 로그인 실패
	  out.println("로그인 실패 : 아이디와 비밀번호가 틀립니다!");
	}
	response.sendRedirect("../dashboard/insidePage.jsp"); // 로그인 성공 시 이동할 페이지	
	sm.close();
	conn.close();

}
catch(SQLException e)

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