package com.servlet;

import java.io.IOException;

import com.DB.DBConnect;
import com.dao.JobDAO;
import com.dao.UserDAO;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		try {
		String name =req.getParameter("name");
		String qua=req.getParameter("qua");
		String email=req.getParameter("email");
		String pass=req.getParameter("ps");
		
		UserDAO uDao=new UserDAO(DBConnect.getConnection());
		User u=new User(name,qua,email,pass,"user");
		
		boolean f=uDao.addUser(u);
		HttpSession session=req.getSession();
		if(f) {
			session.setAttribute("succMsg", "Register Sussessfully");
			resp.sendRedirect("register.jsp");
		}else {
			session.setAttribute("succMsg", "Something Wrong on Server");
			resp.sendRedirect("register.jsp");
		}
		
		
	}catch (Exception e) {
		e.printStackTrace();
	}
		
		
		
		
	}

	
	
}
