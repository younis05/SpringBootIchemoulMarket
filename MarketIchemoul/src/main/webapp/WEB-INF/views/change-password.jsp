<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Change Password </title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style2.css" />
</head>
<body>
		<jsp:include page="layouts/menu.jsp"></jsp:include>
<div class="container">></div>
  
<!-- log in -->
	<br>
	<c:if test="${not empty success}">
				<div class="alert alert-success alert-dismissible fade show text-center">
        <strong>Change Password!</strong> Password successfully changed.
        Click  <a href="${pageContext.request.contextPath}/customer/login" style="text-decoration: underline;" class="title">Here</a> to login.<button type="button" class="close" data-dismiss="alert">&times;</button>
   				</div>
			</c:if>
							<c:if test="${not empty unmatched}">
								<div class="alert alert-danger alert-dismissible fade show">
        <strong>Change Password!</strong> Password &amp; Confirm Password doesn't match.<br>Please try again later.
        <button type="button" class="close" data-dismiss="alert">&times;</button>
   								 </div>
							</c:if>
							<c:if test="${not empty error}">
								<div class="alert alert-danger alert-dismissible fade show">
        <strong>Change Password!</strong> Password &amp; Confirm password can't be empty.
        <button type="button" class="close" data-dismiss="alert">&times;</button>
   								 </div>
							</c:if>
							<c:if test="${not empty notFound}">
								<div class="alert alert-danger alert-dismissible fade show">
        <strong>Change Password!</strong> Could not found a user with this email.
        <button type="button" class="close" data-dismiss="alert">&times;</button>
   								 </div>
							</c:if>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="row">
				<div class="col-md-12">
					<form action="${pageContext.request.contextPath}/customer/changePassword" method="post">
						<input type="hidden" name="email" value="${param.email}" />
						<input type="hidden" name="token" value="${param.token}" />
						<input type="hidden" name="data" value="${param.data}" />
						<div class="form-group">
							<label class="col-form-label">Password</label>
							<input type="password" placeholder="Password" size="35" maxlength="64" minlength="6" class="form-control" name="password" required="required" />
						</div>	
						<div class="form-group">
							<label class="col-form-label">Confirm Password</label>
							<input type="password" placeholder="Confirm Password" size="35" maxlength="64" minlength="6" class="form-control" name="confirm-password" id="password" required="required" />					
						</div>
						<div class="right-w3l">
							<input type="submit" class="form-control" value="Reset Password">
						</div>
					</form>
					</div>
				</div>
				</div>
			</div>
			<section></section>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>