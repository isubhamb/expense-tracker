package com.subhamb.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.subhamb.entity.Expense;

public class ExpenseDao {
	private SessionFactory factory=null;
	private Session session=null;
	private Transaction tx = null;
	
	public ExpenseDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public boolean saveExpense(Expense ex) {
		boolean f=false;
		try {
			session = factory.openSession();
			tx = session.beginTransaction();
			session.save(ex);
			tx.commit();
			f=true;
			
		} catch (Exception e) {
		    if(tx!=null) {
		    	f=false;
		    	e.printStackTrace();
		    }
		    
		}
		return f;
	}
}
