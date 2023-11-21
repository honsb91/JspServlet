package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.mytbl")
public class MybatisTblController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		if(path.equals("/insert.mytbl")) { //CREATE
			//1. DAO 호출 
			//2. 페이지 요청 (URL요청)
		}else if(path.equals("/update.mytbl")) { //UPDATE
			//1. DAO 호출 
			//2. 페이지 요청 (URL요청)
		}else if(path.equals("/delete.mytbl")) { //DELETE
			//1. DAO 호출 
			//2. 페이지 요청 (URL요청)
		}else if(path.equals("/select.mytbl")) { //READ
			
		}

	}
}
