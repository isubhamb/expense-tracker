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


@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("emailId");
		String password = req.getParameter("password");
		
		UserDao dao = new UserDao(HibernateUtil.getSessionFactory());
		User u =dao.login(email, password);
		
		HttpSession session = req.getSession();
		
		
		if(u==null) {
		    session.setAttribute("msg", "Invalid Credentials." );
		    resp.sendRedirect("login.jsp");
		}
		else {
			session.setAttribute("loginUser", u );
			resp.sendRedirect("user/home.jsp");
		}
	}

}