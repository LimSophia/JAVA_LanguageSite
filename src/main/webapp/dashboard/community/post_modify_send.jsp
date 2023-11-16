<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
    
    // �Ķ���͸� ���� ������ �ۼ���, ����, ���� ������ �޾ƿ� �� ���ڿ� ������ ����
    String writer = request.getParameter("writer");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    
    // �Ķ���͸� ���� ������ �Խñ� ��ȣ�� �޾ƿ�, num ������ ����
    String num = request.getParameter("num");
    
    // MySQL�� �����ϱ� ���� �������� insertQuery ���ڿ� ���� (�о�� �Խñ� ��ȣ�� ����, ������ �Խñ��� �ٽ��ѹ� ����(Ȯ��)��)
    String insertQuery = "SELECT * FROM post WHERE num=" + num;
    
    // SQL �������� ���� (MySQL�� ����)�ϱ� ���� ��ü ����
    PreparedStatement psmt = con.prepareStatement(insertQuery);
 	
    // ��ȸ�� ��������� �����ϱ� ���� ResultSet ��ü ����
    ResultSet result = psmt.executeQuery();
 	
    // �޾ƿ� ������ ������
    while(result.next())
    {
        // MySQL�� �����ϱ� ���� �������� insetQuery ���ڿ� ���� (����ڰ� post_modify.jsp ������ ������ ������ ����)
        insertQuery = "UPDATE post set title=?, writer=?, content=? WHERE num=" + num;
 	    
        // SQL ��������, ���ο� ������ ���� �����
        psmt = con.prepareStatement(insertQuery);
        
        // VALUES ? ���� �ϳ��� �����Ͽ� ����
        psmt.setString(1, title);
        psmt.setString(2, writer);
        psmt.setString(3, content);
        
        // INSERT �Ͽ� �ݿ��� ���ڵ��� �Ǽ������ ��ȯ
        psmt.executeUpdate();
        
        // ��� �Ϸ�Ǹ�, post_list.jsp(�� ���) ������ �ǵ��� �´�.
        response.sendRedirect("post_list.jsp");
 	}
}
catch (Exception ex)
{
    out.println("������ �߻��߽��ϴ�. ���� �޽��� : " + ex.getMessage());
}
%>
