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
   
  <h1 class="text-center">Register</h1>
  <c:if test="${not empty test}">
			<div class="alert alert-success alert-dismissible fade show">
				Profile Updated Successfully.
				<button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
  </c:if>
  <form:form action="${pageContext.request.contextPath}/customer/saveCustomer" modelAttribute="customerForm" method="post">
  <div class="textbox">
    <i class="fas fa-user"></i>
    <form:input path="firstname" type="text" placeholder="FirstName"/>
    <span><form:errors path="firstname" cssClass="error"></form:errors></span>
  </div>
  <div class="textbox">
    <i class="fas fa-user"></i>
    <form:input path="lastname" type="text" placeholder="LastName"/>
    <span><form:errors path="lastname" cssClass="error"></form:errors></span>
  </div>
  <div class="textbox">
    <i class="fas fa-lock"></i> 
    <form:password path="password" placeholder="Password"/>
    <span><form:errors path="password" cssClass="error"></form:errors></span>
  </div>
  <div class="textbox">
    <i class="fas fa-at"></i>
    <form:input path="email" type="text" placeholder="Email"/>
    <span><form:errors path="email" cssClass="error"></form:errors></span>
  </div>
  <div class="textbox">
    <i class="fas fa-phone"></i>
    <form:input path="phone" type="text" placeholder="phone"/>
    <span><form:errors path="phone" cssClass="error"></form:errors></span>
  </div>
  <div class="textbox">
    <i class="fas fa-map-marker-alt"></i>
    <form:input path="address" type="text" placeholder="Address"/>
    <span><form:errors path="address" cssClass="error"></form:errors></span>
  </div>
  
  <input type="submit" class="btn_0" value="Register">
 </form:form>
    </div>
   

   </div>
   
  </div>
</div>
<div>
<br>
</div>
<jsp:include page="layouts/footer.jsp"></jsp:include>
<section>
</section>
 
 

</body>
</html>