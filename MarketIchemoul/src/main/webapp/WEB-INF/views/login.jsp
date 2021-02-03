<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<jsp:include page="layouts/header.jsp"></jsp:include>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style1.css" />
</head>
<body >

<jsp:include page="layouts/menu.jsp"></jsp:include>


<div class="container">
  <div class="row">
   
   <div class="register-box">
   <br>
   
    <div class="login-card">
   
  <h1 class="text-center">Login</h1>
 
  <form:form action="${pageContext.request.contextPath}/customer/loginCustomer" modelAttribute="customerLoginForm" method="post">
  <div class="textbox">
    <i class="fas fa-at"></i>
    <form:input path="email" type="text" placeholder="Email"/>
    <span><form:errors path="email" cssClass="error"></form:errors></span>
  </div>
  <div class="textbox">
    <i class="fas fa-lock"></i> 
    <form:password path="password" placeholder="Password"/>
    <span><form:errors path="password" cssClass="error"></form:errors></span>
  </div>
  <input type="submit" class="btn_0" value="Login">
 </form:form>
 <a href="${pageContext.request.contextPath}/customer/cus_register" style="color:#F45C5D">Register</a>
 <a href="${pageContext.request.contextPath}/customer/forgot-password" style="color:#F45C5D;float:right;">Forgot Password?</a>
    </div>
   

   </div>
   
  </div>
</div>
<section> </section>

<jsp:include page="layouts/footer.jsp"></jsp:include>


</body>
</html>