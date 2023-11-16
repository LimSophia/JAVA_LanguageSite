<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String data1 = request.getParameter("defaultCheck1");
String data2 = request.getParameter("defaultCheck2");
String data3 = request.getParameter("defaultCheck3");
String data4 = request.getParameter("defaultCheck4");

Cookie[] cooks = request.getCookies();

out.println("쿠키의 개수 : "+cooks.length + "<br>");
out.println("<hr>");

for(int count=0; count<cooks.length; count++){
	out.println("["+count+"] : ");
	out.println(cooks[count].getName()+"<br>");
	
	out.println("["+count+"] : ");
	out.println(cooks[count].getValue()+"<br>");
	out.println("<hr>");
}
	
%>
</body>
</html>