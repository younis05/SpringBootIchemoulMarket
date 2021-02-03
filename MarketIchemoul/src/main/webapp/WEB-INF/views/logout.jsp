<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>logout</title>
<jsp:include page="layouts/header.jsp"></jsp:include>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style2.css" />

</head>
<body>
<jsp:include page="layouts/menu.jsp"></jsp:include>
<div class="container">
  <div class="row">
  
   <h1 Style="color:white;">logout success...!</h1>

  </div>
</div>
<div class="container">
  <div class="row">
   <a href="${pageContext.request.contextPath}/home">
   <input type="submit" class="btn btn-outline-danger" value="Back"/> </a>
   </div>
 </div>
 <section></section>
<jsp:include page="layouts/footer.jsp"></jsp:include>

</body>
</html>