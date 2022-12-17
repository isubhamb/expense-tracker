<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.subhamb.db.HibernateUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Tracker</title>
<%@include file="component/all_css.jsp"%>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<% SessionFactory factory = HibernateUtil.getSessionFactory(); 
out.println(factory);
%>
HOME PAGE
</body>
</html>
