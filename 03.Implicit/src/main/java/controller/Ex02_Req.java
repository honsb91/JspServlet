package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ex02")
public class Ex02_Req extends HttpServlet {
	RequestDispatcher rd;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("EX02까지옴");
		//response ( form 태그 , a 태그 등으로 들어오는 파라메터를 가지고 있다 ) getParameter < - 무조건 String
		String email = req.getParameter("email");
		String pw = req.getParameter("pw");
		
		if("admin".equals(email) && "admin1234".equals(pw)) {
			rd = req.getRequestDispatcher("request/ex03req.jsp");
		}else {
			rd = req.getRequestDispatcher("request/ex02req.jsp");
		}
		
		//Attribute 
		req.setAttribute("key", "data");
		
		ArrayList<String> list = new ArrayList<>();
		list.add("A");
		list.add("B");
		list.add("C");
		list.add("D");
		list.add("E");
		
		req.setAttribute("list", list);
		
		
		rd.forward(req, resp);
	}

}
