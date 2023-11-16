<%@ page import = "java.sql.*"%>

<%
Connection conn = null;
// 데이터베이스 연결 정보
String url = "jdbc:mysql://localhost:3306/languagesite";
String user = "root";
String passwd = "1234";

// 데이터베이스 연결
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(url, user, passwd);
%>