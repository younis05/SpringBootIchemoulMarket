<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="com.younes.util.MySessionCounter" %>  
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SessionCount</title>
</head>
<body>
Active Session:<%=MySessionCounter.getActiveSessions() %>
<br>
Active Session:<a> ${MySessionCounter.getActiveSessions() }  </a> 

</body>
</html>