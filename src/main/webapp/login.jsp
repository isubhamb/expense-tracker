<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="component/all_css.jsp"%>
</head>
<body class="bg-light">
<%@include file="component/navbar.jsp"%>
<div class="container mt-5">
<div class="row">
<div class="col-md-6 offset-md-3">
   <div class="card">
       <div class="card-header">
       <c:if test="${not empty msg}">
       <div class="alert alert-success">${msg}</div>
       <c:remove var="msg"/>
       </c:if>
        <p class="text-center fs-3">Login Here</p>
       </div>
       <div class="card-body">
          <form action="login" method="post">
           <div class="mb-3">
          <input type="email" placeholder="Enter your email ID" name="emailId" class="form-control" required="required">
          </div>
           <div class="mb-3">
          <input type="password" placeholder="Enter your password" name="password" class="form-control" required="required">
          </div>
          <button type="submit" class="btn btn-success col-md-12">Login </button>
          <div class="mt-3">
          Don't have an account? <a class="text-decoration-none" href="register.jsp">Create Account</a>
          </div>
          </form>
       </div>
   </div>
</div>
</div>
</div>
</body>
</html>