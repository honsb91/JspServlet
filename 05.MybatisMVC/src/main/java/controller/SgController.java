package controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sg.SgDAO;

@WebServlet("*.sg")
public class SgController extends HttpServlet {
	
	RequestDispatcher rd;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath().replace("/", "");
		SgDAO dao = new SgDAO();
		
		if(path.equals("list.sg")) {
			rd = req.getRequestDispatcher("sg/list.jsp");
			
			// HashMap 은 Map 인터페이스를 구현한 대표적인 Map 컬렉션
			// Map은 인터페이스를 상속하고 있기에 Map의 성질을 그대로 가지고 있음
			// Map은 Key 와 Value 으로 구성된 Entry 객체를 저장하는 구조를 가지고있는 자료구조
			// 여기서 Key 와 Value 은 모두 객체
			// 값은 중복 저장될 수 있지만 , 키는 중복 저장할 수 없음
			// 많은 양의 데이터를 검색하는데 있어서 뛰어난 성능을 보임
			HashMap<String, String> map = new HashMap<>();
			
			// HashMap 값 추가
			map.put("option", req.getParameter("option"));
			map.put("keyword", req.getParameter("keyword"));
			
			// setParameter , getParameter는 ※String Type※
			// set , getAttribute는 List Type을 불러옴
			req.setAttribute("option", map.get("option"));
			req.setAttribute("keyword", map.get("keyword"));
			
			req.setAttribute("list", dao.select(map));
			rd.forward(req, resp);	
		}else if(path.equals("insert.sg")) {
			rd = req.getRequestDispatcher("sg/insert.jsp");
			rd.forward(req, resp);
		}
		
		
		
	}
}
