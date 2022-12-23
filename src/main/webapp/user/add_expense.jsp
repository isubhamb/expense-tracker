<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD EXPENSE</title>
<%@include file="../component/all_css.jsp"%>
</head> 
<body class="bg-light">
<c:if test="${empty loginUser}">
   <c:redirect url="../login.jsp"></c:redirect>
</c:if>
<%@include file="../component/navbar.jsp"%>
<div class="container mt-5">
<div class="row">
<div class="col-md-6 offset-md-3">
   <div class="card">
       <div class="card-header">
       <c:if test="${not empty msg}">
       <div class="alert alert-success">${msg}</div>
       <c:remove var="msg"/>
       </c:if>
        <p class="text-center fs-3">ADD EXPENSE</p>
       </div>
       <div class="card-body">
          <form action="../saveExpense" method="post">
           <div class="mb-3">
          <input type="text" placeholder="Enter your expense title" name="title" class="form-control" required="required">
          </div>
           <div class="mb-3">
          <input type="date" placeholder="Enter your expense date" name="date" class="form-control" required="required">
          </div>
          <div class="mb-3">
          <input type="time" placeholder="Enter your expense time" name="time" class="form-control" required="required">
          </div>
          <div class="mb-3">
          <input type="text" placeholder="Enter your expense description" name="description" class="form-control" required="required">
          </div>
          <div class="mb-3">
          <input type="text" placeholder="Enter your expense amount" name="price" class="form-control" required="required">
          </div>
          <button type="submit" class="btn btn-success col-md-12">Add Expense </button>
          </form>
       </div>
   </div>
</div>
</div>
</div>







</body>
</html>