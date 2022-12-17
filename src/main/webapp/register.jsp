<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
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
        
        <p class="text-center fs-3">Register Here</p>
       </div>
       <div class="card-body">
          <form action="userRegister" method="post">
          <div class="mb-3">
          <input type="text" placeholder="Enter Your Full name" name="fullName" class="form-control" required="required">
          </div>
           <div class="mb-3">
          <input type="email" placeholder="Enter your email ID" name="emailId" class="form-control" required="required">
          </div>
           <div class="mb-3">
          <input type="password" placeholder="Enter your password" name="password" class="form-control" required="required">
          </div>
          <div class="mb-3">
          <input type="text" placeholder="Enter something about you" name="about" class="form-control" required="required">
          </div>
          <button type="submit" class="btn btn-success col-md-12">Register</button>
          </form>
       </div>
   </div>
</div>
</div>
</div>
</body>
</html>