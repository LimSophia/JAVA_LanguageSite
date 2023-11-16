package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class GreetingServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        // 사용자 입력 값 받기
        String username = request.getParameter("username");
        String message = request.getParameter("message");

        
        // 자바 빈즈 객체 생성 및 데이터 설정
        GreetingBean Greeting = new GreetingBean();
        Greeting.setusername(username);
        Greeting.setmessage(message);
        
        // 자바 빈즈 객체를 request 속성으로 설정하여 JSP로 전달
        request.setAttribute("Greeting", Greeting);


        
        // jsp로 포워딩
        request.getRequestDispatcher("greeting.jsp").forward(request, response);
    }
}