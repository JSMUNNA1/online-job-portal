package com.servlet;

import java.io.IOException;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;
import com.mysql.cj.Session;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")

public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String em=req.getParameter("em");
			String pS=req.getParameter("ps");
			User u=new User();
			HttpSession session=req.getSession();
			
			
			if("munna123@gmail.com".equals(em)&&"munna123@".equals(pS)) {
				session.setAttribute("userobj", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");
				
			}else {
				
				UserDAO dao=new UserDAO(DBConnect.getConnection());
				
				User user=dao.login(em, pS);
				
				if(user!=null) {
					
				     session.setAttribute("userobj", user);
				     resp.sendRedirect("home.jsp");;
				}else {
					session.setAttribute("succMsg", "invalid Email & password");
					resp.sendRedirect("login.jsp");
				}
				
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	
	
}
