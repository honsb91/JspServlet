package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 정확한 구분자로 통해 해당 구분자로 끝나는 모든 요청을 받게 만드는게 가능
// String으로 하나의 문자열을 url맵핑으로 쓰는 경우 -> "/list"
// String 배열을 이용하여 .. @WebServlet( name = "usertbl" , urlPatterns = {"/list","/..", "/..",...}
// "/"를 제외하고 ->*.te

@WebServlet("*.te")
public class TestController extends HttpServlet {

	RequestDispatcher rd ; // 서블릿에서 다시 페이지로 요청을 넘길 때 사용 (Forward)

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("여기까지");
		if(req.getServletPath().equals("/list.te")) {
			rd = req.getRequestDispatcher("test/list.jsp"); // 요청에 필요한 처리중
			req.setAttribute("data","servletData");
			req.setAttribute("data2",123);
		}else if(req.getServletPath().equals("/new.te")) {
			rd = req.getRequestDispatcher("test/new.jsp");
		}else if(req.getServletPath().equals("/insert.te")){
			rd = req.getRequestDispatcher("test/list.jsp");
			//
			req.setAttribute("id", req.getParameter("id"));
			req.setAttribute("pw", req.getParameter("pw"));
		}else if(req.getServletPath().equals("/delete.te")){
			System.out.println("여기까지" + req.getParameter("deleteid"));
			resp.sendRedirect("list.te");
			return;
		}else {
			resp.getWriter().println("오류!");
		}
		rd.forward(req, resp); // 페이지 전환할때
	}
}
