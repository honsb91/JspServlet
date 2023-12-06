package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/scope")
public class ScopeController extends HttpServlet {
	RequestDispatcher rd;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("request", "REQ_DATA");
		HttpSession session = req.getSession();
		session.setAttribute("session", "SESSION_DATA");
		
		rd = req.getRequestDispatcher("scope/list.jsp");
		rd.forward(req, resp);
	}
}
