<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title> Contact </title>
	<jsp:include page="layouts/header.jsp"></jsp:include>
	<style type="text/css">
		
	</style>
</head>
<body>
<c:choose>
 <c:when test="${not empty email}">
 <jsp:include page="layouts/cus_menu.jsp"></jsp:include>
 </c:when>
 <c:otherwise>
 <jsp:include page="layouts/menu.jsp"></jsp:include>
 </c:otherwise>
</c:choose>
	<!-- banner-2 -->
	<div class="page-head_agile_info_w3l">

	</div>
	<!-- //banner-2 -->
	<!-- page -->
	<div class="services-breadcrumb">
		<div class="agile_inner_breadcrumb">
			<div class="container">
				<ul class="w3_short">
					<li>
						<a href="${pageContext.request.contextPath}/home">Home</a>
						<i>|</i>
					</li>
					<li>Contact Us</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //page -->
<!-- log in -->
	<br>
	<!-- contact -->
	<div class="contact py-sm-5 py-4">
		<div class="container py-xl-4 py-lg-2">
			<!-- tittle heading -->
			<h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
				<span>C</span>ontact
				<span>U</span>s
			</h3>
			<!-- //tittle heading -->
			<div class="row contact-grids agile-1 mb-5">
				<div class="col-sm-4 contact-grid agileinfo-6 mt-sm-0 mt-2">
					<div class="contact-grid1 text-center">
						<div class="con-ic">
							<i class="fas fa-map-marker-alt rounded-circle"></i>
						</div>
						<h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Address</h4>
						<p style="font-weight: bold;color:black;">Ichemoul Market
							<label style="font-weight: bold;color:black;">Rue Eilchahid BenBoulaid Mostapha</label>
						</p>
					</div>
				</div>
				<div class="col-sm-4 contact-grid agileinfo-6 my-sm-0 my-4">
					<div class="contact-grid1 text-center">
						<div class="con-ic">
							<i class="fas fa-phone rounded-circle"></i>
						</div>
						<h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Call Us</h4>
						<p style="font-weight: bold;color:black;"><a style="font-weight: bold;color:black;" href="tel:+213060000000">+(213) 060000000</a>
						
<!-- 							<label>+(91) 121 122 000</label> -->
						</p>
					</div>
				</div>
				<div class="col-sm-4 contact-grid agileinfo-6">
					<div class="contact-grid1 text-center">
						<div class="con-ic">
							<i class="fas fa-envelope-open rounded-circle"></i>
						</div>
						<h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Email</h4>
						<p>
							<a style="font-weight: bold;color:black;" href="mailto:younesboukhtach@gmail.com">younesboukhtach@gmail.com</a>
						</p>
					</div>
				</div>
			</div>
			<!-- form -->
			<form id="form" method="post">
				<div class="contact-grids1 w3agile-6">
					<div class="row">
					<c:choose>
						<c:when test="${not empty email}">
							<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Name</label>
							<input type="text" class="form-control" placeholder="Name" disabled="disabled" value="${lastname}" name="name" id="name" required="required">
							<p class="error" id="error_name"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">E-mail</label>
							<input type="email" class="form-control" placeholder="Email" disabled="disabled" value="${email}" name="email" id="email" required="required">
							<p class="error" id="error_email"></p>
						</div>
						</c:when>
						<c:otherwise>
							<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Name</label>
							<input type="text" class="form-control" placeholder="Name" name="name" id="name" required="required">
							<p class="error" id="error_name"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">E-mail</label>
							<input type="email" class="form-control" placeholder="Email" name="email" id="email" required="required">
							<p class="error" id="error_email"></p>
						</div>
						</c:otherwise>
					</c:choose>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Subject</label>
							<input type="text" class="form-control" placeholder="Subject" name="subject" id="subject" required="required">
							<p class="error" id="error_subject"></p>
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							<label class="col-form-label">Message</label>
							<textarea name="message" class="form-control" placeholder="Message" cols="45" rows="5" id="message" required="required"></textarea>
							<p class="error" id="error_message"></p>
						</div>
					</div>
					<div class="right-w3l col-md-6">
						<input type="button" class="btn btn-primary form-control" id="submit" value="Submit">
					</div>
				</div>
			</form>
			<!-- //form -->
			<br>

	<jsp:include page="layouts/footer.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/js/contact.js"></script>
</body>
</html>