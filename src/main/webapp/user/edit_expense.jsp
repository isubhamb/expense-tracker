<%@page import="com.subhamb.entity.Expense"%>
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
<title>EDIT EXPENSE</title>
<%@include file="../component/all_css.jsp"%>
</head> 
<body class="bg-light">
<c:if test="${empty loginUser}">
   <c:redirect url="../login.jsp"></c:redirect>
</c:if>
<%@include file="../component/navbar.jsp"%>

<%
int id = Integer.parseInt(request.getParameter("id"));
ExpenseDao dao = new ExpenseDao(HibernateUtil.getSessionFactory());
Expense ex = dao.getExpenseById(id);

%>

<div class="container mt-5">
<div class="row">
<div class="col-md-6 offset-md-3">
   <div class="card">
       <div class="card-header">
       <c:if test="${not empty msg}">
       <div class="alert alert-success">${msg}</div>
       <c:remove var="msg"/>
       </c:if>
        <p class="text-center fs-3">EDIT EXPENSE</p>
       </div>
       <div class="card-body">
          <form action="../updateExpense" method="post">
           <div class="mb-3">
          <input type="text" placeholder="Enter your expense title" name="title" class="form-control" value="<%=ex.getTitle()  %>" required="required">
          </div>
           <div class="mb-3">
          <input type="date" placeholder="Enter your expense date" name="date" class="form-control" value="<%=ex.getDate()  %>" required="required">
          </div>
          <div class="mb-3">
          <input type="time" placeholder="Enter your expense time" name="time" class="form-control" value="<%=ex.getTime()  %>" required="required">
          </div>
          <div class="mb-3">
          <input type="text" placeholder="Enter your expense description" name="description" class="form-control" value="<%=ex.getDescription() %>" required="required">
          </div>
          <div class="mb-3">
          <input type="text" placeholder="Enter your expense amount" name="price" class="form-control" value="<%=ex.getPrice()  %>" required="required">
          </div>
          <input type="hidden" name="id" value="<%=ex.getId() %>" readonly="readonly">
          <button type="submit" class="btn btn-success col-md-12">Edit Expense </button>
          </form>
       </div>
   </div>
</div>
</div>
</div>







</body>
</html>