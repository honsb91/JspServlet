package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hr.HrDAO;


@WebServlet("*.jstl")
public class JstlController extends HttpServlet {
	RequestDispatcher rd; // 페이지 전환을 위한
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
			rd = req.getRequestDispatcher("jstl/list.jsp");
			rd.forward(req, resp);
			
		}
	}