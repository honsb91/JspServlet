package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.er") //er로 끝나는 모든 것들이 여기로 와야 한다
public class ErrorController extends HttpServlet {
	RequestDispatcher rd;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 여기까지 왓는지 봐야함
		System.out.println("에러");
//		Integer code = (Integer) req.getAttribute("javax.servlet.error.stauts_code");
//		System.out.println(code); <= 현재는 페이지 분기를 web.xml을 이용해서 처리하면 좋음
		
		if(req.getServletPath().equals("/404.er")) {
			rd = req.getRequestDispatcher("error/404.jsp");
		}else if(req.getServletPath().equals("/500.er")) {
			rd = req.getRequestDispatcher("error/500.jsp"); 
		}
		rd.forward(req, resp);
	}

}
