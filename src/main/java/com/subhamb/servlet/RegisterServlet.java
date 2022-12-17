package com.subhamb.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.subhamb.dao.UserDao;
import com.subhamb.db.HibernateUtil;
import com.subhamb.entity.User;

@WebServlet("/userRegister")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String fullName = req.getParameter("fullName");
		String emailId = req.getParameter("emailId");
		String password = req.getParameter("password");
		String about = req.getParameter("about");
		
		User u = new User(fullName, emailId, password, about);
		
		UserDao dao = new UserDao(HibernateUtil.getSessionFactory());
		boolean f = dao.saveUser(u);
		
		HttpSession session= req.getSession();
		
		if(f) {
			session.setAttribute("msg", "Registration Successfull");
			resp.sendRedirect("register.jsp");
		}
		else {
			session.setAttribute("msg", "OOPS, Something went wrong. Try Again Later...");
			resp.sendRedirect("register.jsp");
		}
		
		
		
	}
	  
}
