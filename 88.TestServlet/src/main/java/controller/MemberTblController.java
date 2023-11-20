package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import membertbl.MemberTblDAO;
import membertbl.MemberTblDTO;


@WebServlet(name = "membertbl", urlPatterns = {"/list", "/detail" , "/update"})
public class MemberTblController extends HttpServlet {

	RequestDispatcher rd;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

	// 조회 화면 출력 코드
	MemberTblDAO dao = new MemberTblDAO();
	if (req.getServletPath().equals("/list")) {
		ArrayList<MemberTblDTO> list = dao.selectList();
		req.setAttribute("list", list);
		rd = req.getRequestDispatcher("nsb/list.jsp");
	}
	resp.sendRedirect("list");
	return;
}
	
}
