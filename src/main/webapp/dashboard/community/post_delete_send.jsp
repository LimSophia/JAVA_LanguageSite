<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
try
{
	// JDBC ����̹� ����
  	Class.forName("com.mysql.jdbc.Driver");

  	String DB_URL = "jdbc:mysql://localhost:3306/languagesite"; // �Ʊ� ���������� ���������� url�� ��������

	Connection con = DriverManager.getConnection(DB_URL, "root", "1234");
    
    // ���ڿ��� ���ڵ� ��� ����
    request.setCharacterEncoding("UTF-8");
    
    // �Ķ���͸� ���� ������ �Խñ� ��ȣ�� �޾ƿ�, num ������ ����
    String num = request.getParameter("num");
    
    // MySQL�� �����ϱ� ���� �������� insertQuery ���ڿ� ���� (�о�� �Խñ� ��ȣ�� ����, ������ �Խñ��� �ٽ��ѹ� ����(Ȯ��)��)
    String insertQuery = "DELETE FROM post WHERE num=" + num;
    
    // SQL �������� ���� (MySQL�� ����)�ϱ� ���� ��ü ����
 	PreparedStatement psmt = con.prepareStatement(insertQuery);

    // DELETE �Ͽ� �ݿ��� ���ڵ��� �Ǽ������ ��ȯ
    psmt.executeUpdate();
 	
    // ��� �Ϸ�Ǹ�, post_list.jsp(�� ���) ������ �ǵ��� �´�.
    response.sendRedirect("post_list.jsp");
}
catch (Exception ex)
{
	out.println("������ �߻��߽��ϴ�. ���� �޽��� : " + ex.getMessage());
}
%>
