package com.subhamb.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.subhamb.dao.ExpenseDao;
import com.subhamb.db.HibernateUtil;

@WebServlet("/deleteExpense")
public class DeleteExpenseServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int i = Integer.parseInt(req.getParameter("id"));
		ExpenseDao dao = new ExpenseDao(HibernateUtil.getSessionFactory());
		boolean f = dao.deleteExpense(i);
		HttpSession session = req.getSession();
		if(f) {
			session.setAttribute("msg", "Deleted successfully.");
			resp.sendRedirect("user/view_expense.jsp");
		}else {
			session.setAttribute("msg", "Error occurred while delete request!");
			resp.sendRedirect("user/view_expense.jsp");
		}
	}
}
