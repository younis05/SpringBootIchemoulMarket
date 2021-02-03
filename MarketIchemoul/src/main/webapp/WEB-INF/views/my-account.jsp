<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>My Account </title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style2.css" />
<c:if test="${empty email}">
	<c:redirect url="${pageContext.request.contextPath}/user/sign-in"/>  
</c:if>

</head>
<body>
	<jsp:include page="layouts/cus_menu.jsp"></jsp:include>
	<br>
<!-- register -->
	<div class="contact py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
		
		<c:if test="${not empty success}">
			<div class="alert alert-success alert-dismissible fade show">
				Account Updated Successfully.
		Click Here Back To: <a href="${pageContext.request.contextPath}/home" style="text-decoration: underline;" class="title">Home</a>
				<button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
		</c:if>
		<c:if test="${not empty error}">
			<div class="alert alert-danger alert-dismissible fade show">
				Something went wrong.
				<button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
		</c:if>
		<!-- form -->
			<form:form action="${pageContext.request.contextPath}/customer/updateCustomer" modelAttribute="customerUpdate" method="post">
				<div class="contact-grids1 w3agile-6">
					<div class="row">
					<form:hidden path="id"/>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Your FirstName</label>
							<form:input path="firstname" class="form-control" placeholder="firstname" name="firstname" value="${customer.firstname}" required="required" />
							<form:errors path="firstname" cssStyle="color:red;" cssClass="error"/>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Your LastName</label>
							<form:input path="lastname" class="form-control" placeholder="lastname" name="lastname" value="${customer.lastname}" required="required" />
							<form:errors path="lastname" cssStyle="color:red;" cssClass="error"/>
						</div>
							<div class="col-md-6 col-sm-6 contact-form1 form-group">
								<label class="col-form-label">Phone</label>
								<form:input path="phone" class="form-control" value="${customer.phone}" maxlength="10" minlength="10" placeholder="Phone" name="phone" required="required" />
								<form:errors path="phone" cssStyle="color:red;" cssClass="error"/>
							</div>
						
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Address</label>
							<form:textarea path="address" class="form-control" value="${customer.address}" placeholder="Address" rows="4" cols="45" name="address" required="required"></form:textarea>
							<form:errors path="address" cssStyle="color:red;" cssClass="error"/>
						</div>	
					</div>
					<div class="right-w3l col-md-6">
						<input type="submit" class="btn btn-outline-primary" value="Save">
					</div>
						
				</div>
			</form:form>
			
			<!-- //form -->
		</div>
	</div>
	<section></section>
	<jsp:include page="layouts/footer.jsp"></jsp:include>
</body>
</html>