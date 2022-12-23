<%@page import="com.subhamb.entity.Expense"%>
<%@page import="java.util.List"%>
<%@page import="com.subhamb.entity.User"%>
<%@page import="com.subhamb.db.HibernateUtil"%>
<%@page import="com.subhamb.dao.ExpenseDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VIEW EXPENSE</title>
<%@include file="../component/all_css.jsp"%>
</head>
<body class="bg-light">
<c:if test="${empty loginUser}">
   <c:redirect url="../login.jsp"></c:redirect>
</c:if>
<%@include file="../component/navbar.jsp"%>
<div class="container mt-5">
<div class="row">
<div class="col-md-12">
   <div class="card">
       <div class="card-header">
       <c:if test="${not empty msg}">
       <div class="alert alert-success">${msg}</div>
       <c:remove var="msg"/>
       </c:if>
        <p class="text-center fs-3">All Your Expenses</p>
       </div>
       <div class="card-body">
          <table class="table">
  <thead>
    <tr>
      <th scope="col">Title</th>
      <th scope="col">Description</th>
      <th scope="col">Date</th>
      <th scope="col">Time</th>
      <th scope="col">Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <%
  User user = (User) session.getAttribute("loginUser");
  ExpenseDao dao=new ExpenseDao(HibernateUtil.getSessionFactory());
  List<Expense> list=dao.getAllExpenseByUser(user);
  for (Expense ex : list){
  %>
    <tr>
      <td><%=ex.getTitle() 
      %></td>
      <td><%=ex.getDescription() 
      %></td>
      <td><%=ex.getDate() 
      %></td>
      <td><%=ex.getTime() 
      %></td>
      <td><%=ex.getPrice() 
      %></td>
      <td>
      <a href="edit_expense.jsp?id=<%=ex.getId() %>" class="btn btn-sm btn-primary me-1">Edit</a>
      <a href="#" class="btn btn-sm btn-danger me-1">Delete</a>
      </td>
    </tr>
    <%
      }
    %>
  </tbody>
</table>
       </div>
   </div>
</div>
</div>
</div>

</body>
</html>